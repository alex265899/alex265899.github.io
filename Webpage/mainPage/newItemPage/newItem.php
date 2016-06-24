<?php
$handle = fopen('../inventoryCopy.xml', 'a');


$patternName = $_GET['patternName'];
$patternCategory = $_GET['patternCategory'];
$patternSize = $_GET['patternSize'];
$patternColors = $_GET['patternColors'];
$patternStitches = $_GET['patternStitches'];
$patternImage = $_GET['fileName'];

$xmlFile = '../inventoryCopy.xml';
$xml = simplexml_load_file($xmlFile);

$pattern = $xml->addChild('pattern');
$pattern->addChild("name", $patternName);
$pattern->addChild("category", $patternCategory);
$pattern->addChild("size", $patternSize);
$pattern->addChild("stitches", $patternStitches);
$pattern->addChild("colors", $patternColors);
$pattern->addChild("image", "../../EmbroideryPatternScans/".$patternImage);


$xml -> asXML($xmlFile);

?>