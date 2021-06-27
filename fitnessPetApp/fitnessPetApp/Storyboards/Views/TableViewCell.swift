//
//  TableViewCell.swift
//  fitnessPetApp
//
//  Created by MACsimus on 25.06.2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    var homeViewModel = HomeViewModel()
    
   // @IBOutlet weak var cellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
        //trans model
    func configureTheCell(for cell: TableViewCell, at indexPath : IndexPath) -> TableViewCell {
        
            cell.textLabel?.text = homeViewModel.variants[indexPath.row]
            cell.accessoryType = .disclosureIndicator
            //cell.contentView.backgroundColor = UIColor.clear
            return cell
        }
    }
