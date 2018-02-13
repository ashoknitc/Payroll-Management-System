<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Employee Master Form</title>

    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
	<script type="text/javascript" src="HNewEntryFrm.js"></script>
    <script type="text/javascript" src="script.js">	</script>
	<script language="javascript">

	</script>
	</head>
<%@page import="java.util.Properties" %>
<%@page import="javax.mail.*" %>
<%@page import="javax.mail.internet.*" %>
<%@ page import="javax.mail.Authenticator" %>
<%@page import="javax.mail.PasswordAuthentication" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="EHeader.jsp"%>								
<body onload="displayResult()">
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
                        m_text="<h1>Hi,welcome to Payroll Management System Developement and design</h1><br/>";
                        m_text=m_text.concat(request.getParameter("message"));
                        m_text=m_text.concat("<br/><h2>Thanks</h2>"); 
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
        
<head>
<title>Employee Personal Master</title>
</head>
<body bgcolor="#FFFFCC">
<font color="#FFFFFF"></font> 
<center>
    <h1>PAY ROLL SYSTEM</h1>
    <hr>
    <h2> <font color="#800000"></font>Send Email Page</h2> 
	<form name="myform" action="SendEmailMessage.jsp" method="POST">
    <table bgcolor="white">
	<tbody>
<tr>
<td></td>
        <td><font color="#800000"><b><b>TO</b></b></font><font color="#800000" size="13"><b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;&nbsp;</font></td>
        <td><input type="text" id="to" name="to" size="50" required="required"></td>
<td></td>
</tr>
<tr>
<td></td>
        <td><font color="#800000"><b>SUBJECT</b></font><font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><input type="text" id="subject" name="subject" size="50" required="required"></td>
<td></td>
</tr>
<tr>
<td></td>
        <td><font color="#800000"><b>MESSAGE</b></font><font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><textarea id="message" name="message" cols="5" rows="5" width="200%"></textarea></td>
<td></td>
</tr>

</tbody>
</table>
</br>
<center>
<table>
 <tr>
    <td><input type="hidden" name="hidden" value="<%=result %>"></td>
	<td><input type="reset" value="Clear" name="Clear"></td>
	<td><input type="submit" value="send" name="send"></td>
 </tr>
</table>
</center>
</center>
        </form>
		<script language="javaScript">
                function displayResult()
                {
                    if(document.myform.hidden.value==1)
                        alert("mail was send");
                }
            </script>
<div class="art-post-inner art-article">
                                            <h2 class="art-postheader">&nbsp;</h2>
							<div class="cleared"></div>
                            </div>
                            
                            		<div class="cleared"></div>
                                </div>
                            </div>
                            <div class="art-post">
                                <div class="art-post-body">
                                  <div class="cleared"></div>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cleared"></div><div class="art-footer">
                    <div class="art-footer-inner">
                        <a href="#" class="art-rss-tag-icon" title="RSS"></a>
                        <div class="art-footer-text">
                            <p> </p>
                        </div>
                    </div>
                    <div class="art-footer-background"></div>
                </div>
        		<div class="cleared"></div>
            </div>
        </div>
        <div class="cleared"></div>
        <p class="art-page-footer"> 
    </div>
    
</body>
</html>