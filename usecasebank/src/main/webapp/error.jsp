<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Signup Error</title>
</head>
<body>
    <h1>Error During Signup!</h1>
    <p>An error occurred while processing your signup request. Please try again later.</p>
    <%-- 
        Optionally display more specific error messages based on exceptions caught in the servlet 
    --%>
    <%  
        Throwable exception = (Throwable) request.getAttribute("javax.servlet.error.exception");
        if (exception != null) {
            out.println("<p><b>Technical details (for administrator):</b></p>");
            out.println("<pre>");
            exception.printStackTrace(out);
            out.println("</pre>");
        }
    %>
    <a href="signup.jsp">Go back to Signup</a>
</body>
</html>