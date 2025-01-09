import SwiftUI

@main
struct ClipGenApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        Settings {
            EmptyView()
        }
        .commands {
            // Remove all default menu items
            CommandGroup(replacing: .appInfo) { }
            CommandGroup(replacing: .systemServices) { }
            CommandGroup(replacing: .newItem) { }
        }
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    var statusItem: NSStatusItem?
    var popover: NSPopover?
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Hide dock icon programmatically as well
        NSApp.setActivationPolicy(.accessory)
        
        if let window = NSApplication.shared.windows.first {
            window.close()
        }
        
        let contentView = ContentView()
        
        let popover = NSPopover()
        popover.contentSize = NSSize(width: 300, height: 400)
        popover.behavior = .transient
        popover.contentViewController = NSHostingController(rootView: contentView)
        self.popover = popover
        
        self.statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.squareLength)
        
        if let button = self.statusItem?.button {
            button.image = NSImage(systemSymbolName: "doc.on.clipboard", accessibilityDescription: "ClipGen")
            button.action = #selector(togglePopover)
        }
    }
    
    @objc func togglePopover() {
        if let button = self.statusItem?.button {
            if self.popover?.isShown == true {
                self.popover?.performClose(nil)
            } else {
                self.popover?.show(relativeTo: button.bounds, of: button, preferredEdge: NSRectEdge.minY)
                
                // Ensure the popover becomes key window
                if let window = self.popover?.contentViewController?.view.window {
                    window.makeKey()
                }
            }
        }
    }
}

