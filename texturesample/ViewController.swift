import UIKit
import AsyncDisplayKit


class ViewController: ASViewController<ASDisplayNode>, ASTableDataSource, ASTableDelegate {

  var tableNode: ASTableNode!
  var restaurantData: [RestaurantModel]!

  override func viewDidLoad() {
    super.viewDidLoad()
    tableNode = ASTableNode(style: .plain)
    self.view.addSubnode(tableNode)
    buildDataSource()
    tableNode.delegate = self
    tableNode.dataSource = self
  }

  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    tableNode.view.frame = self.view.frame
  }

  //MARK:- Tableview delegate and datasource methods

  func numberOfSections(in tableNode: ASTableNode) -> Int {
    return 1
  }

  func tableNode(_ tableNode: ASTableNode, numberOfRowsInSection section: Int) -> Int {
    return restaurantData.count
  }

  func tableNode(_ tableNode: ASTableNode, nodeBlockForRowAt indexPath: IndexPath) -> ASCellNodeBlock {
    let model = restaurantData[indexPath.row]
    return {
      return ASResturantNode(model: model)
    }
  }

  //MARK:- Custom methods

  func buildDataSource() {
    restaurantData = [RestaurantModel]()
    restaurantData.append(RestaurantModel(name: "Paradise Biryani", address: "Koramangala 1st Block", commonOffer: "10% on all orders above Rs.300. 10% on all orders above Rs.300. 10% on all orders above Rs.300", restuarntOffer: nil, bankOffer: nil))
    restaurantData.append(RestaurantModel(name: "Krutunga Restaurant", address: "Koramangala 5th Block", commonOffer: "20% on all orders above Rs.99", restuarntOffer: nil, bankOffer: "Extra 5% off on all HDFC cards"))
    restaurantData.append(RestaurantModel(name: "Eat Fit", address: "HSR", commonOffer: "20% on all orders", restuarntOffer: "15% on Milk Shakes", bankOffer: "Extra 100 cashback when you pay with PayTm"))
    restaurantData.append(RestaurantModel(name: "Biryani House", address: "Koramangala 1st Block", commonOffer: "10% on all orders above Rs.300", restuarntOffer: nil, bankOffer: nil))
    restaurantData.append(RestaurantModel(name: "Fassos Restaurant", address: "Koramangala 5th Block", commonOffer: "20% on all orders above Rs.99", restuarntOffer: nil, bankOffer: "Extra 5% off on all HDFC cards"))
    restaurantData.append(RestaurantModel(name: "Udupi Palace", address: "HSR", commonOffer: "20% on all orders", restuarntOffer: "15% on Milk Shakes", bankOffer: "Extra 100 cashback when you pay with PayTm"))
    restaurantData.append(RestaurantModel(name: "Chai Point", address: "Koramangala 1st Block", commonOffer: "10% on all orders above Rs.300", restuarntOffer: nil, bankOffer: nil))
    restaurantData.append(RestaurantModel(name: "Shree Khana Khazana", address: "Koramangala 5th Block", commonOffer: "20% on all orders above Rs.99", restuarntOffer: nil, bankOffer: "Extra 5% off on all HDFC cards"))
    restaurantData.append(RestaurantModel(name: "Rolls on Wheels", address: "HSR", commonOffer: "20% on all orders", restuarntOffer: "15% on Milk Shakes", bankOffer: "Extra 100 cashback when you pay with PayTm"))
    restaurantData.append(RestaurantModel(name: "Paradise Biryani", address: "Koramangala 1st Block", commonOffer: "10% on all orders above Rs.300. 10% on all orders above Rs.300. 10% on all orders above Rs.300", restuarntOffer: nil, bankOffer: nil))
    restaurantData.append(RestaurantModel(name: "Krutunga Restaurant", address: "Koramangala 5th Block", commonOffer: "20% on all orders above Rs.99", restuarntOffer: nil, bankOffer: "Extra 5% off on all HDFC cards"))
    restaurantData.append(RestaurantModel(name: "Eat Fit", address: "HSR", commonOffer: "20% on all orders", restuarntOffer: "15% on Milk Shakes", bankOffer: "Extra 100 cashback when you pay with PayTm"))
    restaurantData.append(RestaurantModel(name: "Biryani House", address: "Koramangala 1st Block", commonOffer: "10% on all orders above Rs.300", restuarntOffer: nil, bankOffer: nil))
    restaurantData.append(RestaurantModel(name: "Fassos Restaurant", address: "Koramangala 5th Block", commonOffer: "20% on all orders above Rs.99", restuarntOffer: nil, bankOffer: "Extra 5% off on all HDFC cards"))
    restaurantData.append(RestaurantModel(name: "Udupi Palace", address: "HSR", commonOffer: "20% on all orders", restuarntOffer: "15% on Milk Shakes", bankOffer: "Extra 100 cashback when you pay with PayTm"))
    restaurantData.append(RestaurantModel(name: "Chai Point", address: "Koramangala 1st Block", commonOffer: "10% on all orders above Rs.300", restuarntOffer: nil, bankOffer: nil))
    restaurantData.append(RestaurantModel(name: "Shree Khana Khazana", address: "Koramangala 5th Block", commonOffer: "20% on all orders above Rs.99", restuarntOffer: nil, bankOffer: "Extra 5% off on all HDFC cards"))
    restaurantData.append(RestaurantModel(name: "Rolls on Wheels", address: "HSR", commonOffer: "20% on all orders", restuarntOffer: "15% on Milk Shakes", bankOffer: "Extra 100 cashback when you pay with PayTm"))
  }



}

