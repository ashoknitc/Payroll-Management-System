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
	<a href="ChangeAdminPassword.jsp" class="active"><span class="l"></span><span class="r"></span><span class="t">Change Password</span></a>	
</li>
<li>
	<a href="#" class="active"><span class="l"></span><span class="r"></span><span class="t">Report</span></a>
	<ul>
		<%@ include file="ReportModule.jsp"%>
	</ul>
</li>
<li>
	<a href="#" class="active"><span class="l"></span><span class="r"></span><span class="t">Search</span></a>
	<ul>
		<%@ include file="SearchModule.jsp"%>
	</ul>
</li>
<li> <a href="Logout.jsp" class="active"><span class="l"></span><span class="r"></span><span class="t">Log Out</span></a> </li>
