__int64 __fastcall sub_BA4E4(__int64 *a1, unsigned __int64 a2, __int64 a3)
{
  _BOOL4 v3; // w14
  int *v4; // x6
  __int64 v5; // x7
  __int64 v6; // x5
  __int64 v7; // x9
  __int64 v8; // x4
  _QWORD *v9; // x5
  _QWORD *i; // x1
  int *v11; // x8
  _QWORD *v12; // x1
  __int64 v13; // x13
  unsigned __int64 v14; // x9
  __int64 v15; // x10
  __int64 v16; // x12
  int *v17; // x11
  int v18; // w0
  unsigned __int64 v19; // x1
  _QWORD *v21; // x0
  _BYTE *v22; // x21
  char v23; // w20
  char *v25; // x0
  char *v26; // x0
  int v27; // w20
  char *v28; // x0
  char *v29; // x22
  unsigned __int64 v30; // x1
  unsigned __int64 v31; // x0
  unsigned __int64 v32; // x3
  unsigned __int64 v33; // x4
  __int64 v34; // x20
  __int64 v35; // x23
  unsigned __int8 v36; // w24
  unsigned int v37; // w0
  _BYTE *v38; // x21
  __int64 v39; // x2
  unsigned int *v40; // x0
  char v41; // w20
  char *v42; // x0
  char *v43; // [xsp+48h] [xbp+48h]
  unsigned int *v44; // [xsp+50h] [xbp+50h] BYREF
  unsigned __int64 v45; // [xsp+58h] [xbp+58h] BYREF
  unsigned __int64 v46[4]; // [xsp+60h] [xbp+60h] BYREF
  __int64 v47; // [xsp+80h] [xbp+80h]

  v3 = a2 > 0x2F;
  v4 = (int *)a1[2];
  v5 = *a1;
  if ( a2 > 0x2F && *(_DWORD *)(a3 + 40) )
  {
    v6 = a1[5];
    if ( a1[4] == qword_69EA028 && v6 == qword_69EA2E8 )
    {
      v7 = qword_69EA2F0;
      v8 = 0LL;
      v9 = 0LL;
      for ( i = (_QWORD *)qword_69EA2F0; i; i = (_QWORD *)i[5] )
      {
        if ( *(_QWORD *)a3 >= *i && *(_QWORD *)a3 < i[1] )
        {
          v5 = i[2];
          v11 = (int *)i[3];
          if ( i != (_QWORD *)qword_69EA2F0 )
          {
            v9[5] = i[5];
            i[5] = v7;
            qword_69EA2F0 = (__int64)i;
          }
          goto LABEL_41;
        }
        if ( *(_OWORD *)i == 0LL )
        {
          v8 = (__int64)i;
          break;
        }
        v8 = (__int64)i;
        if ( i[5] )
          v9 = i;
      }
LABEL_21:
      v13 = *((unsigned __int16 *)a1 + 12);
      v14 = 0LL;
      v15 = 0LL;
      v16 = 0LL;
      v17 = 0LL;
      v11 = 0LL;
      while ( --v13 != -1 )
      {
        v18 = *v4;
        if ( *v4 == 1 )
        {
          v19 = v5 + *((_QWORD *)v4 + 2);
          if ( *(_QWORD *)a3 >= v19 && *(_QWORD *)a3 < v19 + *((_QWORD *)v4 + 5) )
          {
            v14 = v19 + *((_QWORD *)v4 + 5);
            v15 = v5 + *((_QWORD *)v4 + 2);
            v16 = 1LL;
          }
        }
        else if ( v18 == 1685382480 )
        {
          v11 = v4;
        }
        else if ( v18 == 2 )
        {
          v17 = v4;
        }
        v4 += 14;
      }
      if ( !v16 )
        return 0LL;
      if ( v3 )
      {
        if ( v9 && v8 )
        {
          v9[5] = *(_QWORD *)(v8 + 40);
          *(_QWORD *)(v8 + 40) = qword_69EA2F0;
          qword_69EA2F0 = v8;
        }
        v21 = (_QWORD *)qword_69EA2F0;
        *(_QWORD *)(qword_69EA2F0 + 16) = v5;
        v21[3] = v11;
        v21[4] = v17;
        *v21 = v15;
        v21[1] = v14;
      }
LABEL_41:
      if ( !v11 )
        return 0LL;
      v22 = (_BYTE *)(v5 + *((_QWORD *)v11 + 2));
      if ( *v22 != 1 )
        return 1LL;
      v23 = v22[1];
      v25 = (char *)sub_BA098(v23, a3);
      v26 = sub_BA0F8(v23, v25, v22 + 4, (unsigned __int64 *)&v44);
      v27 = (unsigned __int8)v22[2];
      if ( v27 != 255 && v22[3] == 59 )
      {
        v43 = v26;
        v28 = (char *)sub_BA098(v27, a3);
        v29 = sub_BA0F8(v27, v28, v43, &v45);
        if ( !v45 )
          return 1LL;
        if ( ((unsigned __int8)v29 & 3) == 0 )
        {
          v30 = *(_QWORD *)a3;
          if ( *(_QWORD *)a3 >= (unsigned __int64)&v22[*(int *)v29] )
          {
            v31 = v45 - 1;
            if ( v30 < (unsigned __int64)&v22[*(int *)&v29[8 * v45 - 8]] )
            {
              v32 = v45 - 1;
              v33 = 0LL;
              do
              {
                while ( 1 )
                {
                  if ( v33 >= v32 )
                    abort();
                  v31 = (v32 + v33) >> 1;
                  if ( v30 >= (unsigned __int64)&v22[*(int *)&v29[8 * v31]] )
                    break;
                  v32 = (v32 + v33) >> 1;
                }
                v33 = v31 + 1;
              }
              while ( v30 >= (unsigned __int64)&v22[*(int *)&v29[8 * v31 + 8]] );
            }
            v34 = 8 * v31;
            v35 = (__int64)&v22[*(int *)&v29[8 * v31 + 4]];
            v36 = sub_BA4D4(v35);
            v37 = sub_B9FD8(v36);
            sub_BA0F8(v36 & 0xF, 0LL, (char *)(v35 + v37 + 8), v46);
            v38 = &v22[*(int *)&v29[v34]];
            if ( *(_QWORD *)a3 < (unsigned __int64)&v38[v46[0]] )
              *(_QWORD *)(a3 + 32) = v35;
            *(_QWORD *)(a3 + 24) = v38;
          }
          return 1LL;
        }
      }
      v46[1] = *(_QWORD *)(a3 + 8);
      v46[2] = *(_QWORD *)(a3 + 16);
      v47 = 0LL;
      v39 = *(_QWORD *)a3;
      LOBYTE(v47) = 4;
      v46[0] = 0LL;
      v46[3] = (unsigned __int64)v44;
      v40 = sub_BA374((__int64)v46, v44, v39);
      *(_QWORD *)(a3 + 32) = v40;
      if ( v40 )
      {
        v41 = sub_BA4D4((__int64)v40);
        v42 = (char *)sub_BA098(v41, a3);
        sub_BA0F8(v41, v42, (char *)(*(_QWORD *)(a3 + 32) + 8LL), &v45);
        *(_QWORD *)(a3 + 24) = v45;
      }
      return 1LL;
    }
    qword_69EA028 = a1[4];
    v12 = &unk_69EA328;
    qword_69EA2E8 = v6;
    do
    {
      *(v12 - 6) = 0LL;
      *(v12 - 5) = 0LL;
      *(v12 - 1) = v12;
      v12 += 6;
    }
    while ( v12 != (_QWORD *)&MEMORY[0x69EA4A8] );
    qword_69EA470 = 0LL;
    qword_69EA2F0 = (__int64)&unk_69EA2F8;
    *(_DWORD *)(a3 + 40) = 0;
LABEL_19:
    v8 = 0LL;
    v9 = 0LL;
    goto LABEL_21;
  }
  if ( a2 > 0x19 )
    goto LABEL_19;
  return 0xFFFFFFFFLL;
}
