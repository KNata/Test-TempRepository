<%--
  Created by IntelliJ IDEA.
  User: nataliakiselyk
  Date: 12/23/18
  Time: 4:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>


<body>

<div class="container">
    <h2>Drivers</h2>
    <div class="row-fluid top-margin" align="center">
        <table class="table table-bordered">
            <tr>
                <th>Driver ID</th>
                <th>Driver Name</th>
            </tr>
            <c:forEach var="d" items="${driverList}">
                <tr>
                    <td><c:out value=" ${d.driverID}"/></td>
                    <td><c:out value="${d.driverName}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>

    <a href="adminMainPage.jsp"><input type="submit" value="Back to main page" /></a>
    <br>
    <form action="${pageContext.request.contextPath}/LogoutServlet" method="post">
        <input type="submit" value="Logout" />
    </form>

</div>
</body>
</html>