//
//  ViewController.swift
//  ProtoBuf-Client
//
//  Created by Rumata on 12/4/17.
//  Copyright © 2017 Yalantis. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.

    Alamofire.request("http://localhost:8181/events").responseData { (response) in
      guard let data = response.data else {
        return
      }

      guard let events = try? HistoricalEvents(serializedData: data) else {
        return
      }

      print(events)
    }
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

