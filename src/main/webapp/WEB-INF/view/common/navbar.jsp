<nav class="navbar navbar-expand-sm bg-dark navbar-dark" style="margin-bottom:50px;">
    <a class="navbar-brand" href="#">
        <div >
           <img src="${contextPath}/resources/images/bplogo.jpg" alt="bplogo" width="30" height="30" style="center">
        </div>
    </a>

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav">
            <li class="nav ml-auto" style="margin-right:18px;">
                <a class="nav-link" href="#">BharatPe Forex</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${contextPath}">Profile</a>
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
