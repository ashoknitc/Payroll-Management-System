<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>Adding Employee Master</title>

    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
	<script type="text/javascript" src="HNewEntryFrm.js"></script>
    	<script type="text/javascript" src="script.js"></script>
	<script language="javascript">
	function saving()
	{
	document.HEmployeeMaster.action="JSaveEmployeeMaster.jsp";
	document.HEmployeeMaster.submit();
	}
	function deleted()
	{
	document.HEmployeeMaster.action="DelHEmployeeMaster.jsp";
	document.HEmployeeMaster.submit();
	}
	function addNew()
	{
	document.HEmployeeMaster.action="AddHEmployeeMaster.jsp";
	document.HEmployeeMaster.submit();
	}
	</script>
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
<form method="POST" action="" name="HEmployeeMaster" onsubmit="return validate();">
<head>
<title>Add Employee Personal</title>
</head>
<body bgcolor="#FFFFCC">
<font color="#FFFFFF"></font> 
<center>
    <h1>PAY ROLL SYSTEM</h1>
    <hr>
    <h2> <font color="#800000"></font>Employee Personal Master</h2> 
    <table bgcolor="white">
<tr>
<td></td>
        <td><font color="#800000">&nbsp;</font><font color="#800000"><b>Employee Code</b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><input type="text" name="empid" type="text" id="empid" required="required"> </td>
<td></td>
        <td><font color="#800000"><b>Employee Name</b></font><font color="#800000" size=""><b></b></font><font color="#800000" size=""><b></b></font><font color="#800000" size="">&nbsp;</font></td>
        <td><input type="text" id="empname" name="empname" required="required"></td>
<td></td>
</tr>
<tr> 
<td><label><font color="#CC99FF"><strong>yyyy-mm-dd</strong></font></label></td>
        <td><font color="#800000"><b>Date of Joining</b></font></td>
        <td><input type="text" id="jdate" name="jdate" required="required"></td>
<td></td>
<td><font color="#800000" size=""><b>Date of Birth</b></font></td>
        <td><input type="text" name="dob"></td>
<td><label><font color="#CC99FF"><strong>yyyy-mm-dd</strong></font></label></td>
</tr>
	    
<tr>
<td></td>
<td><font color="#800000" size=""><b>Address</b></font></td>
<td><input type="text" id="address" name="address" required="required"></td>
<td></td>
        <td><font color="#800000" size=""><b>Dept Code</b></font><font color="#800000"><b></b></font></td>
        <td><select name="dept" id="dept">
            <option>admin</option>
            </select></td>
<td></td>
</tr>
	    
<tr>
<td></td>
        <td><font color="#800000" size=""><b>Desn Code</b></font></td>
        <td><select name="desn" id="desn">
        <option>lab-10</option>
          </select></td>
<td></td>
        <td><font color="#800000" size=""><b>Grade Code</b></font><font color="#800000">&nbsp;</font></td>        <td><select id="grade" name="grade">
          <option>GrdA</option>  </select></td>
<td></td>
</tr>

<tr>
<td></td>
<td><font color="#800000" size=""><b>Salary</b></font></td>
<td><input type="text" name="salary" id="salary"></td>
<td></td>
<td><font color="#800000" size=""><b>PF Indicator</b></font></td>
<td><input type="text" name="pfindicator"></td>
        <td><font color="#CC99FF"><b>[yes/No]</b></font></td>
</tr>

<tr>
<td></td>
<td><font color="#800000" size=""><b>PF Number</b></font></td>
<td><input type="text" name="pfnumber"></td>
<td></td>
<td><font color="#800000" size=""><b>Casual Leaves</b></font></td>
<td><input type="text" name="cleaves"></td>
</tr>

<tr>
<td></td>
<td><font color="#800000" size=""><b>Earned Leaves</b></font></td>
<td><input type="text" name="eleaves"></td>
<td></td>
<td><font color="#800000" size=""><b>Sick Leaves</b></font></td>
<td><input type="text" name="sleaves"></td>
<td></td>
</tr>
</table>
</br>
<center>
<table>
 <tr>
    <td><input type="submit" name="save" value="Save" onClick="saving()"></td>
	<td><input type="submit" name="delete" value="Delete" onClick="deleted()"></td>
	<td><input type="submit" name="addnew" value="AddNew" onClick="addNew()"></td>
	<td><input type="reset" name="reset" value="Reset"></td>
 </tr>
</table>
</center>
</center>
 </form>
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
