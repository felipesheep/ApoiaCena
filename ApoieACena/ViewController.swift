//
//  ViewController.swift
//  ApoieACena
//
//  Created by Felipe Montenegro on 3/29/17.
//  Copyright © 2017 Felipe Montenegro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate{
    /*
    
    var searchActive : Bool = false
    var data = ["Acre (AC)","Alagoas (AL)","Amapá (AP)","Amazonas (AM)","Bahia (BA)","Ceará (CE)","Distrito Federal (DF)","Espírito Santo (ES)","Goiás (GO)", "Maranhão (MA)", "Mato Grosso (MT)", "Mato Grosso do Sul (MS)", "Minas Gerais (MG)" , "Pará (PA)" , "Paraíba (PB)", "Paraná (PR)","Pernambuco (PE)" , "Piauí (PI)", "Rio de Janeiro (RJ)","Rio Grande do Norte (RN)","Rio Grande do Sul (RS)","Rondônia (RO)","Roraima (RR)","Santa Catarina (SC)","São Paulo (SP)","Sergipe (SE)","Tocantins (TO)"]
    var filtered:[String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func searchBarTextDidBeginEditing(searchBar: UISearchBar) {
        searchActive = true;
    }
    
    func searchBarTextDidEndEditing(searchBar: UISearchBar) {
        searchActive = false;
    }
    
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        searchActive = false;
    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        searchActive = false;
    }
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        
        filtered = data.filter({ (text) -> Bool in
            let tmp: NSString = text as NSString
            let range = tmp.range(of: searchText, options: NSString.CompareOptions.caseInsensitive)
            return range.location != NSNotFound
        })
        if(filtered.count == 0){
            searchActive = false;
        } else {
            searchActive = true;
        }
        self.tableView.reloadData()
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(searchActive) {
            return filtered.count
        }
        return data.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")! as UITableViewCell;
        if(searchActive){
            cell.textLabel?.text = filtered[indexPath.row]
        } else {
            cell.textLabel?.text = data[indexPath.row];
        }
        
        return cell;
    }*/

}
