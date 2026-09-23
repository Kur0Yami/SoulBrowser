package com.mycompany.app.db.book;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.mycompany.app.data.DataUtil;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSync;
import com.nostra13.universalimageloader.core.ImageLoader;

/* loaded from: classes3.dex */
public class DbBookDown extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbBookDown f12930c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r12) {
        /*
            if (r12 != 0) goto L4
            goto Lc5
        L4:
            java.lang.String r0 = ".down"
            java.lang.String r0 = com.mycompany.app.main.MainUtil.G0(r12, r0)
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 == 0) goto L12
            goto Lc5
        L12:
            java.io.File r1 = new java.io.File
            r1.<init>(r0)
            java.io.File[] r0 = r1.listFiles()
            if (r0 == 0) goto Lc5
            int r1 = r0.length
            if (r1 != 0) goto L22
            goto Lc5
        L22:
            java.lang.String r1 = "_status"
            java.lang.String r2 = "_url"
            java.lang.String r3 = "_path"
            java.lang.String[] r6 = new java.lang.String[]{r1, r2, r3}
            r10 = 0
            r11 = 0
            com.mycompany.app.db.book.DbBookDown r4 = b(r12)     // Catch: java.lang.Exception -> La3
            android.database.sqlite.SQLiteDatabase r4 = r4.getWritableDatabase()     // Catch: java.lang.Exception -> La3
            java.lang.String r5 = "DbBookDown_table"
            r8 = 0
            r9 = 0
            r7 = 0
            android.database.Cursor r4 = com.mycompany.app.db.DbUtil.g(r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Exception -> La3
            r5 = 1
            if (r4 == 0) goto La7
            boolean r6 = r4.moveToFirst()     // Catch: java.lang.Exception -> L7e
            if (r6 == 0) goto La7
            int r1 = r4.getColumnIndex(r1)     // Catch: java.lang.Exception -> L7e
            int r2 = r4.getColumnIndex(r2)     // Catch: java.lang.Exception -> L7e
            int r3 = r4.getColumnIndex(r3)     // Catch: java.lang.Exception -> L7e
        L54:
            int r6 = r4.getInt(r1)     // Catch: java.lang.Exception -> L7e
            if (r6 == r5) goto L5e
            r7 = 2
            if (r6 == r7) goto L5e
            goto L9c
        L5e:
            java.lang.String r6 = r4.getString(r3)     // Catch: java.lang.Exception -> L7e
            java.lang.String r6 = com.mycompany.app.main.MainUtil.K0(r12, r6)     // Catch: java.lang.Exception -> L7e
            boolean r7 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Exception -> L7e
            if (r7 == 0) goto L6d
            goto L9c
        L6d:
            java.lang.String r7 = r4.getString(r2)     // Catch: java.lang.Exception -> L7e
            int r7 = com.mycompany.app.main.MainDownSvc.s(r7)     // Catch: java.lang.Exception -> L7e
            if (r11 != 0) goto L81
            java.util.ArrayList r8 = new java.util.ArrayList     // Catch: java.lang.Exception -> L7e
            r8.<init>()     // Catch: java.lang.Exception -> L7e
            r11 = r8
            goto L81
        L7e:
            r12 = r11
            r11 = r4
            goto La4
        L81:
            r11.add(r6)     // Catch: java.lang.Exception -> L7e
            r8 = 14
            if (r7 != r8) goto L9c
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L7e
            r7.<init>()     // Catch: java.lang.Exception -> L7e
            r7.append(r6)     // Catch: java.lang.Exception -> L7e
            java.lang.String r6 = "b"
            r7.append(r6)     // Catch: java.lang.Exception -> L7e
            java.lang.String r6 = r7.toString()     // Catch: java.lang.Exception -> L7e
            r11.add(r6)     // Catch: java.lang.Exception -> L7e
        L9c:
            boolean r6 = r4.moveToNext()     // Catch: java.lang.Exception -> L7e
            if (r6 != 0) goto L54
            goto La7
        La3:
            r12 = r11
        La4:
            r5 = r10
            r4 = r11
            r11 = r12
        La7:
            if (r4 == 0) goto Lac
            r4.close()
        Lac:
            if (r5 == 0) goto Lc5
            int r12 = r0.length     // Catch: java.lang.Exception -> Lc5
        Laf:
            if (r10 >= r12) goto Lc5
            r1 = r0[r10]     // Catch: java.lang.Exception -> Lc5
            if (r11 == 0) goto Lbf
            java.lang.String r2 = r1.getPath()     // Catch: java.lang.Exception -> Lc5
            boolean r2 = r11.contains(r2)     // Catch: java.lang.Exception -> Lc5
            if (r2 != 0) goto Lc2
        Lbf:
            com.mycompany.app.main.MainUtil.y(r1)     // Catch: java.lang.Exception -> Lc5
        Lc2:
            int r10 = r10 + 1
            goto Laf
        Lc5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookDown.a(android.content.Context):void");
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.sqlite.SQLiteOpenHelper, com.mycompany.app.db.book.DbBookDown] */
    public static DbBookDown b(Context context) {
        if (f12930c == null) {
            synchronized (DbBookDown.class) {
                try {
                    if (f12930c == null) {
                        f12930c = new SQLiteOpenHelper(MainUtil.R(context), "DbBookDown.db", (SQLiteDatabase.CursorFactory) null, 6);
                    }
                } finally {
                }
            }
        }
        return f12930c;
    }

