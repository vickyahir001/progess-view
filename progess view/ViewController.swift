
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pg: UIProgressView!
    var timer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        progress()
        
    }
    func progress() {
        var a : Float = 0.0
        self.pg.progress = 0
        timer = Timer.scheduledTimer(withTimeInterval: 0.050, repeats: true, block: { _ in
            a += 0.01
            self.pg.progress = a
            if self.pg.progress == 1.0{
                self.timer.invalidate()
                self.pg.progress = 0.0
            }
           
        })
        
    }
}
