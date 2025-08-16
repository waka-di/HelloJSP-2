<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
 <head>
 <meta charset="utf-8">
 <title>TEST</title>
</head>
<body>
<p>こんにちは！</p>
<% out.println(new java.util.Date()); %>

<%!
static int add(int a, int b){
return a+b;
}
%>
<p>1+2=<%=add(1,2) %></p>
<p>1+2=<%=add(3,4) %></p>

<%! static int countA=0; %>  <%-- サーバが動いてる限り、値が保持され続けるから増えてく --%>
<%
int countB=0;  // リクエストごとに毎回0から宣言
countA++;
countB++;
%>
<p>宣言による変数 countA=<%=countA %></p>
<p>スクリプトレットによる変数 countB=<%=countB %></p>

<p><% out.println(Math.random()); %></p>  <%-- ランダムな0以上1未満の小数を返すメソッド --%>
<p><%=Math.random() %></p>  <%-- 実際に裏では「out.println(Math.random());」に変換--%>

<p>お名前を入力してください。</p>
<form method="post" action="greeting-out.jsp">
<input type="text" name="user">
<input type="submit" value="確定">
</form>

<form method="post" action="total-out.jsp">
<input type="text" name="price">
円ｘ
<input type="text" name="count">
個+送料
<input type="text" name="delivery">
円=
<input type="submit" value="計算">
</form>

</body>
</html>