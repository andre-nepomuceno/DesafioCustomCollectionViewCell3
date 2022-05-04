//
//  DetalhesJogoViewController.swift
//  DesafioCollectionView3
//
//  Created by André N. dos Santos on 04/05/22.
//

import UIKit

class DetalhesJogoViewController: UIViewController {
    var jogo: Jogo?
    
    @IBOutlet weak var descricaoJogoLabel: UILabel!
    @IBOutlet weak var plataformasJogoLabel: UILabel!
    @IBOutlet weak var tituloJogoLabel: UILabel!
    @IBOutlet weak var capaJogoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descricaoJogoLabel.text = jogo?.descricao
        tituloJogoLabel.text = jogo?.titulo
        capaJogoImageView.image = UIImage(named: jogo?.imagemCapa ?? "")
        plataformasJogoLabel.text = jogo?.plataformas
    }
    
    public func configureView(jogo: Jogo) {
        self.jogo = jogo
        descricaoJogoLabel.text = jogo.descricao
        tituloJogoLabel.text = jogo.titulo
        capaJogoImageView.image = UIImage(named: jogo.imagemCapa)
        plataformasJogoLabel.text = ""
    }
}
