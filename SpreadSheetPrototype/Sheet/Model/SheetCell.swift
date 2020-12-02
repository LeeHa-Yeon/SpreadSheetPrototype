//
//  Cell.swift
//  SpreadSheetPrototype
//
//  Created by 이하연 on 2020/12/02.
//

import Foundation

struct SheetCell{
    var content : String = ""
    var imageURL : String = ""
    var height : Int = 60
    var width : Int = 100
    
    mutating func updateSheetCell(content: String, imageURL: String, height: Int, width: Int){
        self.content = content
        self.imageURL = imageURL
        self.height = height
        self.width = width
    }
    
    
    
    
    
    
}
