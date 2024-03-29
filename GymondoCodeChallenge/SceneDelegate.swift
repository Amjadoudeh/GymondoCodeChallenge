import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var nav: UINavigationController!

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        let em = ExerciseManager()
        let vm = ExercisesViewModel(exerciseService: em)
        let vc = ExercisesListViewController(viewModel: vm)
        vc.buildDetailsViewModel = { id in
            ExerciseDetailsViewModel(exerciseService: em, exerciseId: id)
        }
        nav = UINavigationController(rootViewController: vc)
        nav.setViewControllers([vc], animated: true)
        window.rootViewController = nav
        self.window = window
        window.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {

    }

    func sceneDidBecomeActive(_ scene: UIScene) {

    }

    func sceneWillResignActive(_ scene: UIScene) {

    }

    func sceneWillEnterForeground(_ scene: UIScene) {

    }

    func sceneDidEnterBackground(_ scene: UIScene) {

    }

}
