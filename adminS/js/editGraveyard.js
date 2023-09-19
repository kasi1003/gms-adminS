// Fetch JSON data from the PHP script using jQuery's $.getJSON
$.getJSON("../php/editGraveyard.php", function (data) {
    // Iterate through the JSON data and populate the table
    var tableBody = $("#cemeteriesTableBody");

    $.each(data, function (index, cemetery) {
        var row = $("<tr>").attr("id", "clickable-row").css("cursor", "pointer");
        row.append($("<td>").text(cemetery.CemeteryName));
        row.append($("<td>").text(cemetery.Region));
        row.append($("<td>").text(cemetery.Town));
        row.append($("<td>").text(cemetery.NumberOfSections));
        row.append($("<td>").text(cemetery.TotalGraves));
        row.append($("<td>").text(cemetery.AvailableGraves));

        tableBody.append(row);
    });
});


