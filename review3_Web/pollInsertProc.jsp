<!-- pollInsertProc.jsp -->
<%@page contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="mgr" class="review3.PollMgr"/>
<jsp:useBean id="plBean" class="review3.PollListBean"/>
<jsp:setProperty property="*" name="plBean"/>
<jsp:useBean id="piBean" class="review3.PollItemBean"/>
<jsp:setProperty property="*" name="piBean"/>
<%
		boolean result = mgr.insertPoll(plBean, piBean);
		String msg = "���� �߰��� ���� �Ͽ����ϴ�.";
		String url = "pollInsert.jsp";
		if(result){
			msg = "���� �߰��� ���� �Ͽ����ϴ�.";
			url = "pollList.jsp";
		}
%>
<script>
	alert("<%=msg%>");
	location.href = "<%=url%>";
</script>



