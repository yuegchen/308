// method that we will use to update

/*
let xhr = new XMLHttpRequest();
// Change URL later, but can't do things like this for local
xhr.open('GET', 'http://leafletjs.com/examples/choropleth/us-states.js');
xhr.setRequestHeader('Content-Type', 'application/json');
xhr.onload = function() {
	if (xhr.status === 200) {
		L.geoJSON(JSON.parse(xhr.responseText)).addTo(map);
	}
};
xhr.send()*/

//console.log(typeof(dataTwentySixteen));
//console.log(typeof(geojsonData));
//console.log(typeof(stateSyntax));

// In the completed build, this information will be specified as a settings JSON file
districtColors = ['#00FF00', '#FF00FF', '#00FFFF', '#FFFF00', '#70DB93', '#5C3317', '#9F5F9F', '#B5A642', '#D9D919', '#A62A2A', '#8C7853', '#A67D3D', '#5F9F9F', '#D98719', '#B87333', '#FF7F00', '#42426F', '#5C4033', '#2F4F2F', '#4A766E', '#4F4F2F', '#9932CD', '#871F78', '#6B238E', '#2F4F4F', '#97694F', '#7093DB', '#855E42', '#545454', '#856363', '#D19275', '#8E2323', '#F5CCB0', '#238E23', '#CD7F32', '#DBDB70', '#C0C0C0', '#527F76', '#93DB70', '#215E21', '#4E2F2F', '#9F9F5F', '#C0D9D9', '#A8A8A8', '#8F8FBD', '#E9C2A6', '#32CD32', '#E47833', '#8E236B', '#32CD99', '#3232CD', '#6B8E23', '#EAEAAE', '#9370DB', '#426F42', '#7F00FF', '#7FFF00', '#70DBDB', '#DB7093', '#A68064', '#2F2F4F', '#23238E', '#4D4DFF', '#FF6EC7', '#00009C', '#EBC79E', '#CFB53B', '#FF7F00', '#FF2400', '#DB70DB', '#8FBC8F', '#BC8F8F', '#EAADEA', '#D9D9F3', '#5959AB', '#6F4242', '#8C1717', '#238E68', '#6B4226', '#8E6B23', '#E6E8FA', '#3299CC', '#007FFF', '#FF1CAE', '#00FF7F', '#236B8E', '#38B0DE', '#DB9370', '#D8BFD8', '#ADEAEA', '#5C4033', '#CDCDCD', '#4F2F4F', '#CC3299', '#D8D8BF', '#99CC32'];
selectionColor = '#FFAA00';
gopVote_NAME = "Republican Vote";
demVote_NAME = "Democrat Vote";
precinctID_NAME = "Precinct ID";
precinctOrigDist_NAME = "Original District";
panel_width = 300;

// This varies by geoJSON file. It could be added to each of them as a property. Given that their formats may differ slightly, it may be easier to alter the formats. We can do this once
// more states are loaded
precinctIDString_GEO = "PrecinctID";

// In the completed build, this information will be specified as a state specific JSON file

// Session setting variables (hard - coded for now)
getColor = getColor_District; // Will need to reload style after changing
selectedDistrict = -1;

// GLOBAL VARIABLES
var precinctData = {};
var precinctDistricts = {}; // A dictionary that maps precinct ID to district number
var geojson;

// ==============================================================================
// ===== START OF UI PANEL FUNCTIONS ============================================
// ==============================================================================

// Returns a dictionary mapping district numbers to colors.
function getDistrictColors() {
	var toReturn = {};

	var districts = Object.values(precinctDistricts);
	for (var i = 0; i < districts.length; i++){
		var cur_dist = districts[i];
		if (cur_dist != null && toReturn[cur_dist] == undefined) {
			toReturn[cur_dist] = districtColors[cur_dist - 1];
		}
	}
	return toReturn;
}

// ==============================================================================
// ===== END OF UI PANEL FUNCTIONS ==============================================
// ==============================================================================
function panelSelectDistrict(district) {
    setSelectedDistrict(district);

    // Mark active button
    buttons_list = document.getElementsByClassName("select_button");
    for (i = 0; i < buttons_list.length; i++) {
        buttons_list[i].className = buttons_list[i].className.replace(" active", "");
    }

    document.getElementById("dsb" + district).className += " active";
    console.log(document.getElementById("dsb" + district).className);
}
// ==============================================================================
// ===== START OF NON - LEAFLET FUNCTIONS =======================================
// ==============================================================================

