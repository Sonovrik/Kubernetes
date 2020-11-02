<?php
declare(strict_types=1);

$cfg['blowfish_secret'] = 'JS;MUGwL,Mbdpoquhrg0831h2:3$6dt9f28';
$i = 0;
$i++;
$cfg['Servers'][$i]['auth_type'] = 'cookie';
$cfg['Servers'][$i]['host'] = 'mysql-service';
$cfg['Servers'][$i]['port'] = '3306';
$cfg['Servers'][$i]['user'] = 'admin';
// $cfg['Servers'][$i]['password'] = 'mypass';
$cfg['Servers'][$i]['compress'] = false;
$cfg['Sevrers'][$i]['AllowNoPassword'] = true;
$cfg['AllowThirdPartyFraming'] = true;
$cfg['PmaAbsoluteUri_DisableWarning'] = TRUE;
$cfg['UploadDir'] = '';
$cfg['SaveDir'] = '';