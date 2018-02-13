<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Saving Employee Record</title>

    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
	<script type="text/javascript" src="HNewEntryFrm.js"></script>
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
                        <%@ include file="Tage.jsp"%>
                    </div>
                </div>
                <div class="art-nav">
                	<div class="l"></div>
                	<div class="r"></div>
                	<div class="art-nav-center">
                	<ul class="art-menu">
                		<li>
                			<a href="index.jsp" class="active"><span class="l"></span><span class="r"></span><span class="t">Home</span></a>
                		</li>
                		<li>
                			<a href="#" class="active"><span class="l"></span><span class="r"></span><span class="t">Registration</span></a>
							<ul>
							<%@ include file="RegistrationModule.jsp"%>
                			</ul>
                		</li>
						<li>
                			<a href="#" class="active"><span class="l"></span><span class="r"></span><span class="t">Report</span></a>
							<ul>
							<%@ include file="ReportModule.jsp"%>
                			</ul>
                		</li>
							<li> <a href="Logout.jsp" class="active"><span class="l"></span><span class="r"></span><span class="t">Log Out</span></a> </li>
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
                                                          <%@ include file="NavigationModule.jsp"%>
					   									</ul>
                                            <!-- /block-content -->
                                            
                                            		<div class="cleared"></div>
                                                </div>
                                            </div>
                            		<div class="cleared"></div>
                                </div>
                            </div>
                            <div class="art-block"></div>
                            <div class="art-block">
                                <div class="art-block-body">
                                            <div class="art-blockheader">
                                                <div class="l"></div>
                                                <div class="r"></div>
                                                 <div class="t">Contact Info</div>
                                            </div>
                                            <div class="art-blockcontent">
                                                <div class="art-blockcontent-tl"></div>
                                                <div class="art-blockcontent-tr"></div>
                                                <div class="art-blockcontent-bl"></div>
                                                <div class="art-blockcontent-br"></div>
                                                <div class="art-blockcontent-tc"></div>
                                                <div class="art-blockcontent-bc"></div>
                                                <div class="art-blockcontent-cl"></div>
                                                <div class="art-blockcontent-cr"></div>
                                                <div class="art-blockcontent-cc"></div>
                                                <div class="art-blockcontent-body">
                                            <!-- block-content -->
                                                        <div>
														<%@ include file="ContactInfo.jsp"%>
                                                         </div>
                                            <!-- /block-content -->
                                            
                                            		<div class="cleared"></div>
                                                </div>
                                            </div>
                            		<div class="cleared"></div>
                              </div>
                          </div>
                        </div>
                        <div class="art-layout-cell art-content">
                        <div class="art-post">
                                <div class="art-post-body">
								
<%@ page import="java.sql.*" %>
<%
try{
   String empids=request.getParameter("empid");
   String empnames=request.getParameter("empname");
   String jdates=request.getParameter("jdate");
   String dobs=request.getParameter("dob");
   String addresss=request.getParameter("address");
   String dsns=request.getParameter("desn");
   String grades=request.getParameter("grade");
   String depts=request.getParameter("dept");
   float salarys=Float.parseFloat(request.getParameter("salary"));
   String pfindicators=request.getParameter("pfindicator");
   int pfnumbers=Integer.parseInt(request.getParameter("pfnumber"));
   int cleavess=Integer.parseInt(request.getParameter("cleaves"));
   int eleavess=Integer.parseInt(request.getParameter("eleaves"));
   int sleavess=Integer.parseInt(request.getParameter("sleaves"));
   out.println(empids);
   out.println(empnames);
   out.println(jdates);
   out.println(dobs);
   out.println(addresss);
   out.println(dsns);
   out.println(depts);
   out.println(grades);
   out.println(salarys);
   out.println(pfindicators);
   out.println(pfnumbers);
   out.println(cleavess);
   out.println(eleavess);
   out.println(sleavess);
   Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","payroll","payroll");
   String query="insert into employee(empid,empname,jdate,dob,address,desncode,gradecode,deptcode,salary,pfindicator,pfnumber,casualleaves,earnedleaves,sickleaves) values('"+empids+"','"+empnames+"','"+jdates+"','"+dobs+"','"+addresss+"','"+dsns+"','"+grades+"','"+depts+"',"+salarys+",'"+pfindicators+"',"+pfnumbers+","+cleavess+","+eleavess+","+sleavess+")";
   PreparedStatement pstmt=conn.prepareStatement(query);
   pstmt.executeUpdate();
%>
<center>
<h2>Record Inserted Successfully .....
<a href="HEmployeeMaster.jsp">Click Here To Go Back</a></h2>
</center>
<%
  }catch(Exception ex){ out.println(ex.toString());
%>
<center>
<h2>Dublicate employee code is not allowed here!!!</br>
<a href="HEmployeeMaster.jsp">Click Here To Back</a>
</center>

<%
}
%>

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
                            <p> <a href="termsOfUse.jsp">Terms of Use</a></p>
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
