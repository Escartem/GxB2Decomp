_QWORD *__fastcall Unwind_SetGR(_QWORD *result, int a2, __int64 a3)
{
  if ( a2 > 97 )
LABEL_2:
    abort();
  if ( (result[104] & 0x4000000000000000LL) != 0 && *((_BYTE *)result + a2 + 856) )
  {
    result[a2] = a3;
  }
  else
  {
    result = (_QWORD *)result[a2];
    if ( byte_69EA280[a2] != 8 )
      goto LABEL_2;
    *result = a3;
  }
  return result;
}
