<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Example form success</title>
    </head>
    <body>
        <div class="project-template">
            <div class="jumbotron">

                <div class="page-header">
                    <h1>Example form success</h1>
                    <p>Thank you! Your form has been submitted</p>
                </div>
                <table>
                    <tr>
                        <td>UserName :</td>
                        <td>${customer.userName}</td>
                    </tr>
                    <tr>
                        <td>Address :</td>
                        <td>${customer.address}</td>
                    </tr>
                    <tr>
                        <td>Password :</td>
                        <td>${customer.password}</td>
                    </tr>
                    <tr>
                        <td>Confirm Password :</td>
                        <td>${customer.confirmPassword}</td>
                    </tr>
                    <tr>
                        <td>Receive Newsletter :</td>
                        <td>${customer.receiveNewsletter}</td>
                    </tr>
                    <tr>
                        <td>Hidden Value :</td>
                        <td>${customer.secretValue}</td>
                    </tr>
                    <tr>
                        <td>Hidden Value :</td>
                        <td>${customer.secretValue}</td>
                    </tr>
                </table>
            </div>
        </div>
    </body>
</html>
