//
//  ViewController.swift
//  DesafioCollectionView3
//
//  Created by André N. dos Santos on 03/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var jogosCollectionView: UICollectionView!
    @IBOutlet weak var jogoSelecionadoLabel: UILabel!
    @IBOutlet weak var botaoIrButton: NSLayoutConstraint!
    
    var jogos: [Jogo]  = []
    var jogoSelecionado: Jogo?
    
    let coresPorGenero: [(Genero, UIColor)] = [(Genero.Esporte, UIColor.blue), (Genero.Ação, UIColor.yellow), (Genero.Guerra, UIColor.gray), (Genero.Terror, UIColor.red)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        preencheJogos()
        jogosCollectionView.dataSource = self
        jogosCollectionView.delegate = self
        
    }
    
    @IBAction func botaoIrAction(_ sender: UIButton) {
        if jogoSelecionado == nil {
            exibirAlertSimples(titulo: "Operação não permitida", mensagem: "Você deve escolher um dos jogos antes de clicar no botão Ir")
            return
        }
        performSegue(withIdentifier: "segueDetalhes", sender: jogoSelecionado)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detalhesVC = segue.destination as? DetalhesJogoViewController else { return }
        detalhesVC.jogo = sender as? Jogo
    }
    
    private func preencheJogos() {
        //Terror
        jogos.append(Jogo(titulo: "Layers of Fear", plataformas: "PC, XBOX, Playstation", genero: .Terror, descricao: "Blah Blah Blah", imagemCapa: "layersOfFear2"))
        jogos.append(Jogo(titulo: "Dead by Daylight", plataformas: "PC, XBOX, Playstation", genero: .Terror, descricao: "Blah Blah Blah", imagemCapa: "deadByDaylight"))
        jogos.append(Jogo(titulo: "Resident Evil 7: Biohazard", plataformas: "PC, XBOX, Playstation", genero: .Terror, descricao: "Blah Blah Blah", imagemCapa: "residentEvil"))
        jogos.append(Jogo(titulo: "Alien: Isolation", plataformas: "PC, XBOX, Playstation", genero: .Terror, descricao: "Blah Blah Blah", imagemCapa: "alienIsolation"))
        jogos.append(Jogo(titulo: "Outlast II", plataformas: "PC, XBOX, Playstation", genero: .Terror, descricao: "Blah Blah Blah", imagemCapa: "outlast2"))
        
        //Guerra
        jogos.append(Jogo(titulo: "Battlefield 4", plataformas: "PC, XBOX, Playstation", genero: .Guerra, descricao: "Blah Blah Blah", imagemCapa: "battlefield4"))
        jogos.append(Jogo(titulo: "Call of Dutty: Infinite Warfare", plataformas: "PC, XBOX, Playstation", genero: .Guerra, descricao: "Blah Blah Blah", imagemCapa: "callOfDuty"))
        jogos.append(Jogo(titulo: "ArmA 3", plataformas: "PC, XBOX, Playstation", genero: .Guerra, descricao: "Blah Blah Blah", imagemCapa: "arma3"))
        jogos.append(Jogo(titulo: "Red Orchestra 2: Heroes of Stalingrad", plataformas: "PC, XBOX, Playstation", genero: .Guerra, descricao: "Blah Blah Blah", imagemCapa: "redOrchestra2"))
        jogos.append(Jogo(titulo: "Verdun", plataformas: "PC, XBOX, Playstation", genero: .Guerra, descricao: "Blah Blah Blah", imagemCapa: "verdun"))
        
        //Ação
        jogos.append(Jogo(titulo: "Grand Theft Auto V", plataformas: "PC, XBOX, Playstation", genero: .Ação, descricao: "Blah Blah Blah", imagemCapa: "gta5"))
        jogos.append(Jogo(titulo: "God of War: Ragnarok", plataformas: "PC, XBOX, Playstation", genero: .Ação, descricao: "Blah Blah Blah", imagemCapa: "layersOfFear2"))
        jogos.append(Jogo(titulo: "Assassin's Creed: Valhalla", plataformas: "PC, XBOX, Playstation", genero: .Ação, descricao: "Blah Blah Blah", imagemCapa: "assassinsCreed"))
        jogos.append(Jogo(titulo: "Uncharted 4: A Thief's End", plataformas: "PC, XBOX, Playstation", genero: .Ação, descricao: "Blah Blah Blah", imagemCapa: "uncharted4"))
        jogos.append(Jogo(titulo: "The Last of Us Part II", plataformas: "PC, XBOX, Playstation", genero: .Ação, descricao: "Blah Blah Blah", imagemCapa: "theLastOfUs"))
        
        //Esporte
        jogos.append(Jogo(titulo: "NBA 2k22", plataformas: "PC, XBOX, Playstation", genero: .Esporte, descricao: "Blah Blah Blah", imagemCapa: "nba2k22"))
        jogos.append(Jogo(titulo: "F1 2021", plataformas: "PC, XBOX, Playstation", genero: .Esporte, descricao: "Blah Blah Blah", imagemCapa: "f12021"))
        jogos.append(Jogo(titulo: "FIFA 22", plataformas: "PC, XBOX, Playstation", genero: .Esporte, descricao: "Blah Blah Blah", imagemCapa: "fifa22"))
        jogos.append(Jogo(titulo: "Tony Hawk's Pro Skater 1 + 2", plataformas: "PC, XBOX, Playstation", genero: .Esporte, descricao: "Blah Blah Blah", imagemCapa: "tonyHawksProSkater"))
        jogos.append(Jogo(titulo: "Forza Horizon 5", plataformas: "PC, XBOX, Playstation", genero: .Esporte, descricao: "Blah Blah Blah", imagemCapa: "forzaHorizon5"))
    }
    
    func exibirAlertSimples(titulo: String, mensagem: String) {
        let alert = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in }))
        self.present(alert, animated: true, completion: nil)
    }
    
}
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return jogos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "jogosCell", for: indexPath) as? JogosCollectionViewCell {
            let jogo = jogos[indexPath.item]
            cell.configuraCelula(jogo: jogo)
            let corDeFundo = coresPorGenero.first(where: { elemento in
                elemento.0 == jogo.genero
            }) ?? (nil, UIColor.clear)
            cell.backgroundColor = corDeFundo.1.withAlphaComponent(0.5)

            return cell
        }
        return UICollectionViewCell()
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let jogo = jogos[indexPath.item]
        jogoSelecionado = jogo
        jogoSelecionadoLabel.text = jogo.titulo
//        performSegue(withIdentifier: "segueDetalhes", sender: jogo)
        
    }
}
