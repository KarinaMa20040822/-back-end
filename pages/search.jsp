<%@ page import="java.sql.*, java.util.*" %>
    <%@page contentType="text/html" %>
        <%@page pageEncoding="utf-8" %>
            <%@ page import="java.io.*" %>
                <% String search=new String(request.getParameter("search").getBytes("ISO-8859-1"),"UTF-8");
                    if(search.equals("App Base VPS") || search.equals("App Base VPS") || search.equals("App Base VPS")){
                    response.sendRedirect("item.jsp"); } if(search.equals("App Pro") || search.equals("apppro")) {
                    response.sendRedirect("item.jsp"); } if(search.equals("App Max") || search.equals("appmax")) {
                    response.sendRedirect("item.jsp"); } if(search.equals("Website Based") ||
                    search.equals("websitebased")) { response.sendRedirect("item.jsp"); } if(search.equals("Web Pro") ||
                    search.equals("webpro")){ response.sendRedirect("item.jsp"); } if(search.equals("Web Max") ||
                    search.equals("webmax")){ response.sendRedirect("item.jsp"); } if(search.equals("Database VPS") ||
                    search.equals("databasevps")){ response.sendRedirect("item.jsp"); } if(search.equals("DB Pro") ||
                    search.equals("dbpro")){ response.sendRedirect("item.jsp"); } if(search.equals("DB Max") ||
                    search.equals("dbmax")){ response.sendRedirect("item.jsp"); } if(search.equals("AI VPS") ||
                    search.equals("aivps")){ response.sendRedirect("item.jsp"); } if(search.equals("AI Pro") ||
                    search.equals("aipro")){ response.sendRedirect("item.jsp"); } if(search.equals("AI Max") ||
                    search.equals("aimax")){ response.sendRedirect("item.jsp"); } if(search.equals("垃圾桶") ||
                    search.equals("垃圾")){ response.sendRedirect("item.jsp"); } if(search.equals("腳踏式") ||
                    search.equals("腳踏")){ response.sendRedirect("pedal.jsp"); } if(search.equals("掀蓋式") ||
                    search.equals("掀蓋")){ response.sendRedirect("flipcover.jsp"); } if(search.equals("開口式") ||
                    search.equals("開口")){ response.sendRedirect("opening.jsp"); } %>