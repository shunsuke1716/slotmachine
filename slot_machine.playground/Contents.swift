import UIKit

class SlotMachine{
    var inputcoin : Int = 0
    var totalcoin : Int = 0
    var outputcoin : Int = 0
    let key1_order = [1,2,3,1,2,1,1,1]
    let key2_order = [1,2,3,1,2,1,1,1]
    let key3_order = [1,2,3,1,2,1,1,1]
    let key1 = Int.random(in: 0..<7)
    let key2 = Int.random(in: 0..<7)
    let key3 = Int.random(in: 0..<7)
    let pay_1 = 1
    let pay_2 = 3
    let pay_3 = 5
    var key1_result = 0
    var key2_result = 0
    var key3_result = 0
    func startButton(_ inputcoin:Int)->Int{
        self.inputcoin = inputcoin
        totalcoin = totalcoin+inputcoin
        if totalcoin<3{
            print("コインを追加してください。")
        }else if inputcoin>=3{
            print("スタート")
            totalcoin = totalcoin - 3
            key1_result = key1_order[key1]
            key2_result = key2_order[key2]
            key3_result = key3_order[key3]
            print("1列目は\(key1_result)です")
            print("2列目は\(key2_result)です")
            print("3列目は\(key3_result)です")
            if key1_result==key2_result && key2_result==key3_result{
                print("あたり")
                switch key1_result{
                case 1:
                    outputcoin = 1
                case 2:
                    outputcoin = 3
                case 3:
                    outputcoin = 5
                default:
                    outputcoin = 0
                }
            }else{
                print("はずれ")
                outputcoin = 0
            }
            totalcoin = totalcoin + outputcoin
        }
        return totalcoin
    }
}
let slotMachine = SlotMachine()
let startTry = slotMachine.startButton(10)
print(startTry)
