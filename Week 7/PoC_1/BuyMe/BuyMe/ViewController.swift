//
//  ViewController.swift
//  BuyMe
//
//  Created by Colin van der Geld on 08-01-18.
//  Copyright © 2018 Colin van der Geld. All rights reserved.
//

import UIKit
import StoreKit

class ViewController: UIViewController, SKProductsRequestDelegate, SKPaymentTransactionObserver {
    
    @IBOutlet weak var btnRemoveAdds: UIButton!
    @IBOutlet weak var btnAddCoins: UIButton!
    @IBOutlet weak var btnRestorePurchases: UIButton!
    
    @IBOutlet weak var add: UILabel!
    @IBOutlet weak var coins: UILabel!
    var amountOfCoins = 50
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        print("product request")
        let myProduct = response.products
        for product in myProduct{
            print("product added")
            print(product.productIdentifier)
            print(product.price)
            print(product.localizedTitle)
            print(product.localizedDescription)
            
            list.append(product)
        }
        btnRemoveAdds.isEnabled = true
        btnAddCoins.isEnabled = true
        btnRestorePurchases.isEnabled = true
        
    }
    func paymentQueueRestoreCompletedTransactionsFinished(_ queue: SKPaymentQueue) {
        print("Transaction restored")
        for transaction in queue.transactions{
            let t:SKPaymentTransaction = transaction
            let prodId = t.payment.productIdentifier as String
            
            switch prodId{
            case "com.colinvandergeld.addCoins":
                print("add coins")
                addCoins()
            case "com.colinvandergeld.removeAdds":
                print("remove add")
                removeAdd()
            default:
                print("some other thing")
            }
        }
    }
        
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]){
        print("add payment")
        
        for transaction:AnyObject in transactions{
            let trans = transaction as! SKPaymentTransaction
            print(trans.error)
            switch trans.transactionState{
            case .purchased:
                print("buy ok")
                let prodId = p.productIdentifier
                switch prodId{
                case "com.colinvandergeld.addCoins":
                    print("add coins")
                    addCoins()
                case "com.colinvandergeld.removeAdds":
                    print("remove add")
                    removeAdd()
                default:
                    print("some other thing")
                }
                queue.finishTransaction(trans)
            case .failed:
                print("buy error")
                queue.finishTransaction(trans)
                break;
                
            default:
                print("Default")
                break;
            }
        }
    }
    
    
    func removeAdd(){
        add.removeFromSuperview()
    }

    func addCoins(){
        amountOfCoins += 50
        coins.text = "\(amountOfCoins)"
    }

    var list = [SKProduct]()
    var p = SKProduct()
    
    
    @IBAction func btnRemoveAdds(_ sender: UIButton) {
    }
    
    @IBAction func btnAddCoins(_ sender: UIButton) {
    }
    
    @IBAction func btnRestorePurchases(_ sender: UIButton) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        btnRemoveAdds.isEnabled = false
        btnAddCoins.isEnabled = false
        btnRestorePurchases.isEnabled = false
        
        if(SKPaymentQueue.canMakePayments()){
            print("IAP is enabled, loading")
            let productId:NSSet = NSSet(objects:"com.colinvandergeld.removeAdds", "com.colinvandergeld.addCoins")
            let request : SKProductsRequest = SKProductsRequest(productIdentifiers: productId as! Set<String>)
            request.delegate = self
            request.start()
        }
        else{
            print("please enable IAP's")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

