import UIKit
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
   /**
    * A lazy variable that initializes a UIWindow with a root view controller of type ViewController.
    * - Remark: This property is initialized with a closure that creates the window and sets its root view controller.
    * - Note: The `makeKeyAndVisible()` method is called on the window to make it the key window and visible.
    * - Returns: The initialized UIWindow instance.
    */
   lazy var window: UIWindow? = {
      let win = UIWindow(frame: UIScreen.main.bounds) // Create a new UIWindow with the same size as the screen
      let vc = ViewController() // Create a new instance of the ViewController class
      win.rootViewController = vc // Set the root view controller of the window to the ViewController instance
      win.makeKeyAndVisible()/*Important since we have no Main storyboard anymore*/ // Make the window key and visible
      return win // Return the window instance
   }()
   func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      _ = window
      return true
   }
}
