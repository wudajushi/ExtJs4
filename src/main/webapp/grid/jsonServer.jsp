<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String[] persons = new String[6];
	persons[0] = "{ id : 0 , name : 'tom' , age : 24 ,family : {father:'mike',mother:'lucy'}}";
	persons[1] = "{ id : 1 , name : 'jack' , age : 18 ,family : {father:'mike',mother:'lucy'}}";
	persons[2] = "{ id : 2 , name : 'mary' , age : 23 ,family : {father:'mike',mother:'lucy'}}";
	persons[3] = "{ id : 3 , name : 'jone' , age : 19 ,family : {father:'mike',mother:'lucy'}}";
	persons[4] = "{ id : 4 , name : 'ada' , age : 22 ,family : {father:'mike',mother:'lucy'}}";
	persons[5] = "{ id : 5 , name : 'alex' , age : 28 ,family : {father:'mike',mother:'lucy'}}";

	int start = Integer.parseInt(request.getParameter("start").toString());
	int limit = Integer.parseInt(request.getParameter("limit").toString());

	System.out.println("start="+start+ " limit="+limit);
	StringBuffer personName = new StringBuffer();
	personName.append("{");
	personName.append("total : 6,");
	personName.append("rows : [");
	int length = start + limit;
	if(length > 6){
		length = 6;
	}
	for(int i = start ; i < length ; i++){
		personName.append(persons[i]);
		if(i < length - 1){
			personName.append(",");
		}
	};
	personName.append("]");
	personName.append("}");
	response.getWriter().write(personName.toString());
%>