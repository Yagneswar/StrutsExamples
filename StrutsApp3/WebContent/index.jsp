<%@ taglib uri="/struts-tags" prefix="s" %>
<script type="text/javascript">
function myval(f)
{
	a=f.ename.value
	b=f.password.value
	c=f.email.value
	d=f.gender.value
	e=f.country.value
	var p=c.indexOf("@");
	var q=c.indexOf(".");
	if(a.lenght==0||b.length==0||((p==-1)||(q==-1))||d.length==0||e.length==0)
		{
		alert("no field should be blank");
		if(a.length==0)
			{
			document.getElementById("aa").innerHTML="<b><font color=red>please enter name</font></b>"
			}
		if(b.length==0)
		{
		document.getElementById("ab").innerHTML="<b><font color=red>please enter password</font></b>"
		}
		if((p==-1)||(q==-1))
		{
		document.getElementById("ac").innerHTML="<b><font color=red>please enter valid emailid</font></b>"
		}
		if(d.length==0)
		{
		document.getElementById("ad").innerHTML="<b><font color=red>please enter password</font></b>"
		}
		if(e.length==0)
		{
		document.getElementById("ae").innerHTML="<b><font color=red>please enter password</font></b>"
		}
		return false;
		}
	}
	

</script>
<s:form name="f" action="register" onsubmit="return myval(this)">
<s:textfield name="ename" label="EmployeeName"></s:textfield><s:label id="aa"></s:label>
<s:password name="password" label="Password"></s:password><s:label id="ab"></s:label>
<s:textfield name="email" label="Email"></s:textfield><s:label id="ac"></s:label>
<s:radio list="{'male','female'}" name="gender"></s:radio><s:label id="ad"></s:label>
<s:select list="{'','india','england','bangladesh'}" name="country" label="Country"></s:select><s:label id="ae"></s:label>
<s:submit value="register"></s:submit>
</s:form>