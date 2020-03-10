<%@page import="com.candybar.model.Item"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleItemServiceImplProxyid" scope="session" class="com.candybar.service.ItemServiceImplProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleItemServiceImplProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleItemServiceImplProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleItemServiceImplProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        com.candybar.service.ItemServiceImpl getItemServiceImpl10mtemp = sampleItemServiceImplProxyid.getItemServiceImpl();
if(getItemServiceImpl10mtemp == null){
%>
<%=getItemServiceImpl10mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
</TABLE>
<%
}
break;
case 15:
        gotMethod = true;
        String itemId_1id=  request.getParameter("itemId26");
        int itemId_1idTemp  = Integer.parseInt(itemId_1id);
        com.candybar.model.Item getItem15mtemp = sampleItemServiceImplProxyid.getItem(itemId_1idTemp);
if(getItem15mtemp == null){
%>
<%=getItem15mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">itemDescription:</TD>
<TD>
<%
if(getItem15mtemp != null){
java.lang.String typeitemDescription18 = getItem15mtemp.getItemDescription();
        String tempResultitemDescription18 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeitemDescription18));
        %>
        <%= tempResultitemDescription18 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">itemName:</TD>
<TD>
<%
if(getItem15mtemp != null){
java.lang.String typeitemName20 = getItem15mtemp.getItemName();
        String tempResultitemName20 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeitemName20));
        %>
        <%= tempResultitemName20 %>
        <%
}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">itemPrice:</TD>
<TD>
<%
if(getItem15mtemp != null){
%>
<%=getItem15mtemp.getItemPrice()
%><%}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">itemId:</TD>
<TD>
<%
if(getItem15mtemp != null){
%>
<%=getItem15mtemp.getItemId()
%><%}%>
</TD>
</TABLE>
<%
}
break;
case 28:
        gotMethod = true;
        String itemDescription_3id=  request.getParameter("itemDescription33");
            java.lang.String itemDescription_3idTemp = null;
        if(!itemDescription_3id.equals("")){
         itemDescription_3idTemp  = itemDescription_3id;
        }
        String itemName_4id=  request.getParameter("itemName35");
            java.lang.String itemName_4idTemp = null;
        if(!itemName_4id.equals("")){
         itemName_4idTemp  = itemName_4id;
        }
        String itemPrice_5id=  request.getParameter("itemPrice37");
        double itemPrice_5idTemp  = Double.parseDouble(itemPrice_5id);
        String itemId_6id=  request.getParameter("itemId39");
        int itemId_6idTemp  = Integer.parseInt(itemId_6id);
        %>
        <jsp:useBean id="com1candybar1model1Item_2id" scope="session" class="com.candybar.model.Item" />
        <%
        com1candybar1model1Item_2id.setItemDescription(itemDescription_3idTemp);
        com1candybar1model1Item_2id.setItemName(itemName_4idTemp);
        com1candybar1model1Item_2id.setItemPrice(itemPrice_5idTemp);
        com1candybar1model1Item_2id.setItemId(itemId_6idTemp);
        boolean addItem28mtemp = sampleItemServiceImplProxyid.addItem(com1candybar1model1Item_2id);
        String tempResultreturnp29 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(addItem28mtemp));
        %>
        <%= tempResultreturnp29 %>
        <%
break;
case 41:
        gotMethod = true;
        com.candybar.model.Item[] getAllItems41mtemp = sampleItemServiceImplProxyid.getAllItems();
if(getAllItems41mtemp == null){
%>
<%=getAllItems41mtemp %>
<%
}else{
        String tempreturnp42 = null;
        if(getAllItems41mtemp != null){
        List<Item> itemList = java.util.Arrays.asList(getAllItems41mtemp);
        for(Item it : itemList){
        	int id = it.getItemId();
        	String name = it.getItemName();
        	String description = it.getItemDescription();
        	double price = it.getItemPrice();
        	%>
        	<h3>***********ITEM <%=id%>***********</h3>
        	<p>Name => <%=name %></p>
        	<p>Price => <%=price %></p>
        	<p>Description => <%=description %></p>
        	<h3>***********************************</h3>
        	<%
        }
        }
        %>
        <%=tempreturnp42%>
        <%
}
break;
case 44:
        gotMethod = true;
        String itemId_7id=  request.getParameter("itemId47");
        int itemId_7idTemp  = Integer.parseInt(itemId_7id);
        boolean deleteItem44mtemp = sampleItemServiceImplProxyid.deleteItem(itemId_7idTemp);
        String tempResultreturnp45 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(deleteItem44mtemp));
        %>
        <%= tempResultreturnp45 %>
        <%
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>