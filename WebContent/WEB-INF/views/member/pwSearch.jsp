<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"/>
    <img src="../../../imgs/backImg1.jpg" id="img1">
    	<div class="content">
	    <div id="top">
	    <h1>비밀번호 찾기</h1>
	    </div >	
	    	
	    	<div id="d1">
	    		<table id="t1">
	    			<tr>	
	    				<td>
				 				<table id="t2">
			                        <tr>
			                             <td class="title">아이디</td>
			                             <td><input type="text" id="id" name="memberId" class="input"></td>
			                            
			                        </tr>
			                        <tr>
			                             <td class="title">전화번호</td>
			                             <td><input type="text" id="phone" name="memberPhone" class="input" placeholder="ex)010-0000-0000"></td>
			                         </tr>
			                     </table>    
			                       
                        </td>
                        <td>
                        
												                        
                        	 <span ><button  id="btn" >확인</button></span>
                        	 
                        	 
                        </td>
                        
                      </tr>   
                
                </table>
             </div>
                		
                		 
                		 <form action="/pwSearchUpdate" method="post">
                		<div type="text" id="result"></div>
                		</form>
                
  </div>
    
    
    <jsp:include page="/WEB-INF/views/common/footer.jsp" />        
    
</body>
	<script>
			var i=0;
		$(function(){
			$("#btn").click(function(){
				var memberId=$("#id").val();
				var memberPhone=$("#phone").val();
				$("#result").html("");
			$.ajax({
				url:"/pwSearch",
				type:"get",
				data:{memberId:memberId,memberPhone:memberPhone},
				success:function(data){
					if(data==1){
						
						$("#result").html("<input type='hidden' id='id' name='memberId' value="+memberId+"><br>"
								+"새로운 비밀번호<input type='text' id='pw' name='newPw'><br><span class='comment1'></span><br>"
					               +"비밀번호 확인<input type='text' id='rePw' name='newPw'><button id='btn2' type='submit'>실행</button>"+
					               "<br><span class='comment2'></span>");
						
						
						
					}else{
						$("#result").html("일치하는 정보가 없습니다.");
					}
				 $("#pw").focusout(function () {
					 var pwReg=/^[a-zA-Z0-9]{8,12}/;
						
						
					 if(!pwReg.test($("#pw").val())){
						 $(".comment1").html("8~12자리로 입력해주세요.");
			            }else{
			            	$(".comment1").html("");
			                i++;
			            	
			            }
					 $('#rePw').focusout();
				 });
				 $('#rePw').focusout(function(){
			            if($('#rePw').val()==$("#pw").val()){
			            	$(".comment2").html("");
			            	i++;
			            }else{
			            	$(".comment2").html("비밀번호를 확인해주세요");
			            	
			            }
			           
			        });
				 
				 $("form").submit(function () {
					 i = 0;
						$("#pw").focusout();
		                if(i>=2){
		                	return true;
		                }else{
		                	return false;
		                }
		                     
				});
			}
			});	
				 
			});

			});
			
	
	</script>
	
	<style>
	/* 헤더 제대로적용------------------------ */
.headermiddle input[type="text"] {
	height: 25px;
	margin-bottom: 10px;
	padding: 0;
}

.homeIcon>img {
	margin-top: 5px;
}

.headermiddle {
	padding-top: 4px;
}
/* 헤더 제대로적용------------------------ */
	.content {
            /*-지우지마세요-*/
            width: 1200px;
            overflow: hidden;
            margin: 0px auto 0 auto;
            height: 500px;
           
        }
       
        #btn{
			width:90px;
			height:70px; 
			 background-color:#CD3C41;
			 border-radius:5px;
			 border:1px;  
			 color:white;
			 font-size:15px;
        }
        
        #btn2{
        	width:50px;
        	height:30px;
        	background-color:#CD3C41;
        	color:white;
        	border-radius:5px;
        	border:1px;
        	margin-left:10px;
        }
        #btn:hover{
        	cursor:pointer;
        	background-color:red;
        }
        #btn2:hover{
        	cursor:pointer;
        	background-color:red;
        }
        .content>h1{
        	font-size:40px;
        	margin: 0px auto;
        }
        #img1{
           
            width: 100%;
            height: 450px;
        } 
        #top{
        	width:200px;
	        height: 50px;
	        margin: 0px auto;
	       
	        margin-top: 70px;
	        margin-bottom: 50px;
	        
        
        }
        .input{
       		width:200px;
	        height: 30px;
        	border:1px solid black;
        	border-radius:5px;
        }
        .title{
        	margin: 0px auto;
        	margin-left:100px;
        	font-size:20px;
        }
        #t1{
        	margin-left:400px;
        }
        #t2{
        	margin:0 auto;
        }
       
        #result{
        margin-left:500px;
        	width:250px;
        	height:30px;
        	font-size:20px;
        	
        }
	</style>
</html>