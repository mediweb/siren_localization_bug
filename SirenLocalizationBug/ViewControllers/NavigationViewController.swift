import UIKit
import Reusable

class NavigationViewController: UINavigationController, StoryboardSceneBased {
  static let sceneStoryboard = UIStoryboard(name: "Main", bundle: nil)
  var viewModel: NavigationViewModel!

  override func viewDidLoad() {
    super.viewDidLoad()
  }
}
