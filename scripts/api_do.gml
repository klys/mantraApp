/// api_do(level, params)
var level = argument0;
var apikey = "8e3e02af92f5654e8ecdf9416cd7019ba88213b620ddc7d5eea6e56721b70add";
var url = server+"/api/mantra/v1/"+level;
var params = "key="+urlencode(apikey)+"&"+argument1;
show_debug_message("API-SEND")
show_debug_message("URL:"+url)
show_debug_message("PARAMS:"+params)
return http_post_string(url,params);
