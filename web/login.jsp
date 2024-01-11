
<!DOCTYPE html>
<html lang="en">
<head>
<title>carpark</title>
<style>
    body{
        background: url("images/00studentparking-facebookJumbo.jpg") no-repeat center/cover;
         background-size: 100% 100%;
        height: 100vh;
        position: relative;
    }
  a{
        text-decoration: none;
        padding: 5px;
        display: inline-block;
         border: 2px solid rgb(34, 8, 119);
         margin-left: 150px;
         border-radius: 5px;
         background-color: greenyellow;
         color: black;
         position: fixed
    }
    a:hover{
      color: brown;
    }
    a:visited{
      color: rgb(12, 0, 187);
    }
    a:active{
      color: indigo;
    }
</style>
</head>
<body>
<form method="post" action="logcode.jsp">

<table cellpadding="4" cellspacing="2"  width="50%" border="10px" align="center"   style="font-color:seagreen; background-color:lightyellow"; font-size:25px; blue;border-style:ridge;border-color:#eeacfb;">
       <tr>
        <td align="center"><h1>Login</h1></td>
        
    </tr>
    <hr size="15" color="black"/>
<br>
<table cellpadding="4" cellspacing="2"  width="50%" border="10px" align="center"   style="font-color:seagreen; background-color:pink"; font-size:25px; blue;border-style:ridge;border-color:#eeacfb;">
<tr>
<td align="center">CustomerId</td>
<td><input type="text" name="CustomerId"/></td>
</tr>
<tr>
<td align="center">Password </td>
<td><input type="password" name="password"/></td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="submit" value="Submit" />
<input type="reset" value="Reset"/>
</td>
</tr>
<a href="REG.jsp">NEW USER</A>
</table>
</form>
</body>
</html>
