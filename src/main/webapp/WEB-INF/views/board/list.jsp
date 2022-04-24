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

<h1>${listDTO}</h1>


<hr/>

<h3>${listDTO.link}</h3>

<div class="searchDiv">
    <select class="type">
        <option value="">---</option>
        <option value="t" ${listDTO.type =="t"?"selected":""}>제목</option>
        <option value="tc"  ${listDTO.type =="tc"?"selected":""}>제목내용</option>
        <option value="tcw"  ${listDTO.type =="tcw"?"selected":""}>제목내용작성자</option>
    </select>
    <input type="text" name="keyword" value="${listDTO.keyword}">
    <button class="searchBtn">Search</button>
</div>


<ul>
    <c:forEach items="${dtoList}" var="board">
        <li>
            <span> ${board.bno} </span>
            <span><a href='/board/read${listDTO.link}&bno=${board.bno}'> ${board.title}</a></span>
        </li>
    </c:forEach>
</ul>


${pageMaker}

<style>

    .pagination {
        display: flex;
    }
    .pagination .page-item {
        margin: 0.3em;
        list-style: none;
    }

</style>


<ul class="pagination">
    <li class="page-item">
        <a class="page-link" href="#" aria-label="Previous">
            <span aria-hidden="true">&laquo;</span>
        </a>
    </li>

    <c:forEach begin="${pageMaker.start}" end="${pageMaker.end}" var="num">
        <li class="page-item"><a class="page-link" href="${num}">${num}</a></li>
    </c:forEach>


    <li class="page-item">
        <a class="page-link" href="#" aria-label="Next">
            <span aria-hidden="true">&raquo;</span>
        </a>
    </li>
</ul>

<form class="actionForm" action="/board/list" method="get">
    <input type="hidden" name="page" value="${listDTO.page}">
    <input type="hidden" name="size" value="${listDTO.size}">
    <input type="hidden" name="type" value="${listDTO.type == null? "":listDTO.type}">
    <input type="hidden" name="keyword" value="${listDTO.keyword == null? "":listDTO.keyword}">
</form>

<script>

    const linkTags = document.querySelectorAll(".page-link")
    const actionForm = document.querySelector(".actionForm")

    console.log(linkTags)

    for (const tag of linkTags) {
        //console.log(tag)
        tag.addEventListener("click",(e)=>{
            e.preventDefault()
            console.log(tag.href)
            const pageNum = tag.getAttribute("href")


            actionForm.querySelector("input[name='page']").value = pageNum
            actionForm.submit()

        },false)
    }

    document.querySelector(".searchBtn").addEventListener("click",(e)=> {
        const type = document.querySelector('.searchDiv .type').value
        const keyword = document.querySelector(".searchDiv input[name='keyword']").value

        console.log(type, keyword)

        actionForm.querySelector("input[name='page']").value = 1
        actionForm.querySelector("input[name='type']").value = type
        actionForm.querySelector("input[name='keyword']").value = keyword
        actionForm.submit()


    },false)



    <%--   단순한 데이터 보내기 방식으로 할 시 param을 추가하여 받을 수 있게 해줌 단순한 방법   --%>
    <%--const result = ${param.result}--%>
    const result = `${result == null ? "" : result}`
    console.log(result)

    if (result !== '') {
        alert("처리되었습니다.")
    }

</script>
</body>
</html>
