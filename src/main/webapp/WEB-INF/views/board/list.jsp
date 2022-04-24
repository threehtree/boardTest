<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: peter
  Date: 2022-04-24
  Time: 오전 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


    <h3>${listDTO.link}</h3>

    <h1>${pageMaker}</h1>

    <ul>
        <c:forEach items="${dtoList}" var="board">
            <li>
                <span> <a> ${board.bno} </a></span>
                <span><a href='/board/read${listDTO.link}&bno=${board.bno}'>${board.title}</a></span>
                <span>${board.content}</span>
            </li>
        </c:forEach>
    </ul>


  <script>
<%--   단순한 데이터 보내기 방식으로 할 시 param을 추가하여 받을 수 있게 해줌 단순한 방법   --%>
    <%--const result = ${param.result}--%>
    const result = `${result == null ? "" : result}`
    console.log(result)

    if(result !==''){
      alert("처리되었습니다.")
    }

  </script>
</body>
</html>
