<%@page import="java.util.Properties" %>
<%@page import="javax.mail.*" %>
<%@page import="javax.mail.internet.*" %>
<%@ page import="javax.mail.Authenticator" %>
<%@page import="javax.mail.PasswordAuthentication" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Send Email Page</title>
    </head>
    <body onload="displayResult()">
        <h1>Sending and Email</h1>
        <%! 
        public static class SMTPAuthenticator extends Authenticator 
        {
            
            public PasswordAuthentication getPasswordAuthentication()
            {
            
            return new PasswordAuthentication("ashoknitc15","9534410737");
            }
        }
        %>
        <% 
            int result=0;
            if(request.getParameter("send")!=null)
            {
                String d_username="ashoknitc15";
                String d_password="9534410737";
                String d_host="smtp.gmail.com";
                int d_port=465;
                String m_to=new String();
                String m_from="ashoknitc15@gmail.com";
                String m_subject=new String();
                String m_text=new String();
                    if(request.getParameter("to")!=null)
                    {
                        m_to=request.getParameter("to");
                    }
                    if(request.getParameter("subject")!=null)
                    {
                        m_subject=request.getParameter("subject");
                    }
                    if(request.getParameter("message")!=null)
                    {
                        m_text="<h1>welcome to web app dev and design</h1><br/>";
                        m_text=m_text.concat(request.getParameter("message"));
                        m_text=m_text.concat("<br/><h2>i hope you enjoy the course</h2>"); 
                    }
                    //create a properties objects
                    Properties props=new Properties();
                    //create smtp authenticator object
                    SMTPAuthenticator auth=new SMTPAuthenticator();
                    //create a mail session object
                    Session ses=Session.getInstance(props, auth);
                    //create a mime style email purpose
                    MimeMessage msg=new MimeMessage(ses);
                    msg.setContent(m_text,"text/html");
                    msg.setSubject(m_subject);
                    msg.setFrom(new InternetAddress(m_from));
                    msg.addRecipient(Message.RecipientType.TO,new InternetAddress(m_to));
                    try
                    {
                       Transport transport=ses.getTransport("smtps");
                       transport.connect(d_host, d_port, d_username, d_password);
                       transport.sendMessage(msg,msg.getAllRecipients());
                       transport.close();
                       result=1;
                       
                    }
                    catch(Exception e)
                    {
                        out.println(e);
                    }
            }
        %>
        <form name="myform" action="SendMail.jsp" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <td>TO:</td>
                        <td><input type="text" name="to" value="" size="50"></td>
                    </tr>
                    <tr>
                        <td>Subject:</td>
                        <td><input type="text" name="subject" value="" size="50"></td>
                    </tr>
                    <tr>
                        <td>Message:</td>
                        <td><textarea name="message" rows="4" cols="50"></textarea></td>
                    </tr>
                </tbody>
            </table>
            <input type="hidden" name="hidden" value="<%=result %>">
            <input type="reset" value="Clear" name="Clear">
            <input type="submit" value="send" name="send">
        </form>
            <script language="javaScript">
                function displayResult()
                {
                    if(document.myform.hidden.value==1)
                        alert("mail was send");
                }
            </script>
    </body>
</html>
