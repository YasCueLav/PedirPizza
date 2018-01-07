//
//  ViewTamanio.swift
//  PedirPizzaP
//
//  Created by Yasmin Cueva Lavezzo on 7/1/18.
//  Copyright © 2018 Yasmin Cueva Lavezzo. All rights reserved.
//

import UIKit

class ViewTamanio: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var lblTam: UITextField!
    @IBOutlet weak var btnSig: UIButton!
    @IBOutlet weak var scroll: UIScrollView!
    
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
        btnSig.resignFirstResponder()
        scroll.resignFirstResponder()
        lblTam.resignFirstResponder()
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
        let resultado = tam()
        let sigVista = segue.destinationViewController as! ViewMasa
        sigVista.tam=resultado
    }
    
    func tam () -> String {
        let tamanio:String
        print("\(tamanio)")
        return tamanio
    }

}
