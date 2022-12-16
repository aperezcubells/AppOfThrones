//
//  episodeViewController.swift
//  AppOfThrones
//
//  Created by Sotronic on 17/11/22.
//

import UIKit

class EpisodeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var episodes: [Episode] = [Episode.init(id: 1, name: "winter is Coming", date: "April, 9 June", image: "episodeTest", episode: 1, season: 1, overview: "que episodio esjeje"),
                               Episode.init(id: 1, name: "winter is Coming", date: "April, 9 June", image: "episodeTest", episode: 1, season: 1, overview: "que episodio esjeje"),
                               Episode.init(id: 1, name: "winter is Coming", date: "April, 9 June", image: "episodeTest", episode: 1, season: 1, overview: "que episodio esjeje"),
                               Episode.init(id: 1, name: "winter is Coming", date: "April, 9 June", image: "episodeTest", episode: 1, season: 1, overview: "que episodio esjeje"),
                               Episode.init(id: 1, name: "winter is Coming", date: "April, 9 June", image: "episodeTest", episode: 1, season: 1, overview: "que episodio esjeje")]
    
    /*override func viewWillAppear(_ animated: Bool) {
     super.viewWillAppear(animated)
     }*/
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
    }
    /*    override func viewDidAppear(_ animated: Bool) {
     super.viewDidAppear(animated)
     }
     override func viewWillDisappear(_ animated: Bool) {
     self.viewWillDisappear(animated)
     }
     override func viewDidDisappear(_ animated: Bool) {
     self.viewDidDisappear(animated)
     }*/
    
    func setupUI()
    {
        self.title = "Seasons"
        //llamada a la celda
        let nib = UINib(nibName: "EpisodeTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "EpisodeTableViewCell")

        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    @IBAction func openRate(_ sender: Any) {
        //Abrir pantalla rate
        let rateViewControler = RateViewController()
        rateViewControler.modalPresentationStyle = .fullScreen
        self.present(rateViewControler, animated: true, completion: nil)
        
    }
    //MARK: - UITableViewDelegate
    //alto de la celda
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 123
    }
    //seleccion de la celda
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("se ha hceho tap en la celda con sección \(indexPath.section) y fila \(indexPath.row)")
        //cuando se deseleciona la celda no se quede seleccionada
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    //MARK: - UITableViewDatasource
    //Cuantas secciones tiene la tabla
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //Cantidad de filas tiene la tabla
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return episodes.count
    }
    //que celda tengo que mostrar en la tabla
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "EpisodeTableViewCell", for: indexPath) as? EpisodeTableViewCell {
            let ep = episodes[indexPath.row]
            cell.setEpisode(ep)
            return cell
        }
       fatalError("Could not creat the episode cell")
        
    }

}
