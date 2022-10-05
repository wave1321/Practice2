//
//  ViewController.swift
//  Practice2
//
//  Created by Admin on 05.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let picker = UIPickerView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.center = self.view.center
        
        picker.dataSource = self
        picker.delegate = self
        
        self.view.addSubview(picker)
        
        
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UIPickerViewDataSource {
    
    //Сколько компонентов выводить
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //Сколько всего компонентов в списке
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    
}

extension ViewController: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let result = "row = \(row)"
        
        return result
    }
    
}
