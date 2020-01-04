<%@ page import="vn.edu.nlu.fit.model.Comment" %>
<%@ page import="java.util.List" %>
<%
    List<Comment> comments = (List<Comment>) request.getAttribute("comments");
    for (Comment comment : comments) {
%>
<div class="bootstrap-tab-text-grid">
    <div class="bootstrap-tab-text-grid-left">
        <img src="img/2.png" alt=" " class="img-responsive"/>
    </div>
    <div class="bootstrap-tab-text-grid-right">
        <ul>
            <li><a href="#"><%=comment.getUserName()%>
            </a></li>
        </ul>
        <p><%=comment.getContent()%>
        </p>
    </div>
    <div class="clearfix"></div>
</div>
<%
    }
%>