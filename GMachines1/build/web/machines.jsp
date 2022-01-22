<%-- 
    Document   : machines
    Created on : 3 déc. 2021, 08:50:36
    Author     : Lachgar
--%>

<%@page import="beans.Marque"%>
<%@page import="service.MarqueSerice"%>
<%@page import="beans.Machine"%>
<%@page import="service.MachineService"%>
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
    

    margin-top: 10px;
    margin-left: 100px;
    }
    .dark-edition .btn.btn-success:hover{
        background-color: #376844;
    }
    .dark-edition .btn.btn-warning{
        
        border-radius: 30px;

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
                <th>Marque</th>
                <th>Supprimer</th>
                <th>Modifier</th>
            </tr></thead>
          <tbody id="content">
            <%
                MachineService ms = new MachineService();
                for (Machine m : ms.findAll()) {
            %>
            <tr>
                <td><%= m.getId()%></td>
                <td><%= m.getReference()%></td>
                <td><%= m.getDateAchat()%></td>
                <td><%= m.getPrix()%></td>
                <td><%= m.getMarque()%></td>
               <td><a class="btn btn-danger" onclick="confirmer()" href="MachineController?id=<%=m.getId()%>&op=delete">Supprimer</a></td>
                                        <td><a class="btn btn-info btn-fw" href="MachineController?id=<%=m.getId()%>&op=update">Modifier</a></td>
            </tr>
            <%}%>
          </tbody>
        </table>
      </div>
    </div>
  </div>
            <div class="col-md-3">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Ajouter machine </h4>
                  <p class="card-category"></p>
                </div>
                <div class="card-body">
                  
                      <form action="MachineController" method="POST">
                            <input type="hidden" name="id"
                                   value="<%=request.getParameter("id") == null ? "" : request.getParameter("id")%>"
                                   size="id" />
                            <div >
                                <label for="reference">Référence :</label> 
                                <input required="" type="text" class="form-control p_input" name="reference" id="reference" value="<%=request.getParameter("reference") == null ? "" : request.getParameter("reference")%>" />


                            </div>

                            <div >
                                <label for="dateAchat">Date Achat :</label> 
                                <input required=""  type="date"  class="form-control p_input" name="dateAchat" id="dateAchat" value="<%=request.getParameter("dateAchat") == null ? "" : request.getParameter("dateAchat")%>" />


                            </div>

                            <div>
                                <label for="prix">Prix :</label> 
                                <input required="" type="text" class="form-control p_input" name="prix" id="prix" value="<%=request.getParameter("prix") == null ? "" : request.getParameter("prix")%>" />


                            </div>
                                <div>
                                <label for="marque">Marque :</label> 
                                <select name="marque" id="marque"  class="form-control p_input" value="<%=request.getParameter("marque") == null ? "" : request.getParameter("marque")%>">
                                    <%
                                        MarqueSerice mar = new MarqueSerice();
                                        for (Marque m : mar.findAll()) {
                                    %>
                                    <option style="color: black" value="<%=m.getId()%>"><%=m.getLibelle()%></option>
                                    <%}%>
                                </select>
                            </div>


                                <button id="send" type="submit" class="btn btn-success" value="Envoyer" /> Ajouter</button>
                                 <button  type="reset" class="btn btn-warning"/> Reset</button>
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
<script>function confirmer(){
    var res = confirm("Êtes-vous sûr de vouloir supprimer?");
    if(res){
        // Mettez ici la logique de suppression
    }
}</script>
    </body>
</html>