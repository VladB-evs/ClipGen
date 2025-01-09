import Foundation
import AppKit

class ClipboardManager: ObservableObject {
    @Published var clipboardItems: [String] = []
    private let pasteboard = NSPasteboard.general
    private var lastChangeCount: Int
    
    init() {
        self.lastChangeCount = pasteboard.changeCount
        self.startMonitoring()
    }
    
    private func startMonitoring() {
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { _ in
            self.checkForChanges()
        }
    }
    
    private func checkForChanges() {
        guard pasteboard.changeCount != lastChangeCount else { return }
        lastChangeCount = pasteboard.changeCount
        
        if let newString = pasteboard.string(forType: .string) {
            if !clipboardItems.contains(newString) {
                clipboardItems.insert(newString, at: 0)
                if clipboardItems.count > 20 {
                    clipboardItems.removeLast()
                }
            }
        }
    }
    
    func copyToClipboard(_ text: String) {
        pasteboard.clearContents()
        pasteboard.setString(text, forType: .string)
    }
    
    func clearAll() {
        clipboardItems.removeAll()
    }
}

