//
//  Sheet.swift
//  SpreadSheetPrototype
//
//  Created by 이하연 on 2020/12/02.
//

import Foundation

struct Sheet {
    var sheetId : Int
    var Cells : Int
    var row : Int
    var column : Int
    
    mutating func updateRow(row: Int){
        self.row = row
    }
    
    mutating func updateCol(col: Int){
        self.column = col
    }
    
    mutating func updateCells(cells: Int){
        self.Cells = cells
    }
    
    init(){
        self.sheetId = 1
        self.Cells = 0
        self.row = 3
        self.column = 3
    }
    
    init(sheetId: Int, Cells: Int, row: Int, column: Int) {
        self.sheetId = sheetId
        self.Cells = Cells
        self.row = row
        self.column = column
    }
    
}
