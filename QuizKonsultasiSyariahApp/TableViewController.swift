//
//  TableViewController.swift
//  QuizKonsultasiSyariahApp
//
//  Created by SMK IDN MI on 10/19/17.
//  Copyright © 2017 Be Dev. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var namaSelected:String?
    var gambarSelected:String?
    
    var namaArtikel = ["7 Bentuk Wahyu", "Apakah Ada Musik Di Surga?", "Berdoa Itu Wajib?", "Hukum Hadiah Untuk Konsumen", "Hukum Memakai Gelang Bagi Pria", "Iblis Termasuk Malaikat?", "Makna Husnudzan Kepada Allah", "Orang Gila Di Surga Atau Neraka?", "Penduduk Surga Ingat Dunia?", "Tanda Taubat Di Terima"]

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
        return namaArtikel.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cellkonsultasi", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = namaArtikel[indexPath.row]
        
        //menampilkan gambar
        let imagename = UIImage(named: namaArtikel[indexPath.row])
        cell.imageView?.image = imagename

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //mengecek data yg dikirim
        print("row \(indexPath.row)selected")
        //memasukkan data ke variable nama selected dan image selected ke masig2 variablenya
        namaSelected = self.namaArtikel[indexPath.row]
        gambarSelected = self.namaArtikel[indexPath.row]
        //mamangil segue passDataDetail
        performSegue(withIdentifier: "passnamaArtike", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //mengecek apakah segue nya ada atau tidak
        if segue.identifier == "passnamaArtikel" {
            let kirimData = segue.destination as! ArtikelViewController
            kirimData.passnamaArtikel = namaSelected
            kirimData.passGambarArtikel = gambarSelected
        
        }
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let About = UITableViewRowAction(style: .normal, title: "About") { action,index in
            //self.isEditing = false
            print("About button tapped")
        }
        About.backgroundColor = UIColor.lightGray
 
        let Location = UITableViewRowAction(style: .normal, title: "Show Map") { action,index in
            //self.isEditing = false
            print("Show Map button tapped")
            //pindah ke layoutmapkit
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "detailMap") as! MapKitViewController
            
            self.present(vc, animated: true, completion: nil)
        }
        share.backgroundColor = UIColor.blue
        
        return [About, Location,]
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
