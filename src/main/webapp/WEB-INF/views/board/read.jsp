<%--
  Created by IntelliJ IDEA.
  User: peter
  Date: 2022-04-25
  Time: 오전 1:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<textarea></textarea>

<body>
    ${listDTO}
    ${dto}

<button class="listBtn">리스트</button>
<button class="modBtn">수정/삭제</button>

</body>

<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script>
    async function getReplyList(bno){


        const res = axios.get(`/replies/list/${bno}`)
        const data = res.data
        return data
    }
    const bno = ${dto.bno}
        getReplyList(bno).then(data=>console.log(data))


    document.querySelector(".listBtn").addEventListener("click",(e)=>{
        self.location = `/board/list${listDTO.link}`
    },false)
    document.querySelector(".modBtn").addEventListener("click",(e)=>{
        self.location = `/board/modify/${bno}${listDTO.link}`
            },false)
</script>
</html>
