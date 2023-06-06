import Foundation

public class AmazonService {
    private var balance: Float = 0
    
    public init() {}
    
    public func orderPlaced(payment: Float) {
        balance += payment
    }
    
    public var earnings: Float {
        return balance
    }
}
public class EtsyService {
    private var earnings: Float = 0
    
    public init() {}
    
    public func itemSold(profit: Float) {
        earnings += profit
    }
    
    public var totalSold: Float {
        return earnings
    }
}

//public protocol Totals{
//    var earnings : Float {get}
//    var totalSold: Float {get}
//    init(earnings:Float, totalSold:Float)
//}
//public protocol MyProtocol: Totals{
//    func BofUm(earnings:Float, totalSold:Float)
//}
//public extension MyProtocol{
//    init(earnings: Float, totalSold:Float) throws {
//        let earnings = AmazonService.init().earnings
//        let totalSold = EtsyService.init().totalSold
//        self.init(earnings: earnings, totalSold: totalSold)
//    }
//    func BofUm(earnings:Float, totalSold:Float) throws -> [Float] {
//        let totalOne = self.earnings
//        let totalTwo = self.totalSold
//        let TotalArray = [totalOne,totalTwo]
//        return TotalArray
//        func SumOfTotals(totalOne: Float, totalTwo: Float) -> Float {
//            let theTotal = (totalOne + totalTwo)
//            return theTotal
//        }
//    }
//}
