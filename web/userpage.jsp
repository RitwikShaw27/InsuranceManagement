<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${empty sessionScope.User}" >
    <jsp:forward page="userlogin.jsp"/>
</c:if>
<!doctype html>
<html lang="en">
    <head>
        <title>Insurance Management</title>
        <link rel="SHORTCUT ICON" href="img/profilePhoto.png">
        <link href="https://getbootstrap.com/docs/4.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://getbootstrap.com/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/home.css"/>
        <!-- Custom styles for this template -->
        <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    </head>
    <body class="text-center">
        <jsp:include page="menu.jsp"></jsp:include>
            <main>
                <div class="container py-4">
<!--                    <header class="pb-3 mb-4 border-bottom bg-warning">
                        <a href="#" class="d-flex align-items-center text-dark text-decoration-none">
                            <svg xmlns="http://www.w3.org/2000/svg" width="40" height="32" class="me-2" viewBox="0 0 118 94" role="img"><title>Bootstrap</title><path fill-rule="evenodd" clip-rule="evenodd" d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z" fill="currentColor"></path></svg>
                            <b>A life insurance quote is the premium price of the life insurance policy. It is crucial to get a life insurance quote so as to simplify the comparison between different life insurance policies and make a wise choice.</b>
                        </a>
                    </header>-->

                    <div class="p-5 mb-2 bg-light rounded-3">
                        <div class="container-fluid py-5">
                            <h2 class="display-6 fw-bold mb-2" style="color:#3e6aed; " >Log FNOL</h2>
                            
                            <a href="applyclaim.jsp" class="btn btn-warning btn-lg">Apply</a>
                        </div>
                    </div>
                    <div class="p-5 mb-4 bg-light rounded-3">
                        <div class="container-fluid py-5">
                            <!--style="color:skyblue; text-shadow: 2px 2px #ff0000;"-->
                            <h2 class="display-6 fw-bold" style="color:#3e6aed; " >Track Your Claim</h2>                        
                        <c:if test="${not empty Pending}">
                            <h1 class="text-warning"> <c:out value="${Pending}"></c:out></h1>
                            <c:remove var="Pending" scope="session"/>
                        </c:if>
                        <c:if test="${not empty Approved}">
                            <h1 class="text-success"><c:out value="${Approved}"></c:out></h1>
                            <c:remove var="Approved" scope="session"/>
                        </c:if>
                        <c:if test="${not empty Rejected}">
                            <h1 class="text-danger"><c:out value="${Rejected}"></c:out></h1>
                            <c:remove var="Rejected" scope="session"/>
                        </c:if>
                        <div class="form-control w-25 m-auto p-3">
                            <form action="Track" method="Post">
                                <input type="text" class="form-control" id="insuranceId" placeholder="insuranceId" name="insuranceId" value="${User.getUserId()}" required autofocus>
                                <button type="submit" class="btn btn-warning mt-3">Track</button>
                            </form>
                        </div>
                    </div>
                </div>

                
            </div>
        </main>
        <script src="https://getbootstrap.com/docs/5.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>