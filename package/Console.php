<?php

namespace VisualKit;


use Doton\Cli\Console as CliConsole;
use Doton\Cli\Terminal;
use Doton\Core\Utilities\CoreAssetsTemplate;

use const Doton\DOTON_NAME;
use const Doton\DOTON_SERIE;
use const Doton\DOTON_VERSION;





  

class Console{



    const NAME = "Doton VisualKit";

    const VERSION = "0.0.2";

    const SERIE = "divina'sententia";
    



    static public function template( string $name ){

        return dirname( __DIR__ ) . '/templates/doton.visualkit.' . $name . '.htm';
        
    }
    

    static public function notice( string $label, mixed $input, bool $exit = true ) {

        return self::set($label, $input, $exit, 'notice');

    }


    static public function Warning( string $label, mixed $input, bool $exit = true ) {

        return self::set($label, $input, $exit, 'warning');

    }


    static public function Error( string $label, mixed $input, bool $exit = true ) {

        return self::set($label, $input, $exit, 'error');

    }


    static public function Success( string $label, mixed $input, bool $exit = true ) {

        return self::set($label, $input, $exit, 'success');

    }

    static public function log( string $label, mixed $input, bool $exit = true ) {

        return self::set($label, $input, $exit, 'log');

    }

    static public function info( string $label, mixed $input, bool $exit = true ) {

        return self::set($label, $input, $exit, 'info');

    }

    // static public function getColor( string $type ){
        
    //     switch( $type ){

    //         case 'log': return '#8200BA';

    //         case 'info': return '#525252';

    //         case 'notice': return '#005DBA';

    //         case 'warning': return '#918D01';

    //         case 'error': return '#BA002B';

    //         case 'success': return '#00BA60';

    //     }

    // }




    static public function set( 
        
        string $label, 
        
        mixed $input, 
        
        bool $exit = true,

        string | null $type = null,

    ) {

        $isterminal = Terminal::Is();

        $powered = ( DOTON_NAME . " " . DOTON_VERSION . " / " . DOTON_SERIE ) . PHP_EOL .

            ( self::NAME . " " .  self::VERSION . " / " . self::SERIE ) . PHP_EOL . 

            ( 'PHP ' . PHP_VERSION . ", " .  PHP_OS ) . PHP_EOL

        ;
        
        if( !$isterminal ){


            $color = Color::get( $type ?: '' );

            $template = new CoreAssetsTemplate(
                
                self::template('console'), 
                
                [

                    'LABEL' => $label,

                    'CONTENT' => $input,

                    'POWERED' => $powered,

                    'CONSOLE_COLOR' => $color
                    
                ] 
            
            );

            echo $template->toString();
        
        }

        if( $isterminal ){

            $type = ucfirst( $type );

            $type = method_exists(CliConsole::class, $type) ? $type : 'Info';
            
            CliConsole::{ $type }( 
            
                $label, 
            
                $input, 
            
                $powered 

            );
            
        }
        
    
        if( $exit === true ){ exit(1); }
        

        return self::class;
        
    }

}

  





