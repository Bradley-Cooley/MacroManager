//
//  NixItem.swift
//  MacroManager
//
//  Created by user122708 on 11/17/16.
//  Copyright © 2016 Aaron Edwards. All rights reserved.
//

import Foundation

class NixItem {
    var itemName : String
    var itemId : String
    var itemDescription : String?
    var fats : Double?
    var proteins : Double?
    var carbs : Double?
    
    required init?(itemName: String, itemId: String, itemDescription: String?, fats: Double?, proteins: Double?, carbs: Double?) {
        self.itemName = itemName
        self.itemId = itemId
        self.itemDescription = itemDescription
        self.fats = fats
        self.proteins = proteins
        self.carbs = carbs
    }
    
    convenience init?(json: [String: Any]) {
        guard let fieldsDict = json["fields"] as? [String: Any]
            else {
                return nil
        }
        
        guard let itemId = fieldsDict["item_id"] as? String,
            let itemName = fieldsDict["item_name"] as? String
            else {
                return nil
        }
        
        //Optionals
        let itemDescription = fieldsDict["item_description"] as? String
        let fats = fieldsDict["nf_total_fat"] as? Double
        let proteins = fieldsDict["nf_protein"] as? Double
        let carbs = fieldsDict["nf_total_carbohydrate"] as? Double
        
        self.init(itemName: itemName, itemId: itemId, itemDescription: itemDescription, fats: fats, proteins: proteins, carbs: carbs)
    }
    
    func toString() -> String {
        return "Item Name: \(self.itemName)\n" +
            "Item ID: \(self.itemId)\n" +
            "Item Description: \(self.itemDescription)\n" +
            "Fats: \(self.fats) grams\n" +
            "Protein: \(self.proteins) grams\n" +
            "Carbs: \(self.carbs) grams\n"
    }
}