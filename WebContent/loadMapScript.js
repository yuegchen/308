function getMapData() {
	var properties = geojsonStateData.features;
	var toReturn = [];
	for (var i = properties.length - 1; i >= 0; i--) {
		var precinctName = properties[i].properties.Precinct;
		var precinctID = properties[i].properties.PrecinctID;
		var CD = properties[i].properties.CongDist;
		var geometry = properties[i].geometry.coordinates;
		var precinctInfo = {"name": precinctName, "pid": precinctID, "cd": CD, "geometry": geometry};
		toReturn.push(precinctInfo);
	}
	return toReturn
}
