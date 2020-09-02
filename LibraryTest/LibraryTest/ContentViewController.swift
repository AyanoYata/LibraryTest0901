import UIKit

// ViewControllerClassにて、配列の中身として使うためのClass
class ContentViewController: UIViewController {

    /* convenience init→わからなかったので調べてみたところ、「簡易的なイニシャライズ」ということだけはわかったのですが、
       どのようなケースの時に、この書き方をするのでしょうか？（通常のイニシャライズの書き方も、よくわかっていませんが・・・）*/
    
    // titleの見出し、中身は文字列で「View」と表す？　そもそもcontentとは？
    convenience init(index: Int) {
        self.init(title: "View \(index)", content: "\(index)")
      }
      
      convenience init(title: String) {
        self.init(title: title, content: title)
      }
      
      init(title: String, content: String) {
        super.init(nibName: nil, bundle: nil)
        self.title = title
        
    // Titleの詳細。フレームの大きさ？　フォント、テキストカラー、テキストの位置
        let label = UILabel(frame: .zero)
        label.font = UIFont.systemFont(ofSize: 50, weight: UIFont.Weight.thin)
        label.textColor = UIColor(red: 95/255, green: 102/255, blue: 108/255, alpha: 1)
        label.textAlignment = .center
        label.text = content
    // ラベルのサイズを何かにFitさせる？
        label.sizeToFit()
    // Subviewはどこのことを指しているのか？
        view.addSubview(label)
        view.constrainToEdges(label)
        view.backgroundColor = .white
      }
    // ↓このイニシャライズの意味や使用用途も調べてみましたが、どの記事を読んでも理解できず
      required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
      }
    }

