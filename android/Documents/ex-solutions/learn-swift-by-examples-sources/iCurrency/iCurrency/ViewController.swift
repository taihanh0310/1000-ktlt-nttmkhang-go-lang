//
//  ViewController.swift
//  iCurrency
//
//  Created by Zhimin Zhan on 17/09/2016.
//  Copyright © 2016 AgileWay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var fromAmount: UITextField!
  @IBOutlet weak var euroAmount: UILabel!
  @IBOutlet weak var jpyAmount: UILabel!
  @IBOutlet weak var audAmount: UILabel!
  @IBOutlet weak var gbpAmount: UILabel!
  @IBOutlet weak var cnyAmount: UILabel!
  
  @IBOutlet weak var eurRateLabel: UILabel!
  @IBOutlet weak var eurReverseRateLabel: UILabel!
  @IBOutlet weak var jpyRateLabel: UILabel!
  @IBOutlet weak var jpyReverseRateLabel: UILabel!
  @IBOutlet weak var audRateLabel: UILabel!
  @IBOutlet weak var audReverseRateLabel: UILabel!
  @IBOutlet weak var gbpRateLabel: UILabel!
  @IBOutlet weak var gbpReverseRateLabel: UILabel!
  @IBOutlet weak var cnyRateLabel: UILabel!
  @IBOutlet weak var cnyReverseRateLabel: UILabel!
  
  var allCurrencies = ["AUD": "Australian Dollar", "USD": "US Dollar", "EUR": "Euro", "JPY": "Japanese Yen", "CNY": "Chinese Yuan"]
  var cachedExchangeRateDict = [String: Double]()
  
    var currencyAmountUIDict =  [String: UILabel?]()
    var currencyRateUIDict =  [String: UILabel?]()
    var currencyReverseRateUIDict =  [String: UILabel?]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.

    currencyAmountUIDict["EUR"] = euroAmount
    currencyAmountUIDict["AUD"] = audAmount
    currencyAmountUIDict["JPY"] = jpyAmount
    currencyAmountUIDict["GBP"] = gbpAmount
    currencyAmountUIDict["CNY"] = cnyAmount
    
    currencyRateUIDict["EUR"] = eurRateLabel
    currencyRateUIDict["JPY"] = jpyRateLabel
    currencyRateUIDict["AUD"] = audRateLabel
    currencyRateUIDict["GBP"] = gbpRateLabel
    currencyRateUIDict["CNY"] = cnyRateLabel
    
    currencyReverseRateUIDict["EUR"] = eurReverseRateLabel
    currencyReverseRateUIDict["JPY"] = jpyReverseRateLabel
    currencyReverseRateUIDict["AUD"] = audReverseRateLabel
    currencyReverseRateUIDict["GBP"] = gbpReverseRateLabel
    currencyReverseRateUIDict["CNY"] = cnyReverseRateLabel
    
    // pref-fetch rates for first display
    convert(sourceCurrency: "USD", sourceAmount: 100.0)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func convertTapped(_ sender: AnyObject) {
    let amount = Double(fromAmount.text!)
    let currency = "USD" // hard code for now
    convert(sourceCurrency: currency, sourceAmount: amount!)
  }
  
  // converting
  func convert(sourceCurrency: String, sourceAmount: Double) {
    
    for key in ["EUR", "AUD", "JPY", "GBP", "CNY"] {
      if (key == sourceCurrency) {
        continue
      }
      
      var rate : Double? = cachedExchangeRateDict["\(sourceCurrency)\(key)"]
      if (rate == nil) {
        // fetch from services
        rate = fetchExchangeRate(fromCurrency: sourceCurrency, toCurrency: key)
        cachedExchangeRateDict["\(sourceCurrency)\(key)"] = rate
      }
      
      let reverseRate = 1.0 / rate!
      
      let uiLabel  = currencyAmountUIDict[key]
      let uiRateLabel = currencyRateUIDict[key]
      let uiReverseRateLabel  = currencyReverseRateUIDict[key]
    
      let targetAmount = rate! * sourceAmount
        uiLabel!?.text = formatAmount(number: (targetAmount as NSNumber))
        uiRateLabel!?.text = "1 \(sourceCurrency) = \(rate!) \(key)"
        uiReverseRateLabel!?.text = "1 \(key) = " + String(format:"%.4f", reverseRate) + " \(sourceCurrency)"
    }
  }

  func getURLContent(url: String) -> String {
    let urlContent : String = try! String(contentsOf: URL(string: url)!, encoding: String.Encoding.utf8)
    return urlContent
  }

  // deprecated, as Yahoo Finance API is down (or changed)
  func fetchExchangeRateYahooFinanceCSV(fromCurrency: String, toCurrency:String) -> Double {
    let urlStr = "https://download.finance.yahoo.com/d/quotes.csv?" +
                 "s=\(fromCurrency)\(toCurrency)=X&f=sl1d1t1ba&e=.csv"
    let rateCsvData = getURLContent(url: urlStr)
    let csvParagraphs = rateCsvData.components(separatedBy: ",")
    let exchangeRate = Double(csvParagraphs[1] as String)
    return exchangeRate!;
  }

    // get exchange rate in JSON format, you can get own key with your email
    // http://free.currencyconverterapi.com/api/v5/convert?q=AUD_JPY,AUD_USD&compact=y&apiKey=9926c8a6102a16fa14f8
    func fetchExchangeRateCurrentyConverterJSON(fromCurrency: String,  toCurrency: String) -> Double {
        let rateJSONData = getURLContent(url: "https://free.currencyconverterapi.com/api/v5/convert?q=" + fromCurrency + "_" + toCurrency + "&compact=y" + "&apiKey=9926c8a6102a16fa14f8")
        let decoder = JSONDecoder()
        let decodedJson: [String: [String: Double]] = try! decoder.decode([String: [String: Double]].self, from: rateJSONData.data(using: .utf8)!)
        // print(decodedJson);
        return decodedJson[fromCurrency + "_" + toCurrency]!["val"]!
    }

    // Another one
    // https://www.alphavantage.co/query?function=CURRENCY_EXCHANGE_RATE&from_currency=AUD&to_currency=JPY&apikey=GV5PY1TT8Y255ZLE"

  func fetchExchangeRate(fromCurrency: String, toCurrency:String) -> Double {
    return fetchExchangeRateCurrentyConverterJSON(fromCurrency: fromCurrency, toCurrency:toCurrency);
  }

  func formatAmount(number:NSNumber) -> String{
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    formatter.currencySymbol = ""             // not currency symbol, e.g. $
    formatter.currencyGroupingSeparator = ","
    return formatter.string(from: number)!
  }
  
}

