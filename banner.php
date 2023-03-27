<?php

require_once 'DB.php';

function random_pic($dir = 'imgs')
{
    $files = glob($dir . '/*.*');
    $file = array_rand($files);
    return $files[$file];
}

$db = new DB();
$conn = $db->getConnection();

$ip_address = $_SERVER['REMOTE_ADDR'];
$user_agent = $_SERVER['HTTP_USER_AGENT'];
$view_date = date("Y-m-d H:i:s");
$page_url = $_SERVER['HTTP_REFERER'];

$sql = "SELECT * FROM view_count WHERE ip_address = '$ip_address' AND user_agent = '$user_agent' AND page_url = '$page_url'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);
    $id = $row['id'];
    $views_count = $row['views_count'] + 1;
    $sql = "UPDATE view_count SET view_date = '$view_date', views_count = $views_count WHERE id = $id";
    mysqli_query($conn, $sql);
} else {
    $views_count = 1;
    $sql = "INSERT INTO view_count (ip_address, user_agent, view_date, page_url, views_count) VALUES ('$ip_address', '$user_agent', '$view_date', '$page_url', $views_count)";
    mysqli_query($conn, $sql);
}

$db->closeConnection();

header('Content-type: image/jpeg');
readfile(random_pic());
