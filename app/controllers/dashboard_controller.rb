class DashboardController < SecuredController
  def show
    @user = session[:userinfo]
    @session = session
    @chartWater = Fusioncharts::Chart.new({
        width: "200",
        height: "300",
        type: "mscolumn2d",
        renderAt: "chartContainer1",
        dataSource: {
            chart: {
            caption: "Glasses of Water per day",
            subCaption: "Last Week",
            xAxisname: "Day",
            yAxisName: "Amount",
            numberPrefix: "",
            theme: "fint",
            exportEnabled: "1",
            },
            categories: [{
                    category: [
                        { label: "Mon" },
                        { label: "Tue" },
                        { label: "Wed" },
                        { label: "Thur" }, 
                        { label: "Fri" },
                        { label: "Sat" },
                        { label: "Sun" },
                    ]
                }],
                dataset: [
                    {
                        seriesname: "Last Week",
                        data: [
                            { value: "5" },
                            { value: "4" },
                            { value: "5" },
                            { value: "3" },
                            { value: "4" },
                            { value: "5" },
                            { value: "3" }
                        ]
                    },
                    {
                        seriesname: "This Week",
                        data: [
                            { value: "8" },
                            { value: "6" },
                            { value: "7" },
                            { value: "4" },
                            { value: "6" },
                            { value: "7" },
                            { value: "4" }
                        ]
                    }
              ]
        }
    })
@chartCalories = Fusioncharts::Chart.new({
        width: "400",
        height: "300",
        type: "mscolumn2d",
        renderAt: "chartContainer2",
        dataSource: {
            chart: {
            caption: "Calories Burned per Day",
            subCaption: "Last Week",
            xAxisname: "Day",
            yAxisName: "Calories",
            numberPrefix: "",
            theme: "fint",
            exportEnabled: "1",
            },
            categories: [{
                    category: [
                        { label: "Thur" }, 
                        { label: "Fri" },
                        { label: "Sat" },
                        { label: "Sun" },
                    ]
                }],
                dataset: [
                    {
                        seriesname: "Last Week",
                        data: [
                            { value: "1938" },
                            { value: "1723" },
                            { value: "2255" },
                            { value: "2513" }
                        ]
                    },
                    {
                        seriesname: "This Week",
                        data: [
                            { value: "1200" },
                            { value: "1523" },
                            { value: "2343" },
                            { value: "1923" }
                        ]
                    }
              ]
        }
    })
  end
end
