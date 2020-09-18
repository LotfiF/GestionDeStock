$(document).ready(function() {
	$("#tauxTva").on("keyup", function() {
		tvaKeyUpFunction();
	});
});

tvaKeyUpFunction = function() {
	var prixUnitaireHT = $("#prixUnitaireHT").val();
	var tauxTva = $("#tauxTva").val();
	var prixUnitaireTTC = parseFloat(parseFloat(prixUnitaireHT) * parseFloat(tauxTva) / 100 + parseFloat(prixUnitaireHT));
	$("#prixUnitaireTTC").val(prixUnitaireTTC);
}

