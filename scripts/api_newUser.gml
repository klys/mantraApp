var params = "name="+urlencode(objAPI_createUser.name)+"&email="+urlencode(objAPI_createUser.email)+"&phone="+urlencode(phone)+"&type="+urlencode(objAPI_createUser.type)+"&typeid="+urlencode(objAPI_createUser.typeid);
return api_do("user/new/",params)
