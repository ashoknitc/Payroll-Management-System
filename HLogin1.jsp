<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>
   
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title></title>

    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
      <script type="text/javascript" src="script.js">	</script>
</head>
<body>
<div id="art-page-background-glare">
        <div id="art-page-background-glare-image"></div>
    </div>
    <div id="art-main">
        <div class="art-sheet">
            <div class="art-sheet-tl"></div>
            <div class="art-sheet-tr"></div>
            <div class="art-sheet-bl"></div>
            <div class="art-sheet-br"></div>
            <div class="art-sheet-tc"></div>
            <div class="art-sheet-bc"></div>
            <div class="art-sheet-cl"></div>
            <div class="art-sheet-cr"></div>
            <div class="art-sheet-cc"></div>
            <div class="art-sheet-body">
                <div class="art-header">
                    <div class="art-header-png"></div>
                    <div class="art-header-jpeg"></div>
                    <div class="art-logo">
                       <%@ include file="Tage.jsp" %>
                    </div>
                </div>
                <div class="art-nav">
                	<div class="l"></div>
                	<div class="r"></div>
                	<div class="art-nav-center">
                	<ul class="art-menu">
                		<li>
                			<a href="Welcome.jsp" class="active"><span class="l"></span><span class="r"></span><span class="t">Home</span></a>
                		</li>
                	
					<li>
                			<a href="HLogin.jsp" class="active"><span class="l"></span><span class="r"></span><span class="t">Login</span></a>
               		  </li>		
                
						<li>
                			<a href="contactUs.jsp" class="active"><span class="l"></span><span class="r"></span><span class="t">Contact Us</span></a>
                		</li>
                	</ul>
                	</div>
                </div>
                <div class="art-content-layout">
                    <div class="art-content-layout-row">
                        <div class="art-layout-cell art-sidebar1">
                            <div class="art-vmenublock">
                                <div class="art-vmenublock-body">
                                            <div class="art-vmenublockheader">
                                                <div class="l"></div>
                                                <div class="r"></div>
                                                 <div class="t">Navigation</div>
                                            </div>
                                            <div class="art-vmenublockcontent">
                                                <div class="art-vmenublockcontent-tl"></div>
                                                <div class="art-vmenublockcontent-tr"></div>
                                                <div class="art-vmenublockcontent-bl"></div>
                                                <div class="art-vmenublockcontent-br"></div>
                                                <div class="art-vmenublockcontent-tc"></div>
                                                <div class="art-vmenublockcontent-bc"></div>
                                                <div class="art-vmenublockcontent-cl"></div>
                                                <div class="art-vmenublockcontent-cr"></div>
                                                <div class="art-vmenublockcontent-cc"></div>
                                                <div class="art-vmenublockcontent-body">
                                            <!-- block-content -->
                                         <ul class="art-vmenu">
                                           	<li>
												<a href="index1.jsp" class="active"><span class="l"></span><span class="r"></span><span class="t">Home</span></a>
											</li>
											<li>
											<a href="register.jsp" class="active"><span class="l"></span><span class="r"></span><span class="t">Register</span></a>
											</li>
	
											<li>
											<a href="HLogin.jsp" class="active"><span class="l"></span><span class="r"></span><span class="t">Login</span></a>
											</li>		
                
											<li>
											<a href="contactUs.jsp" class="active"><span class="l"></span><span class="r"></span><span class="t">Contact Us</span></a>
											</li>
                                          </ul>
                                            <!-- /block-content -->
                                            
                                            		<div class="cleared"></div>
                                                </div>
                                            </div>
                            		<div class="cleared"></div>
                                </div>
                            </div>
                            <div class="art-block"></div>
                        </div>
                        <div class="art-layout-cell art-content">
                            <div class="art-post">
                                <div class="art-post-body">
								                         
			    <form method="POST" action="JLogin.jsp" onsubmit="return validate();">
		  
      <table width="100%" height="400" border="0" align="center" cellpadding="5" cellspacing="0" bgcolor="white">
            <tr>
                  <td width="100%" height="auto" bgcolor="white">
					<b><h3><center>Sorry Invalid User Name or Passsword!!!!</h3></b></br>
              </td>
            </tr>
			        
          
		</table>
            
        </form>
				                            <div class="cleared"></div>
                            </div>
                            
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
                            <p><a href="contactUs.jsp">Contact Us</a> 
                               
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
