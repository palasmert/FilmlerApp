//
//  AnaSayfaViewModel.swift
//  FilmlerApp
//
//  Created by mert palas on 19.03.2024.
//

import Foundation
import RxSwift

class AnaSayfaViewModel {
    var frepo = FilmlerDaoRepository()
    var filmlerListesi = BehaviorSubject<[Filmler]>(value: [Filmler]())
    
    init(){
        filmlerListesi = frepo.filmlerListesi
        filmleriYukle()
    }
    
    func filmleriYukle(){
        frepo.filmleriYukle()
    }
}



