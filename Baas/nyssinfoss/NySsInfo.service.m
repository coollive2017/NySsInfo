<?xml version="1.0" encoding="UTF-8"?><model xmlns="http://www.justep.com/model"><action xmlns="http://www.w3.org/1999/xhtml" name="queryDorm_ms_user" impl="action:common/CRUD/query"><private name="condition" type="String"></private><private name="db" type="String">nyssinfo</private><private name="tableName" type="String">dorm_ms_user</private><public name="columns" type="Object"></public><public name="filter" type="String"></public><public name="limit" type="Integer"></public><public name="offset" type="Integer"></public><public name="orderBy" type="String"></public><public name="variables" type="Object"></public></action><action xmlns="http://www.w3.org/1999/xhtml" name="saveDorm_ms_user" impl="action:common/CRUD/save"><private name="db" type="String">nyssinfo</private><private name="permissions" type="Object"><![CDATA[{"dorm_ms_user":""}]]></private><public name="tables" type="List"></public></action><action xmlns="http://www.w3.org/1999/xhtml" name="queryDorm_check_list" impl="action:common/CRUD/query"><private name="condition" type="String"></private><private name="db" type="String">nyssinfo</private><private name="tableName" type="String">dorm_check_list</private><public name="columns" type="Object"></public><public name="filter" type="String"></public><public name="limit" type="Integer"></public><public name="offset" type="Integer"></public><public name="orderBy" type="String"></public><public name="variables" type="Object"></public></action><action xmlns="http://www.w3.org/1999/xhtml" name="saveDorm_check_list" impl="action:common/CRUD/save"><private name="db" type="String">nyssinfo</private><private name="permissions" type="Object"><![CDATA[{"dorm_check_list":""}]]></private><public name="tables" type="List"></public></action></model>