<?php 
    session_start();
    $host = "localhost";
    $dbname="qltt";
    $dbusername="root";
    $dbpw = "";
    $conn = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8",$dbusername,$dbpw);
    define('TABLE_WEBSETTING','web_settings');
    define('TABLE_SLIDESHOW','slideshows');
    define('TABLE_CATEGORY','categories');
    define('TABLE_PRODUCT','products');
    define('TABLE_BRAND','brands');
    
    define('SITE_URL','http://localhost/qltt/');
    
    $ADMIN_URL = "http://localhost/qltt/admin/";
    $AP_URL = "http://localhost/qltt/ap/";
    $ADMIN_ASSET_URL = "http://localhost/qltt/admin/adminlte/";

    function getSimpleQuery($sql, $isAll = false){
        global $conn;
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        if($isAll){
            return $stmt->fetchAll();
        }
        return $stmt->fetch();
    }
    const USER_ROLES = [
        "admin" => 500,
        "moderator" => 300,
        "member" => 1
    ];
?>