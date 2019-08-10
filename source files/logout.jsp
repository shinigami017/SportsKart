<% 
Object user=session.getAttribute("user");
if(user!=null){
                session.removeAttribute("user");
                session.removeAttribute("login_error");
                session.removeAttribute("change_error");
                session.removeAttribute("report_updated");
                session.removeAttribute("message_updated");
                session.invalidate();
                response.sendRedirect("index.html");
}
%>