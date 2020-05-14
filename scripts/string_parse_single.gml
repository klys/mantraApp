/// string_parse_single(str,token,N,ignore_null)
/*
**      string_parse_single(str,token,N,ignore_null)
**  Example:
**      string_parse_single("cat|dog|house|bee", "|", 2, true);
**      returns "dog"
*/
{
    var str, token, substr, ignore, N, tlen, temp, i;

    str = argument0;
    token = argument1;
    N = argument2;
    ignore = argument3;

    tlen = string_length( token);

    substr = "";
    i = 0;
    while( string_length( str) != 0 && i < N) {
        temp = string_pos( token, str);
        if( temp) {
            if( temp != 1 || !ignore) {
                substr = string_copy(str, 1, temp - 1);
                i += 1;
            }
            str = string_copy( str, temp + tlen, string_length( str));
        }
        else {
            substr = str;
            i += 1;
            str = "";
        }
    }

    if( i != N)
    return "";
    else
    return substr;
}
