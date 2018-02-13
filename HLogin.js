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
 if (isEmpty(document.HLogin.uid.value))
      {
	   alert("Error: User id is empty!!!");
	   document.HLogin.uid.focus();
	   return false;
	  }
	  //for password checking 
	  var pwdUser=document.HLogin.pwd.value;
	  if (isEmpty(pwdUser))
      {
	   alert("Error: Password Field is empty!!!");
	   document.HLogin.pwd.focus();
	   return false;
	  }
return true;
}
