import UIKit
import Siren

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    let loginStoryboard = UIStoryboard(name: "Main", bundle: nil)
    window?.rootViewController = loginStoryboard.instantiateInitialViewController()
    window?.makeKeyAndVisible()

    let siren = Siren.shared

    // This works:
    //
    // siren.presentationManager = PresentationManager(
    //   alertTitle: "アップデートのお知らせ",
    //   alertMessage: "新規バージョンがご利用になれます。\n今すぐアップデートしてください。",
    //   updateButtonTitle: "アップデート"
    // )

    // But this does not, we get English regardless of the value of forceLanguageLocalization:
    siren.presentationManager = PresentationManager(
      forceLanguageLocalization: .japanese
    )


    siren.rulesManager = RulesManager(
      globalRules: .critical,
      showAlertAfterCurrentVersionHasBeenReleasedForDays: 0
    )
    siren.wail()

    return true
  }
}
