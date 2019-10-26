var equipment = {};
var EquipmentsInfo = JSON.parse(
	'[{\"__type__\": \"EquipmentInfo\",\"ProductID\": \"HT-1251\",\"Price\": \"989\", \"RequestedLoc\" : \"Building 01\", \"EquipmentType\": \"Notebook\",\"ProdDesc\": \"All New Astro Laptop 1516\",\"Currency\": \"EUR\"},{ \"__type__\": \"EquipmentInfo\",\"ProductID\": \"HT-1096\",\"Price\": \"35.92\",\"RequestedLoc\" : \"Building 01\",\"EquipmentType\": \"Audio and Video\",\"ProdDesc\": \"Lovely Sound 5.1\",\"Currency\": \"EUR\"},{\"__type__\": \"EquipmentInfo\",\"ProductID\": \"HT-1119\",\"Price\": \"6.90\",\"RequestedLoc\" : \"Building 01\",\"EquipmentType\": \"Cables and Accessories\",\"ProdDesc\": \"Notebook Lock\",\"Currency\": \"EUR\"}]'
);
equipment.EquipmentsInfo = EquipmentsInfo;
$.context.equipment = equipment;