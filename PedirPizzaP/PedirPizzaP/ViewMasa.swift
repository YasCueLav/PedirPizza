//
//  ViewMasa.swift
//  PedirPizzaP
//
//  Created by Yasmin Cueva Lavezzo on 7/1/18.
//  Copyright © 2018 Yasmin Cueva Lavezzo. All rights reserved.
//

import UIKit

class ViewMasa: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var lblMasa: UITextField!
    @IBOutlet weak var scroll: UIScrollView!
    
    var tam:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func textFieldDoneEditing(sender:UITextField){
        sender.resignFirstResponder() //desaparece teclado
    }
    @IBAction func backgroundTap (sender:UIControl){
        lblMasa.resignFirstResponder()
        scroll.resignFirstResponder()
    }
    @IBAction func textFieldDidBeginEditing(textField: UITextField) {
        var punto: CGPoint
        punto = CGPointMake(0, textField.frame.origin.y-50)
        self.scroll.setContentOffset(punto, animated: true)
    }
    @IBAction func textFieldDidEndEditing (textField: UITextField) {
        self.scroll.setContentOffset(CGPointZero, animated: true)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultado = tamMas()
        let sigVista = segue.destinationViewController as! ViewMasa
        sigVista.   =resultado
    }
    
    func tamMas () -> String {
        let tamanio:String = tam
        let masa:String
        print("\(tamanio) \(masa)")
        return masa
    }
}

/*
class VistaResultadoViewController: UIViewController {

@IBOutlet weak var lblResultado: UILabel!

var idiceIM:Double = 0

override func viewWillAppear(animated: Bool) {
lblResultado.text = String(idiceIM)
}

override func viewDidLoad() {
super.viewDidLoad()

// Do any additional setup after loading the view.
}

override func didReceiveMemoryWarning() {
super.didReceiveMemoryWarning()
// Dispose of any resources that can be recreated.
}


/*
// MARK: - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
// Get the new view controller using segue.destinationViewController.
// Pass the selected object to the new view controller.
}
*/

}


*/
