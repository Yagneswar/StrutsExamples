<%@ taglib uri="/struts-tags" prefix="s" %>
<script type="text/javascript">
function myval(f)
{
	a=f.ename.value
	b=f.password.value
	c=f.email.value
	d=f.gender.value
	e=f.country.value
	var i=c.indexOf("@");
	var j=c.indexOf(".");
	if(a.length==0||b.length==0||((i==-1)||(j==-1))||d.length==0||e.length==0)
		{
		alert("No Field should be blank");
		if(a.length==0)
			{
			document.getElementById("aa").innerHTML="<b><font color=red>Please Enter a Name</font></b>"
			}
		if(b.length==0)
			{
			document.getElementById("ab").innerHTML="<b><font color=red>Please enter password</font></b>"
			}
		if((i==-1)||(j==-1))
		{
		document.getElementById("ac").innerHTML="<b><font color=red>Please Enter Valid Mail Id</font></b>"
		}
		if(d.length==0)
		{
		document.getElementById("ad").innerHTML="<b><font color=red>Please enter Gender Name</font></b>"
		}
		if(e.length==0)
		{
		document.getElementById("ae").innerHTML="<b><font color=red>Please enter a country Name</font></b>"
		}
		return false;
		}
	}
</script>

<s:form name="f" action="register" onsubmit="return myval(this)">
<s:textfield name="ename" label="UserName"></s:textfield><s:label id="aa"></s:label>
<s:password name="password" label="Password"></s:password><s:label id="ab"></s:label>
<s:textfield name="email" label="Email"></s:textfield><s:label id="ac"></s:label>
<s:radio list="{'Male','Female'}" name="gender"></s:radio><s:label id="ad"></s:label>
<s:select list="{'','India','Srilanka','Bangladesh'}" name="country" label="Country"></s:select><s:label id="ae"></s:label>
<s:submit value="Register"></s:submit>
</s:form>