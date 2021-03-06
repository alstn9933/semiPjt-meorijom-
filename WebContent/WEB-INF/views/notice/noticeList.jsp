<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지사항</title>
<style>
/* 헤더 제대로적용------------------------ */
.headermiddle input[type="text"] {
	height: 25px;
	margin-bottom:10px;
	padding:0;
}
.homeIcon>img {
	margin-top:5px;
}
.headermiddle{
	padding-top:4px;
}
/* 헤더 제대로적용------------------------ */
	.content2 {
            /*-지우지마세요-*/
            width: 1200px;
            overflow: hidden;
            margin: 0 auto;
        }
	.subMenuColor {
             margin-top: 130px;
            padding-top: 50px;
            padding-left: 100px;
            font-size:50px;    
            text-decoration: underline;
            letter-spacing: 80%;
            width: 100%;
            height: 200px;
            opacity: 90%;
            color: white;
            background-color: #2a2829;
        }

        .subMenuContent>.inner {
            width: 1200px;
            margin: 0 auto;
            margin-top: -10px;
        }

        .subMenuContent>.inner>ul>li {
            float: left;
            width: 398px;
            height: 50px;
            text-align: center;
            background-color: #494949;
            border-left: 0.5px solid ghostwhite;
            border-right: 0.5px solid ghostwhite;
        }
        
        .subMenuContent>.inner>ul>li>a{
            color: #bebebf;
            line-height: 50px;
            display: block;
            font-size: 18px;
        } 
        
        .subMenuContent>.inner>ul>li>a:hover{
            color: ghostwhite;
            
        }
        
        .subMenuContent>.inner>ul>li:hover{
            opacity: 0.9;
        }
        
        .spanbarSmall{
        	width: 50px;
        	height: 3px;
        	border: 3px solid red;
        	display: inline-block;
        }
        
        /* 첫번째 선택 */
        .subMenuContent>.inner>ul>li:first-child{
            background-color: #ed1c24;
        }
        
        .subMenuContent>.inner>ul>li:first-child>a{
            color: ghostwhite;
        }
        .noticeText{
        	margin-left: 350px;
        	margin-bottom: 20px;
        }
        .noticeTable{
        	width:100%;
        	text-align: center;
        	border-bottom: 3px solid grey;
        }
        
        .noticeTable>tbody>tr>th{
        	background-color: grey;
        	opacity: 0.6;
        	color: ghostwhite;
        	height: 50px;
        }
        
        .noticeTable>tbody>tr>th:first-child{
        	width: 250px;
        }
        
        .noticeTable>tbody>tr>th:last-child{
        	width: 250px;
        }
        
        .noticeTable>tbody>tr>td{
        	height: 50px;
        	color: black;
        }
        .noticePageNavi{
        	width:100%;
        	text-align: center;
        	height: 50px;
        	margin: 0 auto;
        	margin-top: 30px;
        	margin-bottom: 30px;
        }
        .noticePageNavi>*{
		margin: 20px;
		}
		
		.noticePageNavi>.noticeBtn{
			width: 30px;
			height: 30px;
			border: 0.5px solid grey;
			display: inline-block;
			line-height: 30px;
		}
		
		.noticePageNavi>.noticePrevBtn{
			width: 50px;
			height: 30px;
			border: 0.5px solid red;
			display: inline-block;
			line-height: 30px;
			background-color: red;
			color: ghostwhite;
			font-weight: bold;
		}
		
		.noticePageNavi>.noticeNextBtn{
			width: 50px;
			height: 30px;
			border: 0.5px solid red;
			display: inline-block;
			line-height: 30px;
			background-color: red;
			color: ghostwhite;
			font-weight: bold;
		}
		
		.noticePageNavi>.selectNoticePage{
			width: 30px;
			height: 30px;
			border: 1px solid #494949;
			display: inline-block;
			line-height: 30px;
			background-color: #494949;
			color : ghostwhite;
			font-weight: bold;
		}
		
		.noticeSearch{
			width: 100%;
			height: 130px;
			background-color: grey;
			text-align: center;
			padding-top: 40px;
		}
		
		.noticeSearchInput{
			width: 300px;
		}
		
		.noticeWriteBtn{
			    display: inline-block;
    			width: 90px;
    			height: 28px;
    			background-color: #ffffff;
    			text-align: center;
    			line-height: 30px;
    			color: #666666;
    			border: 1px solid #D4D4Cd;
    			padding-left: 2px;
    			padding-right: 2px;
    			margin-left: 2px;
    			margin-right: 2px;
    			float: right;
				margin-top: 10px;
		}
		
		.selectBox{
			border-radius: 5px;
			width: 60px;
			height : 26px;
			display: inline-block;
			border : 2px solid black;
			-webkit-appearance: none;  /* 네이티브 외형 감추기 */
    		-moz-appearance: none;
    		appearance: none;
    		text-align: center;
		}
		
		
</style>
<script>
function questionFunc(memberId){
	if(memberId==""){
		alert("로그인이 필요합니다");
		location.href="/loginFrm";
	}else{
		if(memberId=="admin"){
			location.href="/questionAnswer";
		}else{
			location.href="/questionList?questionWriter=${sessionScope.member.memberId}";
		}
	}
}
</script>
</head>
<body>
	<div class="wrapper">
		<jsp:include page="/WEB-INF/views/common/header.jsp" />
		
        <div class="subMenuColor  meorijom" style="font-size:50px;">
            Community
        </div>
		<div class="content2">
            <div class="subMenuContent">
                <div class="inner">
                	<span class="spanbarSmall"></span>
                    <h1 align="center">공지사항</h1>
                    <ul>
                        <li><a href="/noticeList?reqPage=1">공지사항</a></li>
                        <li><a href="/eventList">이벤트</a></li>
                        <li><a href="javascript:void(0);" onclick="questionFunc('${sessionScope.member.memberId}');">1:1문의</a></li>
                    </ul>
                </div>
            </div>
            <br><br>
            <h2 align="center">공지사항 목록</h2>
            <div class="noticeText">
            	저희 MEORIJOM HAIR의 공지사항을 한눈에 살펴보세요.<br>
            	궁금한 점이 있으시거나 자세한 사항은 1:1문의를 통해 질문하시면 친절하게 답변해드립니다.
            </div>
            <table class="noticeTable">
                <tr>
                    <th>작성자</th>
                    <th>제목</th>
                    <th>작성일</th>
                </tr>
                <c:forEach items="${list }" var="n">
				<tr>
					<td style="border-bottom: 0.1px solid #DDE3E9;">
					${n.noticeWriter }</td>
					<td style="border-bottom: 0.1px solid #DDE3E9;"><a href="/noticeDetail?noticeNo=${n.noticeNo}" style="font-weight: bold">${n.noticeTitle }</a></td>
					<td style="border-bottom: 0.1px solid #DDE3E9;">${n.noticeDate }</td>
				</tr>
							
				</c:forEach>
            </table>
            <c:if test="${sessionScope.member.memberId eq 'admin' }">
            <a href="/noticeWrite" class="noticeWriteBtn">글쓰기</a>
            </c:if>
            <div class="noticePageNavi">${pageNavi }</div>
            <div class="noticeSearch">
            	<form action="/noticeSearchTitle">
            		<select name="searchType" class="selectBox">
            			<option value="noticeTitle" selected>제목</option>
            		</select>
            		<input type="text" class="noticeSearchInput" name="searchTitle">
            		<button type="submit" class="noticeSearchBtn">검색</button>
            	</form>
            </div>
        </div>
		<jsp:include page="/WEB-INF/views/common/footer.jsp" />
	</div>
	
</body>
</html>