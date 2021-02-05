<?php namespace Project\Controllers;
use Import,Cart;

class Initialize extends Controller
{
    /**
     * The codes to run at startup.
     * It enters the circuit before all controllers. 
     * You can change this setting in Config/Starting.php file.
     */

   
    public function main(){
        # The theme is activated.
        # Location: Resources/Themes/Default/
      
       if (CURRENT_CONTROLLER == 'Maintance') {
           Theme::active('Default');
        }else{
            Theme::active('OneTech');
            Masterpage::headPage('Assets/head')
                  ->bodyPage('Assets/body');
        }
    }
}