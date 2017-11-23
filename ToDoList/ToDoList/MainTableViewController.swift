
//
//  MainTableViewController.swift
//  ToDoList
//
//  Created by Haidar Rais on 11/20/17.
//  Copyright © 2017 Haidar Rais. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    var tugas : [Todo] = []
    
    var mainselected:String?
    var importantselected:String?
    var dateselected:String?
    var timeselected:String?
    var peopleselected:String?
    var descselected:String?
    
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tugas.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        // Configure the cell...
        // Configure the cell...
        
        //deklarasi dataTask sebagai Index dari tasks
        let dataTask = tugas[indexPath.row]
        //mengambildata dengan attribute name_Task
        if let myDataTask = dataTask.main {
            //menampilkan data ke label
            cell.maintugas.text = myDataTask
        };if let mydatastask2 = dataTask.important{
            cell.importanttugas.text = mydatastask2
        };if let mydatatask3 = dataTask.tanggal {
            cell.datetugas.text = mydatatask3
        }
        
        

        return cell
    }
    override func viewWillAppear(_ animated: Bool) {
        //memanggil method getData
        getData()
        //memanggil reloadData
        tableView.reloadData()
    }
    
    //method getData
    func getData() {
        //mengecek apakah ada error atau tidak
        do{
            //kondisi kalau tidak ada error
            //maka akan request download data
            tugas = try context.fetch(Todo.fetchRequest())
        }
        catch{
            //kondisi apabila error fetch data
            print("Fetching Failed")
        }
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        //mengece menu swipe bila edit data
        if editingStyle == .delete {
            let task = tugas[indexPath.row]
            context.delete(task)
            //Delete data
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
            do{
                //retrieve data
                tugas = try context.fetch(Todo.fetchRequest())
            }
            catch{
                print("Fetching Failed")
            }
        }
        //load data lagi
        tableView.reloadData()
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        //mengecek data yang dikirim
        print("Row \(indexPath.row)selected")
        
        let dataTask = tugas[indexPath.row]
        //memasukan data ke variable namaSelected dan image selected ke masing masing variable nya
        mainselected = dataTask.main
        importantselected = dataTask.important
        dateselected = dataTask.tanggal
        timeselected = dataTask.waktu
        peopleselected = dataTask.people
        descselected = dataTask.desc
        
        //memamnggil segue passDataDetail
        performSegue(withIdentifier: "passData", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //mengecek apakah segue nya ada atau  tidak
        if segue.identifier == "passData"{
            //kondisi ketika segue nya ada
            //mengirimkan data ke detailViewController
            let kirimData = segue.destination as! Detail
            //mengirimkan data ke masing2 variable
            //mengirimkan nama wisata
            kirimData.passtugas = mainselected
            kirimData.passpenting = importantselected
            kirimData.passtanggal = dateselected
            kirimData.passwaktu = timeselected
            kirimData.passdesk = descselected
            
            
            
            
            
            
            
            
            
            
            
            
        }
    }
    
}


