import SwiftUI

struct ClipboardItemView: View {
    let text: String
    let copyAction: () -> Void
    
    var body: some View {
        Button(action: copyAction) {
            VStack(alignment: .leading) {
                Text(text)
                    .lineLimit(2)
                    .truncationMode(.tail)
                    .foregroundColor(.primary)
                    .padding(8)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color(.controlBackgroundColor))
            .cornerRadius(8)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

