enum NavigationStackAction {
  case set(viewModels: [Any], animated: Bool)
  case push(viewModel: Any, animated: Bool)
  case pop(animated: Bool)
}

class NavigationViewModel {
}
