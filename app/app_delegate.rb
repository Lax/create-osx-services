class AppDelegate

  def uploadFromPasteboard(pboard, userData:udata, error:err)
    filename = pboard.stringForType(NSURLPboardType)
    s = NSSound.soundNamed "Pop"
    s.delegate = self
    s.play
    puts "file: %s" % filename
  end

  def sound(sound, didFinishPlaying:aBool)
    NSApp.terminate(nil)
  end

  def applicationDidFinishLaunching(notification)
    NSApp.setServicesProvider(self)

    # buildMenu
    # buildWindow
  end

  def buildWindow
    @mainWindow = NSWindow.alloc.initWithContentRect([[240, 180], [480, 360]],
      styleMask: NSTitledWindowMask|NSClosableWindowMask|NSMiniaturizableWindowMask|NSResizableWindowMask,
      backing: NSBackingStoreBuffered,
      defer: false)
    @mainWindow.title = NSBundle.mainBundle.infoDictionary['CFBundleName']
    @mainWindow.orderFrontRegardless
  end
end
