<?php namespace ZN\Authentication\Tests;
/**
 * ZN PHP Web Framework
 * 
 * "Simplicity is the ultimate sophistication." ~ Da Vinci
 * 
 * @package ZN
 * @license MIT [http://opensource.org/licenses/MIT]
 * @author  Ozan UYKUN [ozan@znframework.com]
 */

use ZN\Controller\UnitTest;

class User extends UnitTest
{
    const unit =
    [
        'class'   => 'User',
        'methods' => 
        [
            'register' => [['username' => 'exampleuser', 'password' => 'examplepassword']],
            'login'    => ['exampleuser', 'examplepassword'],
            'data'     => [],
            'update'   => ['examplepassword', 'examplepassword2', 'examplepassword2'],
            'logout'   => []
        ]
    ];
}
