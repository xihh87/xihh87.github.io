<?
$defaultdata = array( "showpassword"=>"no", "bgcolor"=>"#ffffff");

$encoded="ClVLIh4ASCsCBE8lAxMacFMZV2hdVVotEhhUJQNVAmhSEV4sFxFeaAw=";
$decoded=base64_decode($encoded);

//print $decoded;

$defaultdata = array( "showpassword"=>"no", "bgcolor"=>"#ffffff");
$json = json_encode($defaultdata);

function strxor($a,$b) {
	$n = strlen($a);
	for($i=0; $i<$n; $i++) {
		$out .= $a[$i] ^ $b[$i];
	}
	return $out;
};

$key = strxor($decoded, $json);
print $key."\n";
?>
