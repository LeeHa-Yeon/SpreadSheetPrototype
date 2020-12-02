//
//  SheetListTableViewController.swift
//  SpreadSheetPrototype
//
//  Created by 이하연 on 2020/12/02.
//

import UIKit

class SheetListTableViewController: UITableViewController {


    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - 추가시 제목 입력창 띄우기
    
    @IBAction func addSheet(_ sender: Any) {
        let title = "새 스프레드시트"
        let message = "새 스프레드시트의 이름을 지정하세요."
                
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "취소", style: .cancel)
        let okAction = UIAlertAction(title: "만들기", style: .default) { (_) in
        }
        alert.addAction(cancelAction)
        alert.addAction(okAction)
            
        alert.addTextField(configurationHandler: { (textfield) in
            // 텍스트필드 속성
            //textfield.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
            textfield.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            textfield.placeholder = "파일이름" // 안내메시지
        })
        self.present(alert, animated: true, completion: nil)
    }
    
    
    

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SheetList.dummyDataList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SheetListCell", for: indexPath) as? SheetListCell else { return UITableViewCell() }
        // cell.updateUI(sheetList: SheetList[indexPath.row])
        
        // cell.updateUI(sheetList: )
        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

class SheetListCell : UITableViewCell {
    
    // 날짜 한국식으로 표시
    let formatter: DateFormatter = {
        let f = DateFormatter()
        f.dateStyle = .long
        f.timeStyle = .medium
        f.locale = Locale(identifier: "Ko_kr")
        return f
    }()
    
    @IBOutlet weak var sheetTitleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var modifiedUser: UILabel!
    
    // awakeFromNib()은 객체가 초기화(인스턴스화)된 후 호출된다.
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func updateUI(sheetList : SheetList){
        sheetTitleLabel.text = sheetList.sheetTitle
        dateLabel.text = formatter.string(for: sheetList.date)
        modifiedUser.text = sheetList.lastModifiedUser
    }

}




//class SheetListCell :UITableViewCell {
//    @IBOutlet weak var lastEditUserLabel: UILabel!
//    @IBOutlet weak var dateLabel: UILabel!
//    @IBOutlet weak var sheetNameLabel: UILabel!
//
//    override func awakeFromNib() {
//        super.awakeFromNib()
//    }
//
//    func updateUI(sheetListInfo : SheetListInfo){
//        sheetNameLabel.text = sheetListInfo.sheetName
//        dateLabel.text = "\(sheetListInfo.date)"
//        lastEditUserLabel.text = sheetListInfo.lastEditUser
//    }
//}
