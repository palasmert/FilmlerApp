//
//  FilmlerHucre.swift
//  FilmlerApp
//
//  Created by mert palas on 12.03.2024.
//

import UIKit

protocol HucreProtocol {
    func sepeteEkleTikle(indexPath: IndexPath)
}

class FilmlerHucre: UICollectionViewCell {
    @IBOutlet weak var imageViewFilm: UIImageView!
    @IBOutlet weak var labelFiyat: UILabel!
    
    var hucreProtocol: HucreProtocol?
    var indexPath: IndexPath?
    
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        hucreProtocol?.sepeteEkleTikle(indexPath: indexPath!)
    }
    
}
