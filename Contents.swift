//: A UIKit based Playground for presenting user interface
//
//import UIKit
//import PlaygroundSupport
//
//class MyViewController : UIViewController {
//    override func loadView() {
//        let view = UIView()
//        view.backgroundColor = .white
//
//        let label = UILabel()
//        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
//        label.text = "Hello World!"
//        label.textColor = .black
//
//        view.addSubview(label)
//        self.view = view
//    }
//}
//// Present the view controller in the Live View window
//PlaygroundPage.current.liveView = MyViewController()
//
//


struct Transaction {
    
    var amount : Int = 3000
    var senderName : String = "Chuks"
    var receiverName : String = "james"
    var narraion : String = "for chops"
    var referrence : String = "ddde93282828928"
    
}


struct TransactionPending {
    
    var amount : Int
    var senderName : String
    var receiverName : String
    var narraion : String
    var referrence : String
    
    init( amount_ : Int, senderName_ : String, receiverName_ : String  , narraion_ : String ,referrence_ : String){
        amount = amount_
        senderName = senderName_
        receiverName = receiverName_
        narraion = narraion_
        referrence = referrence_.uppercased()
        
        
    }
    
    func isNotBroke () -> Bool  {return  amount > 6000 } /// this is  an instance method
    ///
    ///
    // Type method
    static func isRichestCustomer (first : TransactionPending, second : TransactionPending) -> TransactionPending {
        
        if (first.amount > second.amount){
            return first
        }
        return second
    }
  
}

var pendingTansactionRecords : [TransactionPending] = []
var p = TransactionPending( amount_: 230000, senderName_: "Jayeola Davis", receiverName_: "Audu kola", narraion_: "Keeping up with naija", referrence_ : "Bbbdqfbsj3362")


var p1 = TransactionPending( amount_: 24000, senderName_: "Otu Amaka", receiverName_: "James Chris", narraion_: "Not Keeping up with naija", referrence_ : "BBggreososkf")
var p2 = TransactionPending( amount_: 39000, senderName_: "Abubakre Lawal", receiverName_: "Bisong Ame", narraion_: " School fees", referrence_ : "BbbRNkfdo4542")
var p3 = TransactionPending( amount_: 5094, senderName_: "Kola Uche", receiverName_: "Audu kola", narraion_: "Aso Ebi", referrence_ : "Bbbttubepe00")


pendingTansactionRecords.append(p)
pendingTansactionRecords.append(p1)
pendingTansactionRecords.append(p2)
pendingTansactionRecords.append(p3)
//print(pendingTansactionRecords[0].narraion)
pendingTansactionRecords.sort(by:{$0.amount < $1.amount})
 


for ref in pendingTansactionRecords  {
   // print(ref.amount)
    if (ref.isNotBroke()){
        print("thelarge volume senders are  \(ref.senderName) amount they sent id \(ref.amount)")
    }else {
        print("thelarge volume senders are not \(ref.senderName)")}
}

var richer = TransactionPending.isRichestCustomer(first: p, second: p3)

print("the richer customer would be == \(richer.senderName)")





//var t = Transaction()
//print(" this is the succcessful transaction ammount: \(t.amount) this the pending transaction amount \(p.amount)  reference is :: \(p.referrence) ")


