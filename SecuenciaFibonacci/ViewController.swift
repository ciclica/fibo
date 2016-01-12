//
//  ViewController.swift
//  SecuenciaFibonacci
//
//  Created by Ciclica on 1/4/16.
//  Copyright (c) 2016 Ciclica. All rights reserved.
//

import UIKit
import finonacci

class ViewController: UIViewController, UITextFieldDelegate {

    
    //  tres variables text fiels, una para el ingreso del numero, otra para el resultado y la utlima para deplegar la serie...
    @IBOutlet weak var txt_Numero: UITextField!
    @IBOutlet weak var txt_resultado: UITextView!
    @IBOutlet weak var txt_serie: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //  delegamos el textView para su contol
        txt_Numero.delegate = self
        txt_Numero.keyboardType = UIKeyboardType.NumberPad
        
        
        
    }
    
    func textFieldShouldbeginEditing(textField: UITextField) -> Bool {
           // println("Allow editing")
            return true
    }
    
    func textFieldDidBeginEditing(textField: UITextField)  {
           // println("editando")
    }
    
    func textFieldidEndEditing(textField: UITextField) -> Bool {
           // println(" fin edicop")
        return true
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
           // println("enter as presionado")
            return true
    }
    
    // controla el largo del textfield en este caso lo dejaremos hasta 8 caracteres..
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool
    {
        
        var length = (count(textField.text) +  count(string))
        if (length > 8) {
            return false
        } else {
            return true
        
        
        }
    }
    
    func textFieldShouldClear(textField: UITextField) -> Bool {
        println("Claear")
        return true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // boton de la accion verificar...
    @IBAction func btn_Verificar(sender: AnyObject) {
        

        var salida : String
        salida = ""
        var valor : Int
       
        
        //  consultamos el frameWorks la funccion validaFibo
        valor = txt_Numero.text.toInt()!
        var elnumero = Fibo(numero:valor).validaFibo()
        
        salida = "\(elnumero)"
        
        // mostramos el resultado si es 0 es numero no existe en la serie
        txt_resultado.text = salida
        
        //  desplegamos la serie fibo
        salida = Fibo(numero:valor).serie()
        
        txt_serie.text = salida
        
        
    }
}

