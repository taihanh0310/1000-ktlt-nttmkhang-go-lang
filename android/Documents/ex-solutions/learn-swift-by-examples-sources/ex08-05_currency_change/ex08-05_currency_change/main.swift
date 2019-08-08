//
//  ex08-05_currency_change

import Foundation

func getURLContent(url: String) -> String {
  let urlColntent : String = try! String(contentsOf: URL(string: url)!, encoding: String.Encoding.utf8)
  return urlColntent as String
}

// get exchange rate from Yahoo Fiance in CSV format (note, it seems down in 2018-09)
func fetchExchangeRateCSV(fromCurrency: String,  toCurrency: String) -> Double {
  let rateCsvData = getURLContent(url: "http://download.finance.yahoo.com/d/quotes.csv?s=" + fromCurrency + toCurrency + "=X&f=sl1d1t1ba&e=.csv")
  // print(rateCsvData)
  let csvParagraphs = rateCsvData.components(separatedBy: ",")
  return Double(csvParagraphs[1] as String)!
}

// get exchange rate in JSON format, you can get own key with your email
// http://free.currencyconverterapi.com/api/v5/convert?q=AUD_JPY,AUD_USD&compact=y&apiKey=9926c8a6102a16fa14f8
func fetchExchangeRateJSON(fromCurrency: String,  toCurrency: String) -> Double {
    let rateJSONData = getURLContent(url: "https://free.currencyconverterapi.com/api/v5/convert?q=" + fromCurrency + "_" + toCurrency + "&compact=y" + "&apiKey=9926c8a6102a16fa14f8")
    let decoder = JSONDecoder()
    let decodedJson: [String: [String: Double]] = try! decoder.decode([String: [String: Double]].self, from: rateJSONData.data(using: .utf8)!)
    // print(decodedJson);
    return decodedJson[fromCurrency + "_" + toCurrency]!["val"]!
}

// Another one
// https://www.alphavantage.co/query?function=CURRENCY_EXCHANGE_RATE&from_currency=AUD&to_currency=JPY&apikey=GV5PY1TT8Y255ZLE"

let exchangeRate = fetchExchangeRateJSON(fromCurrency: "AUD", toCurrency: "JPY")
// print(exchangeRate)

print("Enter the amount of Australian dollars: ", terminator: "")
var audAmountStr:String = readLine()!
var audAmount:Double = Double(audAmountStr)!
var jpyAmount = audAmount * exchangeRate
print("=> ¥" + String(format: "%0.2f", jpyAmount) )
