/// login_preCheck(id, type)

var params = "id="+urlencode(string(argument0))+"&type="+urlencode(string(argument1));

return api_do("user/exists/", params);


