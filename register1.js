var whitespace = " \t\n\r";

function isEmpty(s)

{
   var i;
   if((s == null) || (s.length == 0))
      return true;
   // Search string looking for characters that are not whitespace
   for (i = 0; i < s.length; i++)    
    {   
      var c = s.charAt(i);
      if (whitespace.indexOf(c) == -1) 
        return false;
    }
 // At this point all characters are whitespace.
return true;

}


function validate()

{


			/*	EnablePast=true;	
			    //DisablePast = false;
				range_start = new Date(today.getFullYear(),today.getMonth(),8);
				range_end = new Date(today.getFullYear(),today.getMonth(),5);
			    var today = new Date();
			*/

		
//for firstName
   
	        var firstName=document.regForm.first_name.value;
			if (!isEmpty(firstName))
			{
				if(!isNaN(firstName))
				{
				alert("Error: Fist Name must be Characters!");
				document.regForm.first_name.focus();
				return false;
				}
			}
	  
	  //for middleName
	  var middleName=document.regForm.middle_name.value;
	    if (!isEmpty(middleName))
		{  
			if(!isNaN(middleName))
		    {
            alert("Error: Middle Name must be Characters!");
            document.regForm.middle_name.focus();
            return false;
			}
        }

	  //for lastName
	   var lastName=document.regForm.last_name.value;
       if (!isEmpty(lastName))
        {
           		if(!isNaN(lastName))
				{
				alert("Error: Last Name must be Character!");
				document.regForm.first_name.focus();
				return false;
				}
		}


     //cheking for email id empty or not
	 var eid=document.regForm.email.value;
   
	if (!isEmpty(eid))
      {
	  //checking for email id valid or not
       var i,dot,at;
	   at=dot=0;
			for(i=0;i<eid.length;i++)
			{
		        if(eid.charAt(i)=='.')
				dot++;
				if(eid.charAt(i)=='@')
				at++;
			}
				if(dot>0 && at>0)
				{
						if(dot<=3 && at==1)
						return true;
						else
						{
						alert("Error: Invalid Email-Id!!!");
						document.regForm.email.focus();
						return false;
						}
				}
				else
				{
				alert("Error: Invalid Email-Id!!!");
				document.regForm.email.focus();
				return false;
				}
				
		}
	

  // checkig of date for day
     if (isEmpty(document.regForm.dd.value))

      {
        alert("Error: Day is not selected!!!");
 
        document.regForm.dd.focus();

        return false;
	  }

 // checkig of date for month
     if (isEmpty(document.regForm.mm.value))

      {
        alert("Error: Month not is selected!!!");
 
        document.regForm.mm.focus();

        return false;

      }
// checkig of date for year
      if (isEmpty(document.regForm.yy.value))
      {
        alert("Error: Year is not year selected!!!");

        document.regForm.yy.focus();

        return false;

      } 
	
	//for password checking 
	  var pwdUser=document.regForm.pwd.value;
	  if (!isEmpty(pwdUser))
        {
		 if(pwd1.length<5)
			{
			alert("Error: This is weak password!!!");
			document.regForm.pwd.focus();
			return false;
			}
		}

	  //for confirm password checking
		var confirmPwd=document.regForm.pwd1.value;  
		if(!pwdUser.equals(confirmPwd))
		 {
			alert("Confirm password is missmatched!!!");
			return false;
		 }
		 
	  
    cnfrm=confirm("Are You Sure Want To Register.");
    if(cnfrm)
    return true;
	else
	return false;

}

