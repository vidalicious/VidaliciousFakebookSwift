import UIKit
import PlaygroundSupport
import Dispatch

let view1 = UIView(frame: CGRect(x: 0, y: 200, width: 199, height:500))
view1.backgroundColor = UIColor.red

PlaygroundPage.current.liveView=view1

class Test {
    var name : String {
        return ""
    }
    
    var age : Int = {
       return 10
    }()
}