    public static String d(Context context, long j) {
        Cursor cursor;
        String str = null;
        if (context != null && j > 0) {
            try {
                cursor = DbUtil.f(b(context).getWritableDatabase(), "DbBookDown_table", new String[]{"_path"}, j);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            str = cursor.getString(cursor.getColumnIndex("_path"));
                        }
                    } catch (Exception unused) {
                    }
                }
            } catch (Exception unused2) {
                cursor = null;
            }
            if (cursor != null) {
                cursor.close();
            }
        }
        return str;
    }

    public static String e(Context context, long j) {
        Cursor cursor;
        String str = null;
        if (context != null && j > 0) {
            try {
                cursor = DbUtil.f(b(context).getWritableDatabase(), "DbBookDown_table", new String[]{"_url"}, j);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            str = cursor.getString(cursor.getColumnIndex("_url"));
                        }
                    } catch (Exception unused) {
                    }
                }
            } catch (Exception unused2) {
                cursor = null;
            }
            if (cursor != null) {
                cursor.close();
            }
        }
        return str;
    }

    public static boolean f(Context context, String str, boolean z) {
        String str2;
        boolean z2 = false;
        if (context != null && !TextUtils.isEmpty(str)) {
            if (z) {
                str2 = "1";
            } else {
                str2 = "0";
            }
            String[] strArr = {str2, str};
            Cursor cursor = null;
            try {
                cursor = DbUtil.g(b(context).getWritableDatabase(), "DbBookDown_table", null, "_secret=? AND _path=?", strArr, null);
                if (cursor != null) {
                    if (cursor.moveToFirst()) {
                        z2 = true;
                    }
                }
            } catch (Exception unused) {
            }
            if (cursor != null) {
                cursor.close();
            }
        }
        return z2;
    }

    public static long i(Context context, String str, String str2, MainUri.UriItem uriItem) {
        return j(context, str, str2, uriItem, PrefSync.k, PrefSecret.m);
    }

    public static long j(Context context, String str, String str2, MainUri.UriItem uriItem, boolean z, long j) {
        int d;
        if (context == null || TextUtils.isEmpty(uriItem.e)) {
            return 0L;
        }
        int P0 = MainUtil.P0(uriItem.f);
        long j2 = uriItem.h;
        long u = u(context, 3, P0, str, str2, uriItem, j2, j2, false, z, j, true);
        if (uriItem.h == 0 || P0 == 32 || ((d = DataUtil.d(uriItem.f)) != 1 && d != 2 && d != 3)) {
            return u;
        }
        DataUtil.a(context, d, uriItem);
        return u;
    }

    public static void k(Context context, long j) {
        if (context == null) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("_status", (Integer) 3);
        contentValues.put("_rsv4", (Integer) 0);
        DbUtil.h(b(context).getWritableDatabase(), "DbBookDown_table", contentValues, "_id=?", new String[]{Long.toString(j)});
    }

    public static void l(long j, Context context, String str, String str2, boolean z) {
        if (context != null && j > 0) {
            if (z && !TextUtils.isEmpty(str)) {
                MainUtil.A(context, str);
            }
            if (!TextUtils.isEmpty(str2)) {
                ImageLoader.f().l(str2);
            }
            DbUtil.b(b(context).getWritableDatabase(), "DbBookDown_table", j);
        }
    }

    public static void m(Context context) {
        if (context == null) {
            return;
        }
        DbUtil.a(b(context).getWritableDatabase(), "DbBookDown_table", "_secret=? AND _status>?", new String[]{"1", "2"});
    }

    public static void n(Context context, long j, long j2, long j3, boolean z) {
        if (context == null) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put("_status", (Integer) 2);
        } else {
            contentValues.put("_status", (Integer) 1);
        }
        contentValues.put("_rsv4", (Integer) 0);
        if (j2 > 0) {
            contentValues.put("_size", Long.valueOf(j2));
        }
        if (j3 > 0) {
            contentValues.put("_read", Long.valueOf(j3));
        }
        DbUtil.h(b(context).getWritableDatabase(), "DbBookDown_table", contentValues, "_id=?", new String[]{Long.toString(j)});
    }

    public static void o(Context context, long j, long j2, int i) {
        if (context != null) {
            if (j2 == 0 && i == 0) {
                return;
            }
            ContentValues contentValues = new ContentValues();
            if (j2 > 0) {
                contentValues.put("_size", Long.valueOf(j2));
            }
            if (i > 0) {
                contentValues.put("_fast", Integer.valueOf(i));
            }
            DbUtil.h(b(context).getWritableDatabase(), "DbBookDown_table", contentValues, "_id=?", new String[]{Long.toString(j)});
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [int] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long u(android.content.Context r18, int r19, int r20, java.lang.String r21, java.lang.String r22, com.mycompany.app.main.MainUri.UriItem r23, long r24, long r26, boolean r28, boolean r29, long r30, boolean r32) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookDown.u(android.content.Context, int, int, java.lang.String, java.lang.String, com.mycompany.app.main.MainUri$UriItem, long, long, boolean, boolean, long, boolean):long");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbBookDown_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _status INTEGER, _type INTEGER, _url TEXT, _dir TEXT, _dname TEXT, _path TEXT, _name TEXT, _size INTEGER, _read INTEGER, _time INTEGER, _fast INTEGER, _vcnt1 INTEGER, _vcnt2 INTEGER, _vcnt3 INTEGER, _acnt1 INTEGER, _acnt2 INTEGER, _acnt3 INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookDown_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookDown_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _status INTEGER, _type INTEGER, _url TEXT, _dir TEXT, _dname TEXT, _path TEXT, _name TEXT, _size INTEGER, _read INTEGER, _time INTEGER, _fast INTEGER, _vcnt1 INTEGER, _vcnt2 INTEGER, _vcnt3 INTEGER, _acnt1 INTEGER, _acnt2 INTEGER, _acnt3 INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
