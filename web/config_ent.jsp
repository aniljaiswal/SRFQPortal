<%@page import="classes.OrganizationMaster"%>
<%@page import="java.util.Iterator"%>
<html>
    <head>
        <%
        String msg=(String)request.getAttribute("msg");
        if(msg!=null){
           out.println("<script type='text/javascript'>alert('"+msg+"')</script>");
           }
        %>
        <script type="text/javascript">
            function shownew(){
                document.getElementById("viewent").style.display="none";
                document.getElementById("editent").style.display="none";
                document.getElementById("delent").style.display="none";
                document.getElementById("newent").style.display="block";
            }
            function showedit(){
                document.getElementById("viewent").style.display="none";
                document.getElementById("editent").style.display="block";
                document.getElementById("delent").style.display="none";
                document.getElementById("newent").style.display="none";
            }
            function showdel(){
                document.getElementById("viewent").style.display="none";
                document.getElementById("editent").style.display="none";
                document.getElementById("delent").style.display="block";
                document.getElementById("newent").style.display="none";
            }
            function showview(){
                document.getElementById("viewent").style.display="block";
                document.getElementById("editent").style.display="none";
                document.getElementById("delent").style.display="none";
                document.getElementById("newent").style.display="none";
            }
        </script>
        
    </head>
    <body>
        <form action="confignew.do">
            <div id="formhead">
                
                <h3>Configure Enterprise</h3>
            </div>
            <div id="configentmenu">
                <ul>
                    <li><a href="#" onclick="shownew()">New</a></li>
                    <li><a href="#" onclick="showview()">View</a></li>
                    <li><a href="#" onclick="showedit()">Edit</a></li>
                    <li><a href="#" onclick="showdel()">Delete</a></li>
                </ul>
            </div>
            
            <div id="configEnt">
        <table id="newent" cellpadding="0" cellspacing="0">
            <caption>Add New Organization</caption>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td>Organisation Name</td>
                <td><input type="text" class="textbox" name="orgname"/></td>
            </tr>
            <tr>
                <td>Organisation Address</td>
                <td><input type="text" class="textbox" name="orgadd"/></td>
            </tr>
            <tr>
                <td>Country</td>
                <td><select class="select" name="country">
                        <option>---select---</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>State</td>
                <td><select class="select" name="state">
                        <option>---select---</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>City</td>
                <td><select class="select" name="city">
                        <option>---select---</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Pin/Zip Code</td>
                <td><input type="text" class="textbox" name="pcode"/></td>
            </tr>
            <tr>
                <td>Phone 1</td>
                <td><input type="text" class="textbox" name="phone1"/></td>
            </tr>
            <tr>
                <td>Phone 2</td>
                <td><input type="text" class="textbox" name="phone2"/></td>
            </tr
            <tr>
                <td>Fax</td>
                <td><input type="text" class="textbox" name="fax"/></td>
            </tr>
            <tr>
                <td>E-Mail</td>
                <td><input type="text" class="textbox" name="mail"/></td>
            </tr>
            <tr>
                <td> <input type="submit" class="submit2" name="submit" value="Submit"/></td>
        </tr>
        </table>
            <table id="viewent" cellpadding="0" cellspacing="0">
                <caption>Organizations Details</caption>
                <tr id="headrow">
                    <td>OrgId</td>
                    <td>OrgName</td>
                    <td>OrgAdd</td>
                    <td>Country</td>
                    <td>State</td>
                    <td>Pin/Zip</td>
                    <td>Phone1</td>
                    <td>Phone2</td>
                    <td>Fax</td>
                    <td>Mail</td>
                </tr>
                <%
                session=request.getSession(true);
                java.util.List list=(java.util.List) session.getAttribute("list");
                Iterator it=list.iterator();
                while(it.hasNext()){
                OrganizationMaster om=(OrganizationMaster)it.next();
                %>
                <tr>
                <td><%out.print(om.getOrgId()); %></td>
                <td><% out.print(om.getOrgName()); %></td>
                <td><% out.print(om.getOrgAdd()); %></td>
                <td><% out.print(om.getCountry()); %></td>
                <td><% out.print(om.getState()); %></td>
                <td><% out.print(om.getZipcode()); %></td>
                <td><% out.print(om.getPhone1()); %></td>
                <td><% out.print(om.getPhone2()); %></td>
                <td><% out.print(om.getFax()); %></td>
                <td><% out.print(om.getMail()); %></td>
                </tr>
                <%
                }
                %>
            </table>

            <table id="editent" cellpadding="0" cellspacing="0">
                <caption>Edit Organization</caption>
                <tr>
                <td></td>
                </tr>
                <td></td>
                <tr>
                    <td>Organization Id</td>
                <td>
                <select class="select" name="editorgid">
                <% Iterator it2=list.iterator();
                while(it2.hasNext()){
                OrganizationMaster om=(OrganizationMaster)it2.next();
                %>
                <option><%out.print(om.getOrgId()); %></option>
                <%
                }
                %>
                </select>
                </tr>
                <tr>
                
            </tr>
            <div id="editform">
            <tr>
                <td>Organisation Name</td>
                <td><input type="text" class="textbox" name="editorgname"/></td>
            </tr>
            <tr>
                <td>Organisation Address</td>
                <td><input type="text" class="textbox" name="editorgadd"/></td>
            </tr>
            <tr>
                <td>Country</td>
                <td><select class="select" name="editcountry">
                        <option>---select---</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>State</td>
                <td><select class="select" name="editstate">
                        <option>---select---</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>City</td>
                <td><select class="select" name="editcity">
                        <option>---select---</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Pin/Zip Code</td>
                <td><input type="text" class="textbox" name="editpcode"/></td>
            </tr>
            <tr>
                <td>Phone 1</td>
                <td><input type="text" class="textbox" name="editphone1"/></td>
            </tr>
            <tr>
                <td>Phone 2</td>
                <td><input type="text" class="textbox" name="editphone2"/></td>
            </tr
            <tr>
                <td>Fax</td>
                <td><input type="text" class="textbox" name="editfax"/></td>
            </tr>
            <tr>
                <td>E-Mail</td>
                <td><input type="text" class="textbox" name="editmail"/></td>
            </tr>
            <tr>
                <td> <input type="submit" class="submit2" name="submit" value="Edit"/></td>
        </tr>
            </div>
            </table>

            <table id="delent" cellpadding="0" cellspacing="0">

                <caption>Delete Organization</caption>
                <tr id="headrow">
                        <td>Select</td>
                    <td>OrgId</td>
                    <td>OrgName</td>
                    <td>OrgAdd</td>
                    <td>Country</td>
                    <td>State</td>
                </tr>
             <% Iterator it1=list.iterator();
                while(it1.hasNext()){
                OrganizationMaster om=(OrganizationMaster)it1.next();
                String orgid=om.getOrgId();
                %>
                <tr>
                    <td><input type="checkbox" name="delete" value="<%out.println(orgid);%>"/></td>
                <td><%out.print(om.getOrgId()); %></td>
                <td><% out.print(om.getOrgName()); %></td>
                <td><% out.print(om.getOrgAdd()); %></td>
                <td><% out.print(om.getCountry()); %></td>
                <td><% out.print(om.getState()); %></td>
                </tr>
                
                <%
                }
                %>
                <tr>
                    <td><input class="submit2" type="submit" name="submit" value="Delete"></td>
                </tr>
            </table>
            
        </div>
                </form>
    </body>
</html>
