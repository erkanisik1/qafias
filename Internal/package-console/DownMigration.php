<?php namespace ZN\Console;
/**
 * ZN PHP Web Framework
 * 
 * "Simplicity is the ultimate sophistication." ~ Da Vinci
 * 
 * @package ZN
 * @license MIT [http://opensource.org/licenses/MIT]
 * @author  Ozan UYKUN [ozan@znframework.com]
 */

use Migration;

/**
 * @command down-migration
 * @description down-migration {migration-name} 
 */
class DownMigration
{
    /**
     * Magic constructor
     * 
     * @param string $command
     * 
     * @return void
     */
    public function __construct($command, $parameters)
    {   
        $migration = 'Migrate' . $command;

        new Result($migration::down($command, ...$parameters));
    }
}