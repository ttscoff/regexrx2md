title: fenced code blocks 32

## Flags

> Flags: `(?is-Um)`

> * -U: Greedy
> * -m: Do not treat target as one line
> * i: Case insensitive
> * s: Dot matches newline

## Regular Expression Search

```ruby
/(?is-Um)^(([ \t]*)[`~]{3,})((?![\n\r])\s*?(?:\{?[.:]? *)?([\w-]+)\s*\}?)?\s*[\r\n](.+?)[\r\n](?:\1)(?:[\r\n][ \t]*)?(\{\s*[.:]?(?:lang=)?([\w-]+) *\})?/
```

## Replace

```ruby
"$2```$7\
$5\
$2```\"
```

---

## Test string:

```text
The sole exception to this rule is that the root view-controller (the `SplitViewController` in our Recordings app) is constructed before the view-state. Once the top-level view controller is constructed, it will start observing the view-state in its `viewDidLoad` method and this initial access will trigger construction (or loading) of the view-state singleton:

    ~~~~
observations += ViewState.shared.addObserver(actionType: SplitViewState.Action.self) { [weak self] state, action in
	self?.state = state
	self?.handleViewStateNotification(action)
}
    ~~~~
    {lang=python}

Now, this is an `addObserver` method, ultimately wrapping standard Cocoa `Notifications` underneath, but the implementation of this `addObserver` method also ensures that the callback is invoked *immediately* with the initial data of the `ViewState` singleton.

When this immediate callback occurs, the parameter `state` (a `SplitViewState`) is cached in the view controller and`handleViewStateNotification` is invoked with an `action` of `nil` (indicating a reload with no associated user action) and the following code is run:

```swift             
func handleViewStateNotification(_ action: SplitViewState.Action?) {
	switch action {
	// ...other cases omitted...	
	case .none:
		if let mvn = masterViewNavigationController {
			if state.folderViews.count < folderViewControllersCount {
				mvn.popToViewController(mvn.viewControllers[state.folderViews.count - 1], animated: false)
			} else {
				while state.folderViews.count - folderViewControllersCount > 0 {
					if let vc = storyboard?.instantiateViewController(withIdentifier: .folderIdentifier) {
						mvn.viewControllers.append(vc)
					}
				}
			}
		}
		if state.playView.uuid != nil {
			if viewControllers.count == 1, !(masterViewNavigationController?.viewControllers.last is UINavigationController) {
				masterViewNavigationController?.performSegue(withIdentifier: .showDetailWithoutAnimation, sender: self)
			}
		} else if let mvn = masterViewNavigationController, mvn.viewControllers.last is UINavigationController {
			mvn.popViewController(animated: false)
		}
		if state.textAlert?.recordingUuid != nil {
			present(TextAlertController.saveRecordingDialog(), animated: false, completion: nil)
		} else if state.textAlert != nil {
			present(TextAlertController.newFolderDialog(), animated: false, completion: nil)
		}
		if state.recordView != nil {
			masterViewNavigationController?.performSegue(withIdentifier: .showRecorder, sender: self)
		}
	}
}
```

That's a sizable block of code, since the `SplitViewController` is in charge of managing a few different subtrees of views.

This code walks through the `state` value that was cached and compares its properties to the current state of the view and controller hierarchy. If the view-state and view-tree are out of sync, the `SplitViewController` must take appropriate steps to bring them back into sync. In this way, the initial hierarchy below the `SplitViewController` is constructed.

This code isn't solely required for construction. This `case .none` action indicates a user action did *not* trigger this update and this is a state restoration of some kind. The possible causes are:

```


