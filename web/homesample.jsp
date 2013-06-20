
 <%@page import="java.util.List"%>
<%HttpSession sess=request.getSession(false);
   HttpSession sess1=request.getSession(false);
      String uid=(String)sess.getAttribute("str1");
      String rolid=(String)sess1.getAttribute("str2");
      List resc=(List)sess1.getAttribute("str3");
      System.out.println("value ofuser"+uid);
      System.out.println("value ofrole"+rolid);
       System.out.println("value ofresource");
       
             %>
             <h1> hello <%= uid%> </h1>
             