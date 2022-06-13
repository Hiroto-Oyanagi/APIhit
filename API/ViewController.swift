//
//  ViewController.swift
//  API
//
//  Created by 大柳裕士 on 2022/06/13.
//

//import UIKit
//
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//
//
//}
//
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let url: URL = URL(string: "http://hakodate.gq/sweets.json")!
        let task: URLSessionTask  = URLSession.shared.dataTask(with: url, completionHandler: {data, response, error in
            do {
                let json = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments) as! [Any]
                let jsonMap = json.map { (jsonMap) -> [String: Any] in
                    return jsonMap as! [String: Any]
                }
                print(jsonMap)
            }
            catch {
                print(error)
            }
        })
        task.resume()
    }
    
}
