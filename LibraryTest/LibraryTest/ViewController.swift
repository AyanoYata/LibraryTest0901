import UIKit
import Parchment

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 配列の中は、ContentViewControllerClassで作った内容
        let viewControllers = [
            ContentViewController(index: 0),
            ContentViewController(index: 1),
            ContentViewController(index: 2),
            ContentViewController(index: 3)
          ]
          
        /*　Parchment Exampleの中にある、PagingViewControllerClassの中の何かを呼んでいると思うのですが、
        　　PagingViewControllerClass内にコードがありすぎて、理解できませんでした。*/
          let pagingViewController = PagingViewController(viewControllers: viewControllers)
          
          // Make sure you add the PagingViewController as a child view
          // controller and constrain it to the edges of the view.
          addChild(pagingViewController)
          view.addSubview(pagingViewController.view)
          view.constrainToEdges(pagingViewController.view)
          pagingViewController.didMove(toParent: self)
        }
        
        
    }



