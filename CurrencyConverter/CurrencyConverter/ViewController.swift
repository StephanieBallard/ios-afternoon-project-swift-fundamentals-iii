//
// ViewController.swift
// CurrencyConverter
//
// Created by Ben Gohlke on 8/7/19.
// Copyright © 2019 Lambda School. All rights reserved.
//
import UIKit
enum Currency {
  case cad
  case mxn
}
class ViewController: UIViewController {
   
  // MARK: - Outlets/Properties
  var currency: Currency = .cad
  let canadianDollars = 1.32
  let mexicanPesos = 19.37
   
  @IBOutlet weak var fromCurrencyTextField: UITextField!
  @IBOutlet weak var toCurrencyTextField: UITextField!
   
  @IBOutlet weak var toCurrencyLabel: UILabel!
   
  @IBOutlet weak var cadButton: UIButton!
  @IBOutlet weak var mxnButton: UIButton!
  // MARK: - Actions
   
 @IBAction func convertButtonTapped(_ sender: Any) {
   guard let dollarsString = fromCurrencyTextField.text,
    let dollars = Double(dollarsString) else { return }
     
   let convertedCurrency = convert(dollars: dollars)
    
   toCurrencyTextField.text = "$\(convertedCurrency)"
  }
   
  @IBAction func cadButtonTapped(_ sender: UIButton) {
    cadButton.isSelected.toggle()
    mxnButton.isSelected.toggle()
    if cadButton.isSelected == true {
      currency = .cad
    toCurrencyLabel.text = "Currency (CAD)"
       
    }
  }
   
  @IBAction func mxnButtonTapped(_ sender: UIButton) {
    mxnButton.isSelected.toggle()
    cadButton.isSelected.toggle()
    if mxnButton.isSelected == true {
      currency = .mxn
     toCurrencyLabel.text = "Currency (MXN)"
       
    }
  }
  
   
  // MARK: - Helper Methods
   
  func convert(dollars: Double) -> Double {
    switch currency {
    case .cad:
      return dollars * canadianDollars
    case .mxn:
      return dollars * mexicanPesos
    }
  }
}

Ciara CC Beitel has notifications turned off
