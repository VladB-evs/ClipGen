import SwiftUI

struct ContentView: View {
    @StateObject private var clipboardManager = ClipboardManager()
    
    var body: some View {
        VStack(spacing: 10) {
            Text("ClipGen")
                .font(.headline)
                .foregroundColor(.primary)
            
            ScrollView {
                LazyVStack(spacing: 8) {
                    ForEach(clipboardManager.clipboardItems, id: \.self) { item in
                        ClipboardItemView(text: item, copyAction: {
                            clipboardManager.copyToClipboard(item)
                        })
                    }
                }
            }
            
            Button(action: {
                clipboardManager.clearAll()
            }) {
                Text("Clear All")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 8)
                    .background(Color.red.opacity(0))
                    .cornerRadius(6)
            }
            .padding(.horizontal)
        }
        .padding()
        .frame(width: 300, height: 400)
        .background(Color(.windowBackgroundColor))
    }
}

