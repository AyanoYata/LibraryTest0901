import UIKit
import Parchment

class BasicViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let viewControllers = [
             ContentViewController(index: 0),
             ContentViewController(index: 1),
             ContentViewController(index: 2),
             ContentViewController(index: 3),
           ]
        let pagingViewController = PagingViewController(viewControllers: viewControllers)
           
           // Make sure you add the PagingViewController as a child view
           // controller and constrain it to the edges of the view.
           addChild(pagingViewController)
           view.addSubview(pagingViewController.view)
           view.constrainToEdges(pagingViewController.view)
           pagingViewController.didMove(toParent: self)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
