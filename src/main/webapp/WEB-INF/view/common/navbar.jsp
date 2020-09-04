<nav class="navbar navbar-expand-sm bg-dark navbar-dark" style="margin-bottom:50px;">
    <a class="navbar-brand" href="${contextPath}/admin">
        <c:choose>
            <c:when test="${pageContext.request.userPrincipal.name == 'admin@gmail.com'}">
                Admin Home
            </c:when>
            <c:otherwise>
                Site User
            </c:otherwise>
        </c:choose>

    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="${contextPath}/admin/profile">Profile</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${contextPath}/admin/getAgeTransactionPattern">Age Wise Pattern</a>
            </li>

        </ul>
        <ul class="nav navbar-nav ml-auto">
            <li>
                <button style="float:left" class="btn btn-dark" onclick="document.forms['logoutForm'].submit()">Logout
                </button>
            </li>
        </ul>
    </div>
</nav>
