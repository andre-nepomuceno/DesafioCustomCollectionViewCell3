//
//  Jogo.swift
//  DesafioCollectionView3
//
//  Created by André N. dos Santos on 03/05/22.
//

import Foundation
import UIKit

public class Jogo {
    let titulo: String
    let plataformas: String
    let genero: Genero
    let descricao: String
    let imagemCapa: String
    
    public init(titulo: String, plataformas: String, genero: Genero, descricao: String, imagemCapa: String) {
        self.plataformas = plataformas
        self.titulo = titulo
        self.genero = genero
        self.descricao = descricao
        self.imagemCapa = imagemCapa
    }
}
