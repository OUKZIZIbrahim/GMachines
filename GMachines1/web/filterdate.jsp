<%-- 
    Document   : filterdate
    Created on : 20-Jan-2022, 23:27:03
    Author     : ibrah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style>
    .dark-edition .btn.btn-success{
    color: #fff;
    background-color: #7BB992;
    border-color: #15522C;
    border-radius: 30px;
    margin: auto;
    margin-left: 130px;
    margin-top: 10px;
    }
    .dark-edition .btn.btn-success:hover{
        background-color: #376844;
    }
    .dark-edition .btn.btn-warning{
        
        border-radius: 30px;
    margin: auto;
    margin-left: 10px;
    margin-top: 10px;
    }
    .dark-edition .btn.btn-danger{
        border-radius: 30px;
    }
    .dark-edition .btn.btn-info{
         border-radius: 30px;
    }
    .card-title{
        text-align: center;
    }
</style>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    </head>
    <body class="dark-edition">
        <div class="wrapper ">
<%@ include file="/templates/menu.jsp" %>
<div class="main-panel ps-container ps-theme-default ps-active-y" data-ps-id="b3dd0a2b-3d79-728c-2e86-5aa68e2f9f06">
    <%@ include file="/templates/header.jsp" %>
    <div class="content">
     <div class="container-fluid">
          <div class="row">
                <div class="col-lg-9 col-md-18">
    <div class="card">
      <div class="card-header card-header-primary">
        <h4 class="card-title">Liste des Machines</h4>
        <p class="card-category"></p>
      </div>
      <div class="card-body table-responsive">
        <table class="table table-hover">
          <thead class="text-warning">
            <tr>
                <th>ID</th>
                <th>Référence</th>
                <th>Date Achat</th>
                <th>Prix</th>
            </tr></thead>
          <tbody id="content">
           
          </tbody>
        </table>
      </div>
    </div>
  </div>
            <div class="col-md-3">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Rechercher  machine entre deux dates</h4>
                  <p class="card-category"></p>
                </div>
                <div class="card-body">
                  
                      <form>
                            <input type="hidden" name="id"
                                   value="<%=request.getParameter("id") == null ? "" : request.getParameter("id")%>"
                                   size="id" />
                            <div >
                                <label for="dateAchat1">Premier date :</label> 
                                        <input type="date"  class="form-control p_input" name="date1" id="dateAchat1"/>
                            </div>

                            <div >
                                <label for="dateAchat2">Deuxième date:</label> 
                                <input type="date" class="form-control p_input" name="date2" id="dateAchat2"/>
                            </div>

                            <button id="chercher" type="button" class="btn btn-success">Afficher</button>
                        </form>
              </div>
            </div>
          </div>
                                
                                
                              
                                
                                
        </div>
         
       </div>  
       </div> 
 <%@ include file="/templates/footer.jsp" %>
</div>
        </div>
        <script src="lib/jquery-3.6.0.min.js" type="text/javascript"></script>
        <script src="js/filterMPM.js" type="text/javascript"></script>
    </body>
</html>