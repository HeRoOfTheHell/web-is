<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true" session="false" %>
<!DOCTYPE html>
<html lang="en" ng-app="monsterSlayerApp">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Monster Slayers</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/libs/bootstrap-theme.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/main.css">
    <script src="${pageContext.request.contextPath}/libs/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/angular.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/angular-resource.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/angular-route.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/libs/lodash.min.js"></script>
    <script src="${pageContext.request.contextPath}/angular_app.js"></script>
</head>
<body ng-controller="MainCtrl">
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Monster Slayers</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li ng-class="monsterTypeActive"><a href="#!/monster-type">Monster Types</a></li>
                <li ng-class="clientRequestActive"><a href="#!/client-request">Client Requests</a></li>
                <li ng-class="jobActive"><a href="#!/job">Jobs</a></li>
                <li ng-class="userActive"><a href="#!/user">Users</a></li>
                <li ng-class="heroActive"><a href="#!/hero">Heroes</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<div class="container">
    <div>
        <div ng-view></div>
    </div>
</div>
</body>
</html>
