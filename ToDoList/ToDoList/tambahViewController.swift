//
//  tambahViewController.swift
//  ToDoList
//
//  Created by Haidar Rais on 11/20/17.
//  Copyright © 2017 Haidar Rais. All rights reserved.
//

import UIKit

class tambahViewController: UIViewController {
    @IBOutlet weak var etmain: UITextField!
    @IBOutlet weak var etimportant: UITextField!
    @IBOutlet weak var etdate: UITextField!
    @IBOutlet weak var ettime: UITextField!
    @IBOutlet weak var etpeople: UITextField!
    @IBOutlet weak var etdescription: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnsave(_ sender: Any) {
        //dekalarasi context
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        //deklarasi task
        let main = Todo(context: context)
        let important = Todo(context: context)
        let date = Todo(context: context)
        let time = Todo(context: context)
        let people = Todo(context: context)
        let desc = Todo(context: context)
        //deklarasi nameTask sebagai context dari entity task
        main.main = etmain.text
        important.important = etimportant.text
        date.tanggal = etdate.text
        time.waktu = ettime.text
        people.people = etpeople.text
        desc.desc = etdescription.text
        //proses penyimpanan data ke core data
        //mengecek apakah nilai dari erRask adalah kosong atau tidak
        if etmain.text == "" {
            //kondisi ketika kosong
            //tampil alert dialog
            let alertController = UIAlertController(title: "Warning",
                                                    message: "Input Profile Can't Be Empty", preferredStyle : .alert)
            alertController.addAction(UIAlertAction(title: "OK",
                                                    style: .default,handler: nil))
            present(alertController, animated: true, completion: nil)
        } else if etdate.text == "" {
            //kondisi ketika kosong
            //tampil alert dialog
            let alertController = UIAlertController(title: "Warning",
                                                    message: "Input Profile Can't Be Empty", preferredStyle : .alert)
            alertController.addAction(UIAlertAction(title: "OK",
                                                    style: .default,handler: nil))
            present(alertController, animated: true, completion: nil)
        } else if ettime.text == "" {
            //kondisi ketika kosong
            //tampil alert dialog
            let alertController = UIAlertController(title: "Warning",
                                                    message: "Input Profile Can't Be Empty", preferredStyle : .alert)
            alertController.addAction(UIAlertAction(title: "OK",
                                                    style: .default,handler: nil))
            present(alertController, animated: true, completion: nil)
        }else if etimportant.text == "" {
            //kondisi ketika kosong
            //tampil alert dialog
            let alertController = UIAlertController(title: "Warning",
                                                    message: "Input Profile Can't Be Empty", preferredStyle : .alert)
            alertController.addAction(UIAlertAction(title: "OK",
                                                    style: .default,handler: nil))
            present(alertController, animated: true, completion: nil)
        }else{
            //ketika kondisi teks teks nya tidak kosong
            //data disimpan ke dalam core data
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            _ = navigationController?.popViewController(animated: true)
            
            //mencetak kalau data berhasil ditambahkan
            print("Data berhasil disimpan")
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destinationViewController.
 // Pass the selected object to the new view controller.
 }
 */