// Get the HTML code for the info panel that represents a district
function getInfo(PrecinctID) {
	var myData = precinctData[PrecinctID];
	var toReturn = '';
	var statNames = Object.keys(stateSyntax);
	for (var i = 0; i < statNames.length; i++){
		var statName = statNames[i];
		toReturn += "<br>";
		toReturn += "<b>" + statName + "</b>: ";
		toReturn += myData[stateSyntax[statName]];
	}
	toReturn += "<br><b>District</b>: " + precinctDistricts[myData[stateSyntax[precinctID_NAME]]];
	return toReturn;
}

function redraw() {
	var ml = geojson.getLayers();
	for (var i = 0; i < ml.length; i++) {
    	geojson.resetStyle(ml[i]);
	}
}

// Compare vote data and paint a voting precinct red or blue.
function getColor_Party(precinctID) {
	var distData = precinctData[precinctID];
	if (distData != undefined) {
		gopVotes = distData.USPRSR;
		demVotes = distData.USPRSDFL;
		if (gopVotes > demVotes){
			return ['#880000'];
		}
		return ['#000088'];
	}
	return '#000000';
}

// Paint voting precincts by their district
function getColor_District(precinctID) {
	var myDistrict = precinctDistricts[precinctID];
	if (myDistrict) {
		return districtColors[myDistrict - 1];
	}
	return '#000000';
}

// Set the district of a voting precinct
function setPrecinctDistrict(precinctID, district) {
	precinctDistricts[precinctID] = district;
	redraw();
}

// ==============================================================================
// ===== END OF NON - LEAFLET FUNCTIONS =========================================
// ==============================================================================

// Create a dictionary typing precinct names to JSON data and populate it
for (var i = 0; i < dataTwentySixteen.length; i++) {
	var cur = dataTwentySixteen[i];
	// Tie precinct ID to stats;
	precinctData[cur[stateSyntax[precinctID_NAME]]] = cur;
	precinctDistricts[cur[stateSyntax[precinctID_NAME]]] = cur[stateSyntax[precinctOrigDist_NAME]];
}

// ==============================================================================
// ===== INTERFACE FUNCTIONS ====================================================
// ==============================================================================

// Set the function used to color the voting precincts
function setColoring(func) {
	getColor = func;
	redraw();
}

function setSelectedDistrict(district) {
	selectedDistrict = district;
}

// ==============================================================================
// ===== END OF INTERFACE FUNCTIONS =============================================
// ==============================================================================

// ==============================================================================
// ===== LEAFLET INITIALIZATION =================================================
// ==============================================================================

var myMap = L.map('mapid', {
	attributionControl: false
}).setView([39.756214, -100.994031], 4);

// Add an info control
var info = L.control({position: 'bottomright'});

L.tileLayer('http://{s}.tiles.wmflabs.org/bw-mapnik/{z}/{x}/{y}.png', {
	maxZoom: 18,
	attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(myMap);

function style(feature) {
	return {
		fillColor: getColor(feature.properties[precinctIDString_GEO]),
		weight: 1,
		opacity: 1,
		color: getColor(feature.properties[precinctIDString_GEO]),
		fillOpacity: 0.7
	};
}

function highlightFeature(e) {
	var layer = e.target;
	layer.setStyle({
		weight: 2,
		color: selectionColor,
		dashArray: '',
		fillOpacity: 0.7
	});

	if (!L.Browser.ie && !L.Browser.opera && !L.Browser.edge) {
		layer.bringToFront();
	}
	info.update(layer.feature.properties);
}

function resetHighlight(e) {
	geojson.resetStyle(e.target);
	// Clear information display
	info.update();
}

function onClickFeature(e) {
	//myMap.fitBounds(e.target.getBounds());
	if (selectedDistrict != -1) {
		var targetID = e.target.feature.properties[precinctIDString_GEO];
		setPrecinctDistrict(targetID, selectedDistrict);
	}
}

function onEachFeature(feature, layer) {
	layer.on({
		mouseover: highlightFeature,
		mouseout: resetHighlight,
		click: onClickFeature
	});
}

geojson = L.geoJSON(geojsonData, {
	style: style, 
	onEachFeature: onEachFeature
});
geojson.addTo(myMap);

// Set up info control

info.onAdd = function (myMap) {
	this._div = L.DomUtil.create('div', 'info'); // Create div w/ class 'info'
	this.update();
	return this._div;
};

info.update = function (props) {
	this._div.innerHTML = '<h4>Precinct Stats</h4>' + (props ? getInfo(props[precinctIDString_GEO]) : 'Hover over a polling district');
};

info.addTo(myMap);

// ==============================================================================
// ===== END OF LEAFLET INITIALIZATION ==========================================
// ==============================================================================

