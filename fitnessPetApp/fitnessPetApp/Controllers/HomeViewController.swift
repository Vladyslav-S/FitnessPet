//
//  HomeViewController.swift
//  fitnessPetApp
//
//  Created by MACsimus on 24.06.2021.
//

import UIKit

class HomeViewController: BaseViewController, Storyboarded {
    
    weak var coordinator: MainCoordinator?
    var homeViewModel = HomeViewModel()
    var tableViewCell  = TableViewCell()
    
    @IBOutlet weak var sexLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var profileImage: UIButton!
    @IBOutlet weak var variantsTableView: UITableView! {
        didSet  {
            variantsTableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "ReusableCell")
            //variantsTableView.separatorStyle = .none
            variantsTableView.dataSource = self
            variantsTableView.delegate = self
        }
    }
    @IBAction func chooseProfileImagePressed(_ sender: UIButton) {
        handleSelectProfileImageView()
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
}
//MARK:- TableViewDataSource
extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return homeViewModel.variants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell") as! TableViewCell
        cell.configureTheCell(for: cell, at: indexPath)
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //let height = (variantsTableView.bounds.size.height / CGFloat(homeViewModel.variants.count))
        //44
        return 44//height
    }
}
//MARK:- TableViewDelegate
extension HomeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch homeViewModel.controllersID[indexPath.row] {
        case .profile:
            coordinator?.presentProfileController()
        case .progress:
            coordinator?.presentProgressController()
        case .program:
            coordinator?.presentProgramController()
        case .muscles:
            coordinator?.presentMusclesController()
        case .calculator:
            coordinator?.presentCalculatorController()
        }
        
        variantsTableView.deselectRow(at: indexPath, animated: false)
    }
}

extension HomeViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func handleSelectProfileImageView() {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.allowsEditing = true
        present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        var selectedImageFromPicker: UIImage?
        if let editedImage = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage {
            selectedImageFromPicker = editedImage
        } else if let originalImage = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerOriginalImage")] as? UIImage {
            selectedImageFromPicker = originalImage
        }
        if let selectedImage = selectedImageFromPicker {
            profileImage.setImage(selectedImage, for: .normal)
        }
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        print("canceled picker ")
        dismiss(animated: true, completion: nil)
    }
}
