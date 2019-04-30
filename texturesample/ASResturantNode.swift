//
//  ASResturantNode.swift
//  texturesample
//
//  Created by Pavan Kumar C on 22/04/19.
//  Copyright © 2019 pavan. All rights reserved.
//

import UIKit
import AsyncDisplayKit

class ASResturantNode: ASCellNode {

  let nameNode: ASTextNode
  let addressNode: ASTextNode
  var commonOfferNode: ASTextNode?
  var bankOfferNode: ASTextNode?
  var resturantOfferNode: ASTextNode?

  var resturantModel: RestaurantModel!

  init(model: RestaurantModel) {
    resturantModel = model
    nameNode = ASTextNode()
    addressNode = ASTextNode()
    super.init()
    configureNodes()
    automaticallyManagesSubnodes = true
  }

  override func didLoad() {
    configureNodesText()
  }

  override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
    let verticalStackLayout = ASStackLayoutSpec()
    verticalStackLayout.alignItems = .center
    verticalStackLayout.direction = .vertical
    verticalStackLayout.justifyContent = .center

    var childs = [ASLayoutElement]()
    childs.append(nameNode)
    childs.append(addressNode)
    if commonOfferNode != nil {
      childs.append(commonOfferNode!)
    }
    if bankOfferNode != nil {
      childs.append(bankOfferNode!)
    }
    if resturantOfferNode != nil {
      childs.append(resturantOfferNode!)
    }

    verticalStackLayout.children = childs
    let insetLayout = ASInsetLayoutSpec(insets: UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16), child: verticalStackLayout)
    return insetLayout
  }

  func configureNodes() {
    resturantModel.bankOffer == nil ? (bankOfferNode = nil) : (bankOfferNode = ASTextNode())
    resturantModel.commonOffer == nil ? (commonOfferNode = nil) : (commonOfferNode = ASTextNode())
    resturantModel.restuarntOffer == nil ? (resturantOfferNode = nil) : (resturantOfferNode = ASTextNode())
  }

  func configureNodesText() {
    let nameNodeAttributes = [ NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor.black ]
    nameNode.attributedText = NSAttributedString(string: resturantModel.name, attributes: nameNodeAttributes)

    let addressNodeAttributes = [ NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 14), NSAttributedString.Key.foregroundColor: UIColor.lightGray ]
    addressNode.attributedText = NSAttributedString(string: resturantModel.address, attributes: addressNodeAttributes)

    if let _ = bankOfferNode, let bankOfferString = resturantModel.bankOffer {
      let bankOfferNodeAttributes = [ NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 14), NSAttributedString.Key.foregroundColor: UIColor.purple ]
      bankOfferNode?.attributedText = NSAttributedString(string: bankOfferString, attributes: bankOfferNodeAttributes)
    }

    if let _ = resturantOfferNode, let resturantOfferString = resturantModel.restuarntOffer {
      let resturantOfferNodeAttributes = [ NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 14), NSAttributedString.Key.foregroundColor: UIColor.orange ]
      resturantOfferNode?.attributedText = NSAttributedString(string: resturantOfferString, attributes: resturantOfferNodeAttributes)
    }

    if let _ = commonOfferNode, let commonOfferString = resturantModel.commonOffer {
      let commonOfferNodeAttributes = [ NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 14), NSAttributedString.Key.foregroundColor: UIColor.red ]
      commonOfferNode?.attributedText = NSAttributedString(string: commonOfferString, attributes: commonOfferNodeAttributes)
    }

  }

}
