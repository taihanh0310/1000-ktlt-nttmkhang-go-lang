//
//  main.swift
//  ex09-03-calc_sales_tax
//
//  Created by Zhimin Zhan on 8/01/2015.
//  Copyright (c) 2015 AgileWay. All rights reserved.
//

import Foundation

let GST_RATE = 10.0

// defined an interface
protocol Taxable {
  
  var amount: Double { get set }
  var sales_tax_applicable: Bool { get set }
  
  func net_amount() -> Double
  func gst() -> Double
}


// an implementation of interface
extension Taxable {
  
  func net_amount() -> Double {
    var the_amount:Double
    if self.sales_tax_applicable {
      the_amount = (self.amount / (100.0 + GST_RATE) * 100.0)
    } else {
      the_amount =  self.amount
    }
    return round(the_amount * 100) / 100
  }
  
  func gst() -> Double {
    var tax:Double
    if self.sales_tax_applicable {
      tax = (self.amount - self.net_amount())
    } else {
      tax = 0.0
    }
    tax =  round(tax * 100) / 100
    return tax
  }
  
}

class ServiceItem : Taxable {
  
  var name: String
  var amount: Double
  var sales_tax_applicable: Bool
  
  init(name: String, amount: Double) {
    self.name = name
    self.amount = amount
    self.sales_tax_applicable = false    // => default no sales tax
  }

}

class Goods : Taxable {
  
  var name: String
  var amount: Double
  var sales_tax_applicable: Bool
  
  init(name: String, amount: Double) {
    self.name = name
    self.amount = amount
    self.sales_tax_applicable = true    // => default no sales tax
  }

}

var foam_roller = Goods(name: "Foam Roller", amount: 49.95);
print("\(foam_roller.name) Net Amount: \(foam_roller.net_amount()), GST: \(foam_roller.gst())");

var physio_service = ServiceItem(name: "Physio Consultation", amount: 120.0);
print("\(physio_service.name) Net Amount: \(physio_service.net_amount()), GST: \(physio_service.gst())");

var pilates_class = ServiceItem(name: "Pilates Classes", amount: 80.0)
pilates_class.sales_tax_applicable = true
print("\(pilates_class.name) Net Amount: \(pilates_class.net_amount()), GST: \(pilates_class.gst())")
