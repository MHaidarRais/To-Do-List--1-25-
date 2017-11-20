//
//  Detail.swift
//  ToDoList
//
//  Created by Haidar Rais on 11/20/17.
//  Copyright © 2017 Haidar Rais. All rights reserved.
//

import UIKit

class Detail: UIViewController {
    @IBOutlet weak var tugasnya: UILabel!
    @IBOutlet weak var pentingnya: UILabel!
    @IBOutlet weak var tanggalnya: UILabel!
    @IBOutlet weak var waktunya: UILabel!
    @IBOutlet weak var orangnya: UILabel!
    @IBOutlet weak var desknya: UILabel!
   
    var passtugas:String?
    var passpenting:String?
    var passtanggal:String?
    var passwaktu:String?
    var passorang:String?
    var passdesk:String?
    override func viewDidLoad() {
        
        tugasnya.text = passtugas!
        pentingnya.text = passpenting!
        tanggalnya.text = passtanggal!
        waktunya.text = passwaktu!
        orangnya.text = passorang!
        desknya.text = passdesk
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}



