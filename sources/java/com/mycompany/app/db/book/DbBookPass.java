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
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSync;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DbBookPass extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbBookPass f12940c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00cf A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ba A[LOOP:0: B:37:0x0049->B:56:0x00ba, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00b8 A[EDGE_INSN: B:57:0x00b8->B:58:0x00b8 BREAK  A[LOOP:0: B:37:0x0049->B:56:0x00ba], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x006c A[EDGE_INSN: B:84:0x006c->B:11:0x006c BREAK  A[LOOP:0: B:37:0x0049->B:56:0x00ba], SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v11, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File a(android.content.Context r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookPass.a(android.content.Context, java.lang.String):java.io.File");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap b(android.content.Context r8, java.lang.String r9) {
        /*
            r0 = 0
            if (r8 == 0) goto L51
            boolean r1 = android.text.TextUtils.isEmpty(r9)
            if (r1 == 0) goto La
            goto L51
        La:
            java.lang.String r1 = "_icon"
            java.lang.String[] r4 = new java.lang.String[]{r1}
            boolean r2 = com.mycompany.app.pref.PrefSync.k
            if (r2 == 0) goto L17
            java.lang.String r2 = "1"
            goto L19
        L17:
            java.lang.String r2 = "0"
        L19:
            java.lang.String[] r6 = new java.lang.String[]{r2, r9}
            com.mycompany.app.db.book.DbBookPass r8 = d(r8)     // Catch: java.lang.Exception -> L3f
            android.database.sqlite.SQLiteDatabase r2 = r8.getWritableDatabase()     // Catch: java.lang.Exception -> L3f
            java.lang.String r3 = "DbBookPass_table"
            java.lang.String r5 = "_secret=? AND _path=?"
            r7 = 0
            android.database.Cursor r8 = com.mycompany.app.db.DbUtil.g(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> L3f
            if (r8 == 0) goto L40
            boolean r9 = r8.moveToFirst()     // Catch: java.lang.Exception -> L40
            if (r9 == 0) goto L40
            int r9 = r8.getColumnIndex(r1)     // Catch: java.lang.Exception -> L40
            byte[] r9 = r8.getBlob(r9)     // Catch: java.lang.Exception -> L40
            goto L41
        L3f:
            r8 = r0
        L40:
            r9 = r0
        L41:
            if (r8 == 0) goto L46
            r8.close()
        L46:
            if (r9 == 0) goto L51
            int r8 = r9.length
            if (r8 <= 0) goto L51
            int r8 = r9.length
            android.graphics.Bitmap r8 = com.mycompany.app.main.BitmapUtil.a(r9, r8)
            return r8
        L51:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookPass.b(android.content.Context, java.lang.String):android.graphics.Bitmap");
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.sqlite.SQLiteOpenHelper, com.mycompany.app.db.book.DbBookPass] */
    public static DbBookPass d(Context context) {
        if (f12940c == null) {
            synchronized (DbBookPass.class) {
                try {
                    if (f12940c == null) {
                        f12940c = new SQLiteOpenHelper(MainUtil.R(context), "DbBookPass.db", (SQLiteDatabase.CursorFactory) null, 2);
                    }
                } finally {
                }
            }
        }
        return f12940c;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    public static ArrayList e(Context context, String str) {
        String str2;
        Cursor cursor;
        ArrayList arrayList = null;
        if (context != null && !TextUtils.isEmpty(str)) {
            if (PrefSync.k) {
                str2 = "1";
            } else {
                str2 = "0";
            }
            try {
                cursor = DbUtil.g(d(context).getWritableDatabase(), "DbBookPass_table", null, "_secret=? AND _path=?", new String[]{str2, str}, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            int columnIndex = cursor.getColumnIndex("_user_val");
                            int columnIndex2 = cursor.getColumnIndex("_pass_val");
                            ArrayList arrayList2 = new ArrayList();
                            do {
                                try {
                                    ?? obj = new Object();
                                    obj.q = cursor.getString(columnIndex);
                                    obj.G = cursor.getString(columnIndex2);
                                    arrayList2.add(obj);
                                } catch (Exception unused) {
                                }
                            } while (cursor.moveToNext());
                            arrayList = arrayList2;
                        }
                    } catch (Exception unused2) {
                    }
                }
            } catch (Exception unused3) {
                cursor = null;
            }
            if (cursor != null) {
                cursor.close();
            }
        }
        return arrayList;
    }

    public static long f(Context context, String str, Bitmap bitmap, String str2, String str3, String str4) {
        if (context != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            if (TextUtils.isEmpty(str4)) {
                str4 = a.C("https://", str);
            }
            ContentValues e = com.mycompany.app.dialog.a.e("_path", str, "_user_val", str2);
            e.put("_pass_val", str3);
            e.put("_rsv1", str4);
            if (MainUtil.f6(bitmap)) {
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                    e.put("_icon", byteArrayOutputStream.toByteArray());
                    byteArrayOutputStream.close();
                } catch (Exception unused) {
                }
            }
            e.put("_secret", Integer.valueOf(PrefSync.k ? 1 : 0));
            return DbUtil.e(d(context).getWritableDatabase(), "DbBookPass_table", e);
        }
        return 0L;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void i(android.content.Context r10, java.lang.String r11, android.graphics.Bitmap r12, java.lang.String r13, java.lang.String r14, java.lang.String r15) {
        /*
            if (r10 == 0) goto Le6
            boolean r0 = android.text.TextUtils.isEmpty(r11)
            if (r0 != 0) goto Le6
            boolean r0 = android.text.TextUtils.isEmpty(r13)
            if (r0 != 0) goto Le6
            boolean r0 = android.text.TextUtils.isEmpty(r14)
            if (r0 == 0) goto L16
            goto Le6
        L16:
            boolean r0 = android.text.TextUtils.isEmpty(r15)
            if (r0 == 0) goto L22
            java.lang.String r15 = "https://"
            java.lang.String r15 = android.support.v4.media.a.C(r15, r11)
        L22:
            java.lang.String r0 = "_icon"
            java.lang.String[] r3 = new java.lang.String[]{r0}
            java.lang.String r4 = "_secret=? AND _path=? AND _user_val=?"
            boolean r1 = com.mycompany.app.pref.PrefSync.k
            if (r1 == 0) goto L31
            java.lang.String r1 = "1"
            goto L33
        L31:
            java.lang.String r1 = "0"
        L33:
            java.lang.String[] r5 = new java.lang.String[]{r1, r11, r13}
            boolean r1 = com.mycompany.app.main.MainUtil.m6(r11)
            if (r1 == 0) goto L48
            android.content.res.Resources r12 = r10.getResources()
            int r1 = com.mycompany.app.soulbrowser.R.drawable.baseline_search_youtube
            android.graphics.Bitmap r12 = com.mycompany.app.main.BitmapUtil.d(r12, r1)
            goto L56
        L48:
            boolean r1 = com.mycompany.app.main.MainUtil.f6(r12)
            if (r1 != 0) goto L56
            java.lang.String r12 = com.mycompany.app.main.MainUtil.O1(r11)
            android.graphics.Bitmap r12 = com.mycompany.app.main.MainUtil.n4(r12)
        L56:
            r7 = 1
            r8 = 0
            r9 = 0
            com.mycompany.app.db.book.DbBookPass r1 = d(r10)     // Catch: java.lang.Exception -> L86
            android.database.sqlite.SQLiteDatabase r1 = r1.getWritableDatabase()     // Catch: java.lang.Exception -> L86
            java.lang.String r2 = "DbBookPass_table"
            r6 = 0
            android.database.Cursor r9 = com.mycompany.app.db.DbUtil.g(r1, r2, r3, r4, r5, r6)     // Catch: java.lang.Exception -> L86
            if (r9 == 0) goto L88
            boolean r1 = r9.moveToFirst()     // Catch: java.lang.Exception -> L86
            if (r1 == 0) goto L88
            boolean r1 = com.mycompany.app.main.MainUtil.f6(r12)     // Catch: java.lang.Exception -> L84
            if (r1 == 0) goto L84
            int r1 = r9.getColumnIndex(r0)     // Catch: java.lang.Exception -> L84
            byte[] r1 = r9.getBlob(r1)     // Catch: java.lang.Exception -> L84
            if (r1 == 0) goto L84
            int r1 = r1.length     // Catch: java.lang.Exception -> L84
            if (r1 <= 0) goto L84
            r8 = r7
        L84:
            r1 = r7
            goto L89
        L86:
            r1 = r8
            goto L89
        L88:
            r1 = 2
        L89:
            if (r9 == 0) goto L8e
            r9.close()
        L8e:
            if (r1 == 0) goto Le6
            java.lang.String r2 = "_path"
            java.lang.String r3 = "_user_val"
            android.content.ContentValues r11 = com.mycompany.app.dialog.a.e(r2, r11, r3, r13)
            java.lang.String r13 = "_pass_val"
            r11.put(r13, r14)
            java.lang.String r13 = "_rsv1"
            r11.put(r13, r15)
            if (r8 != 0) goto Lc0
            boolean r13 = com.mycompany.app.main.MainUtil.f6(r12)
            if (r13 == 0) goto Lc0
            java.io.ByteArrayOutputStream r13 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Exception -> Lc0
            r13.<init>()     // Catch: java.lang.Exception -> Lc0
            android.graphics.Bitmap$CompressFormat r14 = android.graphics.Bitmap.CompressFormat.PNG     // Catch: java.lang.Exception -> Lc0
            r15 = 100
            r12.compress(r14, r15, r13)     // Catch: java.lang.Exception -> Lc0
            byte[] r12 = r13.toByteArray()     // Catch: java.lang.Exception -> Lc0
            r11.put(r0, r12)     // Catch: java.lang.Exception -> Lc0
            r13.close()     // Catch: java.lang.Exception -> Lc0
        Lc0:
            java.lang.String r12 = "DbBookPass_table"
            if (r1 != r7) goto Ld0
            com.mycompany.app.db.book.DbBookPass r10 = d(r10)
            android.database.sqlite.SQLiteDatabase r10 = r10.getWritableDatabase()
            com.mycompany.app.db.DbUtil.h(r10, r12, r11, r4, r5)
            goto Le6
        Ld0:
            boolean r13 = com.mycompany.app.pref.PrefSync.k
            java.lang.Integer r13 = java.lang.Integer.valueOf(r13)
            java.lang.String r14 = "_secret"
            r11.put(r14, r13)
            com.mycompany.app.db.book.DbBookPass r10 = d(r10)
            android.database.sqlite.SQLiteDatabase r10 = r10.getWritableDatabase()
            com.mycompany.app.db.DbUtil.e(r10, r12, r11)
        Le6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookPass.i(android.content.Context, java.lang.String, android.graphics.Bitmap, java.lang.String, java.lang.String, java.lang.String):void");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbBookPass_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _path TEXT, _icon BLOB, _user_id TEXT, _user_name TEXT, _user_val TEXT, _pass_id TEXT, _pass_name TEXT, _pass_val TEXT, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookPass_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookPass_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _path TEXT, _icon BLOB, _user_id TEXT, _user_name TEXT, _user_val TEXT, _pass_id TEXT, _pass_name TEXT, _pass_val TEXT, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
