<?php

require("relative.php");
require(realpath("realpath.php"));
require(dirname(__FILE__) . "/dirname.php");
require(__DIR__ . "/dir.php");
require("vendor/autoload.php");

var_dump(__FILE__);
var_dump(realpath(__FILE__));

dump(get_included_files());