<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>MovieLandmain</title>
   <style>    
      @IMPORT url("<%=request.getContextPath()%>/css/maincss/main.css");
    </style>	
  
</head>
<body>
 <jsp:include page="header.jsp"/>
  <img alt="" src="">
    <div class="bodydiv" id="clear">
     
       <table class="tab1" align="center">
       <tr>
       <td colspan="3"  height="10px" align="center" style="border-bottom-color: black;">
           영화 목록
       
       </td>
       </tr>
      <tr> 
      <td><img alt="" src="<%=request.getContextPath()%>/image/mainimage/24_p1s.jpg"><br/> 
                극비수사  </td>
      <td><img alt="" src="<%=request.getContextPath()%>/image/mainimage/30_p1s.jpg"><br/> 
                  스파이   </td>
      <td><img alt="" src="<%=request.getContextPath()%>/image/mainimage/40_p1s.jpg"><br/> 
                 간신      </td>
      </tr> 
       
       </table>
       <table class="tab2" align="center">
				<tr class= "tab2tr1">
					<td  class="tab2td1"colspan="2">MOVIE SECTION</td>
				</tr>
                 <tr>
                 <td> </td>
                 <td> D</td>
                 </tr>
                
	   </table>
       
      
    
   
    </div>
   

<jsp:include page="footer.jsp"/>

</body>
</html> 