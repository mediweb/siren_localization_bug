import UIKit

class RootViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let destination = segue.destination as? NavigationViewController else { return }
    destination.viewModel = NavigationViewModel()
  }
}
