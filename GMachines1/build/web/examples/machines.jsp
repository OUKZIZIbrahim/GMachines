<%-- 
    Document   : machines
    Created on : 3 déc. 2021, 08:50:36
    Author     : Lachgar
--%>

<%@page import="beans.Machine"%>
<%@page import="service.MachineService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <body class="dark-edition">
        <div class="wrapper ">
<%@ include file="/templates/menu.jsp" %>
<div class="main-panel ps-container ps-theme-default ps-active-y" data-ps-id="b3dd0a2b-3d79-728c-2e86-5aa68e2f9f06">
    <%@ include file="/templates/header.jsp" %>
     <div class="clearfix"></div>

        <div class="content-wrapper">
            <div class="container-fluid">
                <div class="row mt-3">
                    <div class="col-lg-12">
                        Nouvelle machine
                        <hr>
                        <form action="MachineController" method="POST">
                            <input type="hidden" name="id"
                                   value="<%=request.getParameter("id") == null ? "" : request.getParameter("id")%>"
                                   size="id" />
                            <div >
                                <label for="reference">Référence :</label> 
                                <input required="" type="text" name="reference" id="reference" value="<%=request.getParameter("reference") == null ? "" : request.getParameter("reference")%>" />


                            </div>

                            <div >
                                <label for="dateAchat">Date Achat :</label> 
                                <input required=""  type="date" name="dateAchat" id="dateAchat" alue="<%=request.getParameter("dateAchat") == null ? "" : request.getParameter("dateAchat")%>" />


                            </div>

                            <div >
                                <label for="prix">Prix :</label> 
                                <input required="" type="text" name="prix" id="prix"value="<%=request.getParameter("prix") == null ? "" : request.getParameter("prix")%>" />


                            </div>


                            <input id="send" type="submit" value="Envoyer" /> 
                            <input type="reset" value="Annuler" />
                        </form>
                    </div>



                    <div class="col-12 col-lg-12">
                        <div class="table-responsive">
                            <table  class="table align-items-center table-flush table-hover">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Référence</th>
                                        <th>Date Achat</th>
                                        <th>Prix</th>
                                        <th>Supprimer</th>
                                        <th>Modifier</th>
                                    </tr>
                                </thead>
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
                                        <td><a href="MachineController?id=<%=m.getId()%>&op=delete">Supprimer</a></td>
                                        <td><a href="MachineController?id=<%=m.getId()%>&op=update">modifier</a></td>
                                    </tr>
                                    <%}%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div> </div>
        </div>
 <%@ include file="/templates/footer.jsp" %>
</div>
        </div>

    </body>
</html>