class PaymentController:Totals {
    var earnings: Float
    var totalSold: Float
    var total: Float
    
    required init(earnings: Float, totalSold: Float, total: Float){
        self.earnings = earnings
        self.totalSold = totalSold
        self.total = total
    }
    
    func SumOfTotals(earnings: Float, totalSold: Float, total: Float) -> Float {
        var earnings = AmazonService.init().earnings
        var totalSold = EtsyService.init().totalSold
        var total = (earnings + totalSold)
        return total
    }

let amazonService: AmazonService
let etsyService: EtsyService
//init(amazon: AmazonService, etsy: EtsyService) {
//    amazonService = amazon
//    etsyService = etsy
//    }

}
let amazonService = AmazonService()
let etsyService = EtsyService()

let controller = PaymentController(earnings: AmazonService.init().earnings, totalSold: EtsyService.init().totalSold, total:(PaymentController.earnings + PaymentController.totalSold))

public protocol Totals{
    var earnings : Float {get}
    var totalSold: Float {get}
    var total: Float {set get}
    init(earnings:Float, totalSold:Float, total:Float)
    func SumOfTotals(earnings:Float, totalSold:Float, total:Float) -> Float
}
public extension Totals{
    init(earnings: Float, totalSold:Float, total: Float) throws {
        var earnings = AmazonService.init().earnings
        var totalSold = EtsyService.init().totalSold
        var total = total
        self.init(earnings: earnings, totalSold: totalSold, total: total)
    }
    func SumOfTotals(earnings:Float, totalSold:Float, total: Float) throws -> Float {
            var earnings = self.earnings
            var totalSold = self.totalSold
            var total = (earnings + totalSold)
            return total
    }
}

amazonService.orderPlaced(payment: 100)
etsyService.itemSold(profit: 25)
amazonService.orderPlaced(payment: 12.50)
controller.SumOfTotals(earnings: controller.earnings, totalSold: controller.totalSold, total: controller.total)



print("Total earned: \(controller.SumOfTotals(earnings: controller.earnings, totalSold: controller.totalSold, total: controller.total))")
