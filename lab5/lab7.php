<?php
$url = 'http://107.170.98.130/yr2/cache_yr2.txt';

$xml = new SimpleXMLElement(file_get_contents($url));

// pre tags to format nicely
echo '<pre>';
print_r($xml);
echo '</pre>';

?>