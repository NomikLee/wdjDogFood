//
//  dogViewController.swift
//  wdjDogFood
//
//  Created by Pinocchio on 2023/8/7.
//

import UIKit

// 定義一個飼料介面的UIViewController
class dogViewController: UIViewController {
    
    // 記錄目前選中的排序方式
    var allControl = 0

    // 定義介面元件
    @IBOutlet weak var foodPage: UIPageControl!
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var sortSegmented: UISegmentedControl!
    @IBOutlet weak var showInfo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 設置背景色和邊框
        self.view.backgroundColor = .brown
        showInfo.layer.borderWidth = 1
        foodImage.layer.borderWidth = 5
        
        // 更新介面元件
        changeUI()
    }
    
    // 根據選定的飼料更新介面
    func changeUI() {
        sortSegmented.selectedSegmentIndex = allControl
        showInfo.text = dogFoodArray[foodPage.currentPage].foodIntroduce
        foodImage.image = UIImage(named: dogFoodArray[foodPage.currentPage].foodImageName)
    }
    
    // 處理滑動操作
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
    
    // 切換到下一頁的操作
    @IBAction func nextPage(_ sender: Any) {
        foodPage.currentPage += 1
        changeUI()
    }
    
    // 切換到上一頁的操作
    @IBAction func prePage(_ sender: Any) {
        foodPage.currentPage -= 1
        changeUI()
    }
    
    // 飼料頁面操作
    @IBAction func foodPageControl(_ sender: Any) {
        changeUI()
    }
    
    // 處理排序方式的選擇
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
