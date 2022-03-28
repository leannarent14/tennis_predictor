// Want to show Player, birthplace, Age, handness, flag-code, 
function init() {
  // select the dropdown menu with an id of #selDataset. Dropdown is assigned to the variable selector
  var dropDown = d3.select("#selDataset");

  // d3.json() used to read samples.json. All data from samples.json is assigned the (arbitrary) argument name 'data'
  d3.json("players.json").then((data) => {
    console.log(data);

    // The names array contains ID numbers of all participants. The variable 'sampleNames' is assigned to this array
    var names = data;

    // forEach element in the array, a dropdown menu option is appended
    names.forEach((sample) => { 
    //console.log(sample.player_id)
      //debugger;
      dropDown
        .append("option")
        .text(sample['first_name'] + ' ' + sample['last_name'] )
        .property("value", sample.player_id);
    });
})}

init();

function playerChanged(newPlayer) {
  // demographic information
  playerInfo(newPlayer);
}

function playerInfo(nameSample) {
  // d3.json pulls in the entire samples.json referred to as 'data'
  d3.json("players.json").then((data) => {
    // metadata array in the dataset (data.metadata) is assigned the var metadata
    var metadata = data;
    // filter on the metadata array. filters object in the array whose id matches the ID# passed into buildMetadata
    var resultArray = metadata.filter(nameArray => nameArray.player_id == nameSample);
    // filter method is returned as an array. first item in array selected and assigned the var result
    var result = resultArray[0];
    
    // Demographic Info panel, d3.select used to select this <div>, and the variable PANEL is assigned to it
    var PANEL = d3.select("#sample-data");

    // contents of the panel are cleared when another ID number is chosen from the dropdown menu
    PANEL.html("");
    // append and text are chained to append a H6 heading and print the location to the panel
    PANEL.append("h6").text(result.birthplace);
    PANEL.append("h6").text(`Country: ${result.flag_code}`);
    // Use either if or manual
    Object.entries(result).forEach(([key, value]) => {
      if (key=="player_id"){
        PANEL.append("h6").text(`${key.toUpperCase()}: ${value}`);
      }
      
    });
  });
}