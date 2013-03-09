static int constrain (lua_State *L) {
  lua_Number x, a, b, res = 0;
  x = luaL_checknumber(L, 1);
  a = luaL_checknumber(L, 2);
  b = luaL_checknumber(L, 3);

  res = ((x > a) && (x < b)) ? x : (x < a) ? a : b;
  
  lua_pushnumber(L, res);
  return 1;
}