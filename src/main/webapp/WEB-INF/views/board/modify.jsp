<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>modify</h1>



            <button class="listBtn">리스트</button>
            <button class="modPostBtn">수정</button>
            <button class="delPostBtn">삭제</button>

            <%--<form class="actionForm" action="/board/modify/{bno}" method="post">--%>
            <%--    <input type="hidden" name="bno" value="${dto.bno}">--%>
            <%--</form>--%>

            <form class="actionForm" action="/board/remove/${bno}" method="post"></form>

            <script>

            function sQuery(expression){
            return document.querySelector(expression)
            }

            const bno =${dto.bno}

            const actionForm = sQuery(".actionForm")

            document.querySelector(".listBtn").addEventListener("click", (e) => {
            self.location = `/board/list${listDTO.link}`
            }, false)

            sQuery(".delPostBtn").addEventListener("click", (e) => {
            actionForm.setAttribute("action", `/board/remove/${bno}`)
            actionForm.submit()
            }, false)

            </script>
            </body>
            </html>
