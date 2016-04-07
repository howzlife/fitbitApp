function loadProfilejs(){
	var cal = new CalHeatMap();
  	cal.init({
    "itemSelector" :"#heatmap-chart-1",
    "domain": "month", 
    "subdomain": "x_day", 
    "start": new Date('05-01-2015'),
    "range": 12, 
    "tooltip": true, 
    "legend" : [1000, 1500, 2000, 2500],
    "itemName": ["calorie", "calories"],
    "dataType": "json",
    "data": "/dashboard/burnedCaloriedata/fitbit|4DNVLF", 
      legendColors: {
        min: "white",
        max: "slateblue",
        empty: "white"
        // Will use the CSS for the missing keys
      }
  });
	var cal2 = new CalHeatMap();
  	cal2.init({
    "domain": "month", 
    "subdomain": "x_day", 
    "start": new Date('05-01-2015'),
    "range": 12, 
    "tooltip": true, 
    "legend" : [1000, 1500, 2000, 2500],
    "itemName": ["calorie", "calories"],
    "dataType": "json",
    "data": "/dashboard/consumedCaloriedata/fitbit|4DNVLF", 
      legendColors: {
        min: "white",
        max: "steelblue",
        empty: "white"
        // Will use the CSS for the missing keys
      }
  });
	var follower = $(".temp_information").data("follower"); 
	var followee = $(".temp_information").data("followee");
	var name = $(".temp_information").data("name");

	$("#addToFitFam").click(function() {
		$.ajax({
			url: "/profile/add_to_fitfam",
			type: "POST",
			data: {
				following_user: follower, 
				followee_user: followee
			}, 
			success: function(result, status) {
				alert("Success! " + name + " was added to your FitFam!");
				$("#addToFitFam").css("background", "#B24100"); 
				$("#addToFitFam").text("Added!");
			}, 
			error: function(result, status) {
				alert("Error, " + result)
			}
		})
	})
}