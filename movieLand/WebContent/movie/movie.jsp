<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
 <meta charset="UTF-8" />
 <title>영화 순위</title>
 <style>
  @IMPORT url("<%=request.getContextPath()%>/css/moviecss/movie.css");
 </style>

</head>
<body>
<jsp:include page="../main/header.jsp"/>

 <div >
	 <table class="table" >
		  <tr>
			   <td>
				   <span class="info">
				   <span class="grade">1</span><!-- 1등 반투명 표시 -->
				   <a href="<%=request.getContextPath()%>/movie/view1.do" class="a"><img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000078/78036/78036_214.jpg"   /></a>
				   </span>
			   </td>
			   <td>
				   <span class="info">
				   <span class="grade">2</span><!-- 2등 반투명 표시 -->
				   <a href="<%=request.getContextPath()%>/movie/view2.do"" class="a"><img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000078/78226/78226_214.jpg"  name="aa" /></a>
				   </span>
			   </td>
			   <td>
				   <span class="info">
				   <span class="grade">3</span><!-- 3등 반투명 표시 -->
				   <a href="<%=request.getContextPath()%>/movie/view3.do"" class="a"><img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000078/78240/78240_214.jpg"  name="aa" /></a>
				   </span>
			   </td>
			   <td>
			   		<a href="<%=request.getContextPath()%>/movie/view4.do"" class="a"><img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000078/78207/78207_214.jpg"  name="aa" /></a>
			   </span>
			   </td>
		  </tr>
		  <tr>
			   <td >
				   <a class="a" href="<%=request.getContextPath()%>/movie/view1.do"  >
				   <aa class="aa">쥬라기 월드</aa> <br />
				   어드벤쳐|미쿸 <br />
				   개봉일 2015-06-11</a>
				   </a>
			   </td>
			   <td >
				   <a class="a" href="<%=request.getContextPath()%>/movie/view2.do"  >
				   <aa class="aa">샌 안드레아스</aa> <br />
				   엑션 |미국 <br />
				   개봉일 2015-06-11</a>
				   </td>
			   <td>
				   <a class="a" href="<%=request.getContextPath()%>/movie/view2.do"  >
				   <aa class="aa">스파이</aa> <br />
				   첩보 |미국 <br />
				   개봉일 2015-06-11</a>
			   </td>
			   <td>
				   <a class="a" href="<%=request.getContextPath()%>/movie/view2.do"  >
				   <aa class="aa">매드맥스</aa> <br />
				   엑션 |미국 <br />
				   개봉일 2015-06-11</a>
			   </td>
		  </tr>
	 </table>
	 </div>
<p></p>
	 <div >
		 <table class="table2" >
			  <tr>
				   <td>
				  	 	<a href="<%=request.getContextPath()%>/movie/view5.do"" class="a"><img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000078/78276/78276_214.jpg"  name="aa" /></a>
				   </td>
				   <td>
				   		<a href="<%=request.getContextPath()%>/movie/view6.do"" class="a"><img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000078/78277/78277_214.jpg"  name="aa" /></a>
				   </td>
				   <td>
				   		<a href="<%=request.getContextPath()%>/movie/view7.do"" class="a"><img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000078/78267/78267_214.jpg"  name="aa" /></a>
				   </td>
				   <td>
				  		<a href="<%=request.getContextPath()%>/movie/view8.do"" class="a"><img src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000077/77552/77552_214.jpg"  name="aa" /></a>
				   </td>
			  </tr>
			  <tr>
				   <td >
					   <a href="<%=request.getContextPath()%>/movie/view5.do"   class="a">
					   <aa class="aa">극비수사</aa> <br />
					   스릴러 |한국 <br />
					   개봉일 2015-05-18
					   </a>
				   </td>
				   <td>
					   <a href="<%=request.getContextPath()%>/movie/view6.do"   class="a">
					   <aa class="aa">경성학교</aa> <br />
					   공포 |한국 <br />
					   개봉일 2015-05-18
					   </a>
				   </td>
				   <td>
					   <a href="<%=request.getContextPath()%>/movie/view7.do"   class="a">
					   <aa class="aa">극비수사</aa> <br />
					   공포 |일본 <br />
					   개봉일 2015-05-18
					   </a>
				   </td>
				   <td>
					   <a href="<%=request.getContextPath()%>/movie/view8.do"   class="a">
					   <aa class="aa">은밀한 유혹</aa> <br />
					    범죄,로맨스|한국 <br />
					   개봉일 2015-05-18
					   </a>
				   </td>
			  </tr>
		 </table>
 </div>
</body>
</html>  