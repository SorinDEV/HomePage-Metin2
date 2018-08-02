<?php

require './libs/Smarty.class.php';
require './includes/pdo.functions.php';
require './includes/website.functions.php';


$smarty = new Smarty;
$axsorin = new AXSorinDev;

$smarty->force_compile = false;
$smarty->debugging = false;
$smarty->caching = true;
$smarty->cache_lifetime = 604800;

		
/// Homepage Setup
$smarty->assign("http", $axsorin->https($cs[0]->https_or_http), true);
$smarty->assign("clasament",$axsorin->clasamenttop10(), true);
$smarty->assign("noutati",$axsorin->noutati(), true);
$smarty->assign("cookie",$_COOKIE, true);
$smarty->assign("settings", $cs[0], true);
$smarty->assign("LANG", $axsorin->lang(), true);

if(isset($_COOKIE['conectat'])) {
$smarty->assign("logged", 'conectat', true);
} else {
	$smarty->assign("logged", 'neconectat', true);

}


$smarty->setTemplateDir('./templates/'.$cs[0]->template.'');
$smarty->display('download.tpl');

