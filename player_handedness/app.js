// import the data from players.js
const tableData = atp_players;

// Reference the HTML table using d3
var tbody = d3.select("tbody");

// Building table function
function buildTable(data) {
    // First, clear out any existing data
    tbody.html("");
  
    // Next, loop through each object in the data
    // and append a row and cells for each value in the row
    players.forEach((dataRow) => {
      // Append a row to the table body
      let row = tbody.append("tr");
  
      // Loop through each field in the dataRow and add
      // each value as a table cell (td)
      Object.values(dataRow).forEach((val) => {
        let cell = row.append("td");
        cell.text(val);
        }
      );
    });
  }

  function handleClick() {
    // Grab the 'hand' value from the filter
    let hand = d3.select("hand").property("value");
    let filteredData = tableData;
  
     // Check to see if a hand was entered and filter the
    // data using that hand.
    if (hand) {
      // Apply `filter` to the table data to only keep the
      // rows where the `hand` value matches the filter value
      filteredData = filteredData.filter(row => row.hand === date);
    };
  
     // Rebuild the table using the filtered data
    // @NOTE: If no hand was entered, then filteredData will
    // just be the original tableData.
    buildTable(filteredData);

    // Attach an event to listen for the form button
    d3.selectAll("#filter-btn").on("click", handleClick);

    // Build the table when the page loads
    buildTable(tableData);
  };