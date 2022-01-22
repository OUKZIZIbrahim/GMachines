<%-- 
    Document   : statistic
    Created on : 21-Jan-2022, 18:43:58
    Author     : ibrah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        .char11 chartjs-render-monitor{
            width: 500px;
            height: 300px;
        }  
    </style>
  <body class="dark-edition">
        
        
        <div class="wrapper ">
<%@ include file="/templates/menu.jsp" %>
<div class="main-panel ps-container ps-theme-default ps-active-y" data-ps-id="b3dd0a2b-3d79-728c-2e86-5aa68e2f9f06">
    <%@ include file="/templates/header.jsp" %>
    <div class="content">
     <div class="container-fluid">
          <div class="row">
              <div class="col-lg-9 col-md-18">
                   <div class="card-body" >
                        <div class="chartjs-size-monitor">
                        <div class="chartjs-size-monitor-expand">
                        <div class=""></div>

                        </div>
                        <div class="chartjs-size-monitor-shrink">
                        <div class=""></div>

                        </div>
                        </div>
                        <h4 class="card-title">Bar chart</h4>
                        <canvas id="barChart" style="height: 100px; display: block; width: 200px;" class="char11 chartjs-render-monitor" width="316" height="158" ></canvas>
                        </div>
              </div>
      

</div>
</div>          
                                
                                
        </div>
         
     
 <%@ include file="/templates/footer.jsp" %>
</div>
        </div>

<script src="js/chartjs.min.js" type="text/javascript"></script>
<script src="lib/jquery-3.6.0.min.js" type="text/javascript"></script>

<script>
        const marque=[];
    const machine = [];
    $(document).ready(function(){

            $.ajax({
            url: "chartController",

            method: 'POST',
            success: function(data) {

            for (var i = 0; i < data.length; i++) {

            marque.push(data[i].marque);
            machine.push(data[i].count);
            }
            machine.push(0);
            const ctx = document.getElementById('barChart').getContext('2d');

            const myChart = new Chart(ctx, {
            type: 'bar',
            data: {
            labels: marque,
            datasets: [{
            label: '# of Votes',
            data: machine,
            backgroundColor: [

            'rgba(31, 25, 89, 0.5)',
            'rgba(15, 90, 50, 0.5)',
            'rgba(85, 0, 0, 0.5)',
            'rgba(67, 17, 85, 0.2)',

            'rgba(212, 205, 106, 0.2)',
            'rgba(212, 145, 106, 0.2)'
            ],
            borderColor: [
            'rgba(31, 25, 89, 1)',
            'rgba(15, 90, 50, 1)',
            'rgba(85, 0, 0, 1)',
            'rgba(67, 17, 85, 1)',

            'rgba(212, 205, 106, 1)',
            'rgba(212, 145, 106, 1)'
            ],
            borderWidth: 1
            }]
            },
            options: {
            scales: {
            y: {
            beginAtZero: true
            }
            }
            }
            });
            }



            });
            });

</script>





    </body>
</html>