//
//  foodData.swift
//  wdjDogFood
//
//  Created by Pinocchio on 2023/8/7.
//

import Foundation
import UIKit


var dogFoodArray: [DogFoodDefinition] = [
    DogFoodDefinition(foodBrand: "ACANA愛肯拿", foodIntroduce: "ACANA是一家高品質的寵物食品品牌，以提供天然、新鮮、優質的食材而聞名。他們的食品配方充滿蛋白質，來自健康的農場和野生捕獲的食材。ACANA的食品不含大豆、穀物和人工添加物，適合各種年齡和體型的狗狗。", foodAveragePrice: 2620, foodImageName: "ACANA"),
    DogFoodDefinition(foodBrand: "Blackwood柏萊富", foodIntroduce: "Blackwood是一個重視寵物健康的品牌，提供平衡營養的食品，幫助寵物保持健康。他們的食品配方結合了優質蛋白質、蔬菜和水果，並添加益生菌來促進消化和免疫系統的健康。Blackwood不使用人工色素、香料和防腐劑，以確保食品的純淨和天然。", foodAveragePrice: 2438, foodImageName: "Blackwood"),
    DogFoodDefinition(foodBrand: "Farmina法米納", foodIntroduce: "Farmina是一家意大利寵物食品品牌，專注於提供天然、有機的食材，符合寵物的營養需求。他們的食品遵循「自然營養」理念，以盡可能接近寵物自然飲食為目標，並提供高品質蛋白質、健康脂肪和營養豐富的蔬果。Farmina的食品不含轉基因成分和人工防腐劑，是對寵物健康的負責選擇。", foodAveragePrice: 3170, foodImageName: "Farmina"),
    DogFoodDefinition(foodBrand: "Nutram紐頓", foodIntroduce: "Nutram提供多種配方，滿足不同寵物的營養需求，並且使用優質的成分。他們的食品結合了蛋白質、健康脂肪和天然纖維，有助於支持寵物的肌肉發展、心臟健康和消化系統。Nutram的食品也添加了抗氧化劑，幫助維持免疫系統的健康。無論是幼犬、成犬還是老年犬，Nutram都提供適合的配方選擇。", foodAveragePrice: 1901, foodImageName: "Nutram"),
    DogFoodDefinition(foodBrand: "Orijen渴望", foodIntroduce: "Orijen以高肉含量和多樣化的成分而聞名，幫助寵物維持理想的健康狀態。他們的食品配方包含多種肉類，包括雞肉、火雞、鴨肉、鮭魚和羊肉，提供豐富的蛋白質和必需脂肪酸。Orijen的食品不含穀物、薯類和人工添加物，適合模仿野生飲食的營養需求，讓寵物保持強健和活力。", foodAveragePrice: 2810, foodImageName: "Orijen"),
    DogFoodDefinition(foodBrand: "Health Extension綠野鮮食", foodIntroduce: "Health Extension提供天然的有機食材，適合寵物的消化系統，幫助增強免疫力。他們的食品包含優質的蛋白質、健康脂肪、蔬菜和水果，為寵物提供全面均衡的營養。Health Extension使用人類級別的食材，不含小麥、大豆和人工防腐劑，適合各種敏感寵物和選擇有機飲食的主人。", foodAveragePrice: 1819, foodImageName: "Health Extension"),
    DogFoodDefinition(foodBrand: "Nutro Ultra美士", foodIntroduce: "Nutro Ultra使用高品質的成分，提供全面平衡的營養，幫助寵物保持活力。他們的食品配方包含三種蛋白質來源：雞肉、鴨肉和大米，提供完整的氨基酸和必需脂肪酸。此外，Nutro Ultra添加了天然蔬果和超級食物成分，有助於支持寵物的心臟、關節和消化健康。食品不含玉米、大豆、人工色素和香料，適合尋求高品質飲食的寵物主人。", foodAveragePrice: 2381, foodImageName: "Nutro Ultra"),
    DogFoodDefinition(foodBrand: "Nutrience紐崔斯", foodIntroduce: "Nutrience是一家專注於提供全面營養的寵物食品品牌，使用新鮮的食材，為寵物的健康而設計。他們的食品配方包含優質蛋白質、健康脂肪和天然纖維，有助於支持寵物的肌肉、消化和免疫系統。Nutrience的食品也添加了益生菌和抗氧化劑，幫助促進腸道健康和免疫功能。無論是成犬、幼犬、貓還是狗，Nutrience都提供適合的配方選擇。", foodAveragePrice: 2447, foodImageName: "Nutrience"),
    DogFoodDefinition(foodBrand: "FirstMate第一饗宴", foodIntroduce: "FirstMate注重寵物的食品安全和營養均衡，為寵物提供高品質的食品。他們的食品配方使用單一蛋白質來源，如鮭魚、雞肉或羊肉，適合寵物的特殊需要和飲食要求。FirstMate的食品使用天然成分，不含人工添加物和防腐劑，並且富含omega-3脂肪酸，有助於保持寵物的皮膚和毛髮健康。", foodAveragePrice: 1675, foodImageName: "FirstMate"),
    DogFoodDefinition(foodBrand: "Instinct原點", foodIntroduce: "Instinct強調提供與寵物祖先飲食相符的食品，以支持寵物的健康和活力。他們的食品配方包含高蛋白質，來自生長在自然環境中的動物肉類。Instinct避免使用穀物和填充劑，並添加蔬菜和水果來提供全面的營養。他們的食品也包含益生菌，有助於促進寵物的腸道健康。Instinct支持提供純淨、自然且優質的飲食選擇給你的寵物。", foodAveragePrice: 2681, foodImageName: "Instinct")
]
