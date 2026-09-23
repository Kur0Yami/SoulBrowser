package com.mycompany.app.db.book;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.graphics.Bitmap;
import android.support.v4.media.a;
import android.text.TextUtils;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.main.BitmapUtil;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.soulbrowser.R;
import java.io.ByteArrayOutputStream;

/* loaded from: classes3.dex */
public class DbBookWeb extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbBookWeb f12966c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0149 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0144 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r16v15 */
    /* JADX WARN: Type inference failed for: r16v17 */
    /* JADX WARN: Type inference failed for: r16v18 */
    /* JADX WARN: Type inference failed for: r16v5, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r21v12 */
    /* JADX WARN: Type inference failed for: r21v13 */
    /* JADX WARN: Type inference failed for: r21v14 */
    /* JADX WARN: Type inference failed for: r21v3, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.io.OutputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File a(android.content.Context r24, java.lang.String r25) {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookWeb.a(android.content.Context, java.lang.String):java.io.File");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0067  */
    /* JADX WARN: Type inference failed for: r6v5, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.mycompany.app.main.MainItem.ChildItem b(android.content.Context r15, boolean r16, java.lang.String r17, java.lang.String r18, java.lang.String r19, long r20, long r22) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookWeb.b(android.content.Context, boolean, java.lang.String, java.lang.String, java.lang.String, long, long):com.mycompany.app.main.MainItem$ChildItem");
    }

    public static long d(Context context, String str) {
        String str2;
        long j = 0;
        if (context != null && !TextUtils.isEmpty(str)) {
            String[] strArr = {"_id"};
            if (PrefSync.k) {
                str2 = "1";
            } else {
                str2 = "0";
            }
            String[] strArr2 = {str2, str};
            Cursor cursor = null;
            try {
                cursor = DbUtil.g(f(context).getWritableDatabase(), "DbBookWeb_table", strArr, "_secret=? AND _path=?", strArr2, null);
                if (cursor != null && cursor.moveToFirst()) {
                    j = cursor.getLong(cursor.getColumnIndex("_id"));
                }
            } catch (Exception unused) {
            }
            if (cursor != null) {
                cursor.close();
            }
        }
        return j;
    }

    public static byte[] e(Context context, long j) {
        Cursor cursor;
        byte[] bArr = null;
        if (j <= 0) {
            return null;
        }
        try {
            cursor = DbUtil.f(f(context).getWritableDatabase(), "DbBookWeb_table", new String[]{"_icon"}, j);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        bArr = cursor.getBlob(cursor.getColumnIndex("_icon"));
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
        return bArr;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.sqlite.SQLiteOpenHelper, com.mycompany.app.db.book.DbBookWeb] */
    public static DbBookWeb f(Context context) {
        if (f12966c == null) {
            synchronized (DbBookWeb.class) {
                try {
                    if (f12966c == null) {
                        f12966c = new SQLiteOpenHelper(MainUtil.R(context), "DbBookWeb.db", (SQLiteDatabase.CursorFactory) null, 2);
                    }
                } finally {
                }
            }
        }
        return f12966c;
    }

    public static boolean i(Context context, String str, String str2) {
        String str3;
        boolean z = false;
        if (context != null && !TextUtils.isEmpty(str2)) {
            String Y6 = MainUtil.Y6(str);
            String str4 = "/";
            if (!TextUtils.isEmpty(Y6)) {
                str4 = a.C("/", Y6);
            }
            if (PrefSync.k) {
                str3 = "1";
            } else {
                str3 = "0";
            }
            String[] strArr = {str3, "1", str4, str2};
            Cursor cursor = null;
            try {
                cursor = DbUtil.g(f(context).getWritableDatabase(), "DbBookWeb_table", null, "_secret=? AND _isdir=? AND _dir=? AND _title=?", strArr, null);
                if (cursor != null) {
                    if (cursor.moveToFirst()) {
                        z = true;
                    }
                }
            } catch (Exception unused) {
            }
            if (cursor != null) {
                cursor.close();
            }
        }
        return z;
    }

    public static boolean j(Context context, String str) {
        String str2;
        boolean z = false;
        if (context != null && !TextUtils.isEmpty(str)) {
            if (PrefSync.k) {
                str2 = "1";
            } else {
                str2 = "0";
            }
            String[] strArr = {str2, str};
            Cursor cursor = null;
            try {
                cursor = DbUtil.g(f(context).getWritableDatabase(), "DbBookWeb_table", null, "_secret=? AND _path=?", strArr, null);
                if (cursor != null) {
                    if (cursor.moveToFirst()) {
                        z = true;
                    }
                }
            } catch (Exception unused) {
            }
            if (cursor != null) {
                cursor.close();
            }
        }
        return z;
    }

    public static void k(Context context, long j) {
        if (context != null && j > 0) {
            DbUtil.b(f(context).getWritableDatabase(), "DbBookWeb_table", j);
        }
    }

    public static MainItem.ChildItem l(long j, Context context, String str, String str2, boolean z) {
        long j2;
        if (context != null && !TextUtils.isEmpty(str2)) {
            String Y6 = MainUtil.Y6(str);
            String str3 = "/";
            if (!TextUtils.isEmpty(Y6)) {
                str3 = a.C("/", Y6);
            }
            String str4 = str3;
            long currentTimeMillis = System.currentTimeMillis();
            if (j < 0) {
                j2 = currentTimeMillis;
            } else {
                j2 = j;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("_isdir", (Integer) 1);
            contentValues.put("_dir", str4);
            contentValues.put("_title", str2);
            contentValues.put("_time", Long.valueOf(currentTimeMillis));
            contentValues.put("_secret", Integer.valueOf(PrefSync.k ? 1 : 0));
            contentValues.put("_rsv4", Long.valueOf(j2));
            DbUtil.e(f(context).getWritableDatabase(), "DbBookWeb_table", contentValues);
            if (z) {
                return b(context, true, str4, null, str2, currentTimeMillis, j2);
            }
            return null;
        }
        return null;
    }

    public static void m(Context context, String str, String str2, String str3, Bitmap bitmap) {
        if (context != null && !TextUtils.isEmpty(str2)) {
            if (TextUtils.isEmpty(str)) {
                str = "/";
            }
            long currentTimeMillis = System.currentTimeMillis();
            ContentValues contentValues = new ContentValues();
            contentValues.put("_isdir", (Integer) 0);
            contentValues.put("_dir", str);
            contentValues.put("_path", str2);
            contentValues.put("_title", str3);
            contentValues.put("_time", Long.valueOf(currentTimeMillis));
            contentValues.put("_rsv4", Long.valueOf(currentTimeMillis));
            if (MainUtil.m6(str2)) {
                bitmap = BitmapUtil.d(context.getResources(), R.drawable.baseline_search_youtube);
            }
            if (MainUtil.f6(bitmap)) {
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                    contentValues.put("_icon", byteArrayOutputStream.toByteArray());
                    byteArrayOutputStream.close();
                } catch (Exception unused) {
                }
            }
            contentValues.put("_secret", Integer.valueOf(PrefSync.k ? 1 : 0));
            DbUtil.e(f(context).getWritableDatabase(), "DbBookWeb_table", contentValues);
        }
    }

    public static void n(Context context, long j, ContentValues contentValues) {
        if (context != null && j > 0) {
            SQLiteDatabase writableDatabase = f(context).getWritableDatabase();
            if (DbUtil.c(writableDatabase, "DbBookWeb_table", j) == 1) {
                DbUtil.i(writableDatabase, "DbBookWeb_table", contentValues, j);
            }
        }
    }

    public static void o(Context context, Bitmap bitmap, String str) {
        String str2;
        byte[] blob;
        if (context != null && !TextUtils.isEmpty(str) && MainUtil.f6(bitmap)) {
            String[] strArr = {"_icon"};
            if (PrefSync.k) {
                str2 = "1";
            } else {
                str2 = "0";
            }
            String[] strArr2 = {str2, str};
            boolean z = false;
            Cursor cursor = null;
            try {
                cursor = DbUtil.g(f(context).getWritableDatabase(), "DbBookWeb_table", strArr, "_secret=? AND _path=?", strArr2, null);
                if (cursor != null && cursor.moveToFirst() && (blob = cursor.getBlob(cursor.getColumnIndex("_icon"))) != null) {
                    if (blob.length > 0) {
                        z = true;
                    }
                }
            } catch (Exception unused) {
            }
            if (cursor != null) {
                cursor.close();
            }
            if (!z && MainUtil.f6(bitmap)) {
                try {
                    ContentValues contentValues = new ContentValues();
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                    contentValues.put("_icon", byteArrayOutputStream.toByteArray());
                    DbUtil.h(f(context).getWritableDatabase(), "DbBookWeb_table", contentValues, "_secret=? AND _path=?", strArr2);
                    byteArrayOutputStream.close();
                } catch (Exception unused2) {
                }
            }
        }
    }

    public static MainItem.ChildItem u(Context context, String str, String str2, String str3, Bitmap bitmap) {
        String str4;
        if (context != null && !TextUtils.isEmpty(str2)) {
            if (TextUtils.isEmpty(str)) {
                str = "/";
            }
            String str5 = str;
            long currentTimeMillis = System.currentTimeMillis();
            ContentValues contentValues = new ContentValues();
            contentValues.put("_isdir", (Integer) 0);
            contentValues.put("_path", str2);
            contentValues.put("_time", Long.valueOf(currentTimeMillis));
            String[] strArr = {"_icon"};
            if (PrefSync.k) {
                str4 = "1";
            } else {
                str4 = "0";
            }
            v(context, strArr, new String[]{str4, str2}, contentValues, str5, str2, str3, bitmap);
            return b(context, false, str5, str2, str3, currentTimeMillis, currentTimeMillis);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void v(android.content.Context r13, java.lang.String[] r14, java.lang.String[] r15, android.content.ContentValues r16, java.lang.String r17, java.lang.String r18, java.lang.String r19, android.graphics.Bitmap r20) {
        /*
            r0 = r16
            r1 = r17
            r2 = r19
            java.lang.String r6 = "_secret=? AND _path=?"
            java.lang.String r9 = "_icon"
            if (r13 != 0) goto Le
            goto Lcb
        Le:
            r10 = 1
            r11 = 0
            r12 = 0
            com.mycompany.app.db.book.DbBookWeb r3 = f(r13)     // Catch: java.lang.Exception -> L40
            android.database.sqlite.SQLiteDatabase r3 = r3.getWritableDatabase()     // Catch: java.lang.Exception -> L40
            java.lang.String r4 = "DbBookWeb_table"
            r8 = 0
            r5 = r14
            r7 = r15
            android.database.Cursor r12 = com.mycompany.app.db.DbUtil.g(r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> L40
            if (r12 == 0) goto L42
            boolean r14 = r12.moveToFirst()     // Catch: java.lang.Exception -> L40
            if (r14 == 0) goto L42
            boolean r14 = com.mycompany.app.main.MainUtil.f6(r20)     // Catch: java.lang.Exception -> L3e
            if (r14 == 0) goto L3e
            int r14 = r12.getColumnIndex(r9)     // Catch: java.lang.Exception -> L3e
            byte[] r14 = r12.getBlob(r14)     // Catch: java.lang.Exception -> L3e
            if (r14 == 0) goto L3e
            int r14 = r14.length     // Catch: java.lang.Exception -> L3e
            if (r14 <= 0) goto L3e
            r11 = r10
        L3e:
            r14 = r10
            goto L43
        L40:
            r14 = r11
            goto L43
        L42:
            r14 = 2
        L43:
            if (r12 == 0) goto L48
            r12.close()
        L48:
            if (r14 == 0) goto Lcb
            if (r11 != 0) goto L5d
            boolean r3 = com.mycompany.app.main.MainUtil.m6(r18)
            if (r3 == 0) goto L5d
            android.content.res.Resources r3 = r13.getResources()
            int r4 = com.mycompany.app.soulbrowser.R.drawable.baseline_search_youtube
            android.graphics.Bitmap r3 = com.mycompany.app.main.BitmapUtil.d(r3, r4)
            goto L5f
        L5d:
            r3 = r20
        L5f:
            if (r11 != 0) goto L7d
            boolean r4 = com.mycompany.app.main.MainUtil.f6(r3)
            if (r4 == 0) goto L7d
            java.io.ByteArrayOutputStream r4 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Exception -> L7d
            r4.<init>()     // Catch: java.lang.Exception -> L7d
            android.graphics.Bitmap$CompressFormat r5 = android.graphics.Bitmap.CompressFormat.PNG     // Catch: java.lang.Exception -> L7d
            r8 = 100
            r3.compress(r5, r8, r4)     // Catch: java.lang.Exception -> L7d
            byte[] r3 = r4.toByteArray()     // Catch: java.lang.Exception -> L7d
            r0.put(r9, r3)     // Catch: java.lang.Exception -> L7d
            r4.close()     // Catch: java.lang.Exception -> L7d
        L7d:
            java.lang.String r3 = "DbBookWeb_table"
            java.lang.String r4 = "_rsv4"
            java.lang.String r5 = "_title"
            java.lang.String r8 = "_dir"
            if (r14 != r10) goto La4
            r0.put(r8, r1)
            r0.put(r5, r2)
            long r1 = java.lang.System.currentTimeMillis()
            java.lang.Long r14 = java.lang.Long.valueOf(r1)
            r0.put(r4, r14)
            com.mycompany.app.db.book.DbBookWeb r13 = f(r13)
            android.database.sqlite.SQLiteDatabase r13 = r13.getWritableDatabase()
            com.mycompany.app.db.DbUtil.h(r13, r3, r0, r6, r15)
            goto Lcb
        La4:
            r0.put(r8, r1)
            r0.put(r5, r2)
            boolean r14 = com.mycompany.app.pref.PrefSync.k
            java.lang.Integer r14 = java.lang.Integer.valueOf(r14)
            java.lang.String r15 = "_secret"
            r0.put(r15, r14)
            long r14 = java.lang.System.currentTimeMillis()
            java.lang.Long r14 = java.lang.Long.valueOf(r14)
            r0.put(r4, r14)
            com.mycompany.app.db.book.DbBookWeb r13 = f(r13)
            android.database.sqlite.SQLiteDatabase r13 = r13.getWritableDatabase()
            com.mycompany.app.db.DbUtil.e(r13, r3, r0)
        Lcb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookWeb.v(android.content.Context, java.lang.String[], java.lang.String[], android.content.ContentValues, java.lang.String, java.lang.String, java.lang.String, android.graphics.Bitmap):void");
    }

    public static void z(Context context, MainItem.ChildItem childItem, int i) {
        if (context != null && !TextUtils.isEmpty(childItem.g)) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("_rsv4", Integer.valueOf(i));
            String str = "0";
            if (childItem.k) {
                if (PrefSync.k) {
                    str = "1";
                }
                DbUtil.h(f(context).getWritableDatabase(), "DbBookWeb_table", contentValues, "_secret=? AND _isdir=? AND _dir=? AND _title=?", new String[]{str, "1", childItem.e, childItem.h});
                return;
            }
            if (PrefSync.k) {
                str = "1";
            }
            DbUtil.h(f(context).getWritableDatabase(), "DbBookWeb_table", contentValues, "_secret=? AND _path=?", new String[]{str, childItem.g});
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbBookWeb_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _isdir INTEGER, _dir TEXT, _path TEXT, _title TEXT, _icon BLOB, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookWeb_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookWeb_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _isdir INTEGER, _dir TEXT, _path TEXT, _title TEXT, _icon BLOB, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
