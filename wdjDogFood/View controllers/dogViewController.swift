//
//  dogViewController.swift
//  wdjDogFood
//
//  Created by Pinocchio on 2023/8/7.
//

import UIKit

class dogViewController: UIViewController {
    
    var allControl = 0

    @IBOutlet weak var foodPage: UIPageControl!
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var sortSegmented: UISegmentedControl!
    @IBOutlet weak var showInfo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .brown
        showInfo.layer.borderWidth = 1
        foodImage.layer.borderWidth = 5
        
        changeUI()
    }
    
    func changeUI() {
        sortSegmented.selectedSegmentIndex = allControl
        showInfo.text = dogFoodArray[foodPage.currentPage].foodIntroduce
        foodImage.image = UIImage(named: dogFoodArray[foodPage.currentPage].foodImageName)
    }
    
    
    @IBAction func swipePage(_ sender: UISwipeGestureRecognizer) {
        switch sender.direction {
        case .left:
            foodPage.currentPage -= 1
            changeUI()
        default:
            foodPage.currentPage += 1
            changeUI()
        }
    }
    
    
    @IBAction func nextPage(_ sender: Any) {
        foodPage.currentPage += 1
        changeUI()
    }
    
    @IBAction func prePage(_ sender: Any) {
        foodPage.currentPage -= 1
        changeUI()
    }
    
    @IBAction func foodPageControl(_ sender: Any) {
        changeUI()
    }
    
    @IBAction func sortControl(_ sender: Any) {
        allControl = sortSegmented.selectedSegmentIndex
        
        switch allControl {
        case 0:
            dogFoodArray = dogFoodArray.sorted{$0.foodBrand < $1.foodBrand}
        case 1:
            dogFoodArray = dogFoodArray.shuffled()
        default:
            dogFoodArray = dogFoodArray.sorted{$0.foodAveragePrice < $1.foodAveragePrice}
        }
        
        foodPage.currentPage = 0
        changeUI()
    }
    
}




#Preview {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    return storyboard.instantiateViewController(withIdentifier: "dogViewController")
}
