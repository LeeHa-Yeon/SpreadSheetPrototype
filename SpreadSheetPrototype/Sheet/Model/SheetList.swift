//
//  SheetList.swift
//  SpreadSheetPrototype
//
//  Created by 이하연 on 2020/12/02.
//

import Foundation


class SheetList {
    // 시트의 고유아이디 ( 기본키 )
    var sheetId : Int
    var sheetTitle : String
    var lastModifiedUser : String
    var date : Date
    
    init(){
        sheetId = 1
        sheetTitle = "제목 없는 스프레드시트"
        lastModifiedUser = "이하연"
        date = Date()
        
    }
    
    init(sheetId:Int, sheetTitle: String, lastModifiedUser: String, date: Date){
        self.sheetId = sheetId
        self.sheetTitle = sheetTitle
        self.lastModifiedUser = lastModifiedUser
        self.date = date
    }
    
    static var dummyDataList = [
        SheetList(),
        SheetList(sheetId: 1, sheetTitle: "변's 새시트", lastModifiedUser: "변승윤",date: Date())
    ]
    
}



//class Memo {
//    var content : String
//    var insertDate : Date
//
//    init( content: String) {
//        self.content = content
//        insertDate = Date()
//    }
//
//    static var dummyMemoList = [
//        Memo(content: "Hayeon"),
//        Memo(content: "Test")
//    ]
//}
