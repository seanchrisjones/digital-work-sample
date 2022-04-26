//
//  Parsing.swift
//  designerBrands
//
//  Created by Developer on 4/26/22.
//

import Foundation

class ProductParser {
    var priceTypes: [PriceType] = []
    var products: [ProductItem] = []
    func parse(document: String) -> String {
        let lines = document.split(separator: "\n")
        for line in lines {
            parse(line: String(line))
        }
        let report = ReportGenerator.getReport(productData: self)
        return report
    }
    
    func parse(line: String) {
        let values = line.split(separator: ",")
        guard let entryType = values.first else {
            return
        }
        if entryType == "Type" {
            let priceType = PriceType(input: line)
            priceTypes.append(priceType!)
        } else if entryType == "Product" {
            let productItem = ProductItem(input: line)
            products.append(productItem!)
        }
    }
    
}
