//
//  ArtikelViewController.swift
//  QuizKonsultasiSyariahApp
//
//  Created by SMK IDN MI on 10/19/17.
//  Copyright © 2017 Be Dev. All rights reserved.
//

import UIKit

class ArtikelViewController: UIViewController {

    @IBOutlet weak var labelnamaArtikel: UILabel!
    @IBOutlet weak var imgGambar: UIImageView!
    
    var passnamaArtikel:String?
    var passGambarArtikel:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //menampilkan data yg  sudah d kirim
        labelnamaArtikel.text = passnamaArtikel
        //menampilkan hambar
        imgGambar.image = UIImage(named: passGambarArtikel!)
        
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
