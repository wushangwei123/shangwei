<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
  <head>
    <title>$Title$</title>
    
    <link rel="stylesheet" type="text/css" href="easyUI/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="easyUI/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="easyUI/css/demo.css">
	<script src="js/jquery-1.8.3.js"></script>
	<!--jquery.easyui.min.js包含了easyUI中的所有插件-->
	<script src="js/jquery.easyui.min.js"></script>
	
	
    <script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript">
$(function(){

    	$("#all").click(function(){
    		if(this.checked){
    			$(".one").attr("checked",true);
    		}else{
    			$(".one").attr("checked",false);
    		}
    		
    	});
    	
})
    

    
    </script>
    
    
    
  </head>
  <body>

 
 
 
 <form action="delMore.do" method="post">
 >>><a href="InsertStu.jsp">添加学生</a><br>
   <input type="submit" name="sub1" value="批量删除"> 
 <table class="easyui-datagrid" style="width:371px">  
    <thead>  
        <tr><th><input type="checkbox" id="all" > </th>  
            <th data-options="field:'xh'">学号</th>  
            <th data-options="field:'name'">姓名</th>  
            <th data-options="field:'sex'">性别</th>  
            <th data-options="field:'age'">生日</th>  
            <th data-options="field:'tel'">电话</th>  
            <th data-options="field:'caozuo'">操作</th>  
        </tr>  
    </thead>  
    <tbody> 
    <c:forEach items="${list}" var="s"> 
        <tr><td><input name="xh" class="one" type="checkbox" value="${s.xh}" ></td> 
            <td>${s.xh}</td><td>${s.name}</td><td>${s.sex}</td> 
            <td><fmt:formatDate value="${s.birthday}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
    <td>${s.tel}</td>
    <td><a href="selOne.do?xh=${s.xh}">修改</a> <a href="del.do?xh=${s.xh}">删除</a></td> 
        </tr>  
      </c:forEach> 
    </tbody>  
</table> 
</form> 

  </body>
</html>