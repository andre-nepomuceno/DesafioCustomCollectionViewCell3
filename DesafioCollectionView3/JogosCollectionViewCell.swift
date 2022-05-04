//
//  JogosCollectionViewCell.swift
//  DesafioCollectionView3
//
//  Created by André N. dos Santos on 04/05/22.
//

import UIKit

class JogosCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var tituloJogoLabel: UILabel!
    @IBOutlet weak var capaJogoImageView: UIImageView!
    
    public func configuraCelula(jogo: Jogo) {
        tituloJogoLabel.text = jogo.titulo
        capaJogoImageView.image = UIImage.init(named: jogo.imagemCapa)
        capaJogoImageView.layer.cornerRadius = 30
        
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 45

        
    }
}
