<!-- pollFormProc.jsp -->
<%@ page  contentType="text/html; charset=EUC-KR"%>
<%request.setCharacterEncoding("EUC-KR");%>
<jsp:useBean id="mgr" class="review3.PollMgr"/>
<%
	int tlistNum = Integer.parseInt(request.getParameter("tnum"));
	String titemNum[] = request.getParameterValues("titemnum");
	boolean result=mgr.updatePoll(tlistNum, titemNum);
	String msg="��ǥ����";
	if(result) msg="��ǥ �Ϸ��߽��ϴ�.";
%>
<script>
	alert("<%=msg%>");
	location.href="pollList.jsp?tnum=<%=tlistNum%>";
</script>