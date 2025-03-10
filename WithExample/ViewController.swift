import UIKit

class ViewController: UIViewController {
   override func viewDidLoad() {
      super.viewDidLoad()
      /*EXAMPLE 1:*/
      let rectangle: CGRect = with(.init(x: 0, y: 0, width: 100, height: 100)) {
         $0 = $0.offsetBy(dx: 20, dy: 20)
         $0 = $0.insetBy(dx: 10, dy: 10)
      }
      Swift.print(rectangle)/* X:30.0, y:30.0, width:80.0, height:80.0 */
      /*EXAMPLE 2:*/
      let color: UIColor = with(.init(red: 0.2, green: 0.4, blue: 0, alpha: 0.9)) { ( col: inout UIColor) in
         col = col.withAlphaComponent(0.2)
      }
      Swift.print(color.cgColor.alpha)// 0.2
      /*EXAMPLE 3:*/
      var size: CGSize = .init(width: 50, height: 40)
      size = with(size) {
         $0.width = 100
         $0.height = 50
      }
      Swift.print(size) // 100, 50
   }
}
extension ViewController {
   /**
    * - Fixme: ⚠️️ 
    */
   func test() {
      let label = UILabel()
         .with(\.textColor, setTo: .red) // Set the text color of the label to red
         .with(\.text, setTo: "Foo") // Set the text of the label to "Foo"
         .with(\.textAlignment, setTo: .right) // Set the text alignment of the label to right
         .with(\.layer.cornerRadius, setTo: 5) // Set the corner radius of the label's layer to 5
      view.addSubview(label)
   }
}
extension UIView: With {}
