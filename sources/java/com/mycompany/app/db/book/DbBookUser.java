package com.mycompany.app.db.book;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class DbBookUser extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbBookUser f12963c;

    /* JADX WARN: Code restructure failed: missing block: B:12:0x00aa, code lost:
    
        r7.close();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00af A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v8, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r12v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File a(android.content.Context r17, java.lang.String r18) {
        /*
            r0 = r18
            java.lang.String r1 = "_use"
            java.lang.String r2 = "_time"
            java.lang.String r3 = "_path"
            java.lang.String r4 = "_rsv1"
            if (r17 == 0) goto L12
            boolean r6 = android.text.TextUtils.isEmpty(r0)
            if (r6 == 0) goto L16
        L12:
            r16 = 0
            goto Lce
        L16:
            r6 = 0
            com.mycompany.app.db.book.DbBookUser r7 = d(r17)     // Catch: java.lang.Exception -> La2
            android.database.sqlite.SQLiteDatabase r8 = r7.getWritableDatabase()     // Catch: java.lang.Exception -> La2
            java.lang.String r9 = "DbBookUser_table"
            r12 = 0
            r13 = 0
            r10 = 0
            r11 = 0
            android.database.Cursor r7 = com.mycompany.app.db.DbUtil.g(r8, r9, r10, r11, r12, r13)     // Catch: java.lang.Exception -> La2
            if (r7 == 0) goto L9c
            boolean r8 = r7.moveToFirst()     // Catch: java.lang.Exception -> L9c
            if (r8 == 0) goto L9c
            int r8 = r7.getColumnIndex(r4)     // Catch: java.lang.Exception -> L9c
            int r9 = r7.getColumnIndex(r3)     // Catch: java.lang.Exception -> L9c
            int r10 = r7.getColumnIndex(r2)     // Catch: java.lang.Exception -> L9c
            int r11 = r7.getColumnIndex(r1)     // Catch: java.lang.Exception -> L9c
            r12 = 0
            r13 = 0
        L43:
            if (r12 != 0) goto L5e
            java.io.OutputStream r13 = com.mycompany.app.main.MainUtil.c1(r0, r6)     // Catch: java.lang.Exception -> L59
            java.io.BufferedWriter r14 = new java.io.BufferedWriter     // Catch: java.lang.Exception -> L59
            java.io.OutputStreamWriter r15 = new java.io.OutputStreamWriter     // Catch: java.lang.Exception -> L59
            r16 = 0
            java.nio.charset.Charset r5 = java.nio.charset.StandardCharsets.UTF_8     // Catch: java.lang.Exception -> L5b
            r15.<init>(r13, r5)     // Catch: java.lang.Exception -> L5b
            r14.<init>(r15)     // Catch: java.lang.Exception -> L5b
            r12 = r14
            goto L5b
        L59:
            r16 = 0
        L5b:
            if (r12 != 0) goto L60
            goto La8
        L5e:
            r16 = 0
        L60:
            boolean r5 = com.mycompany.app.main.MainUtil.a0(r12)     // Catch: java.lang.Exception -> La8
            if (r5 != 0) goto L67
            goto La8
        L67:
            java.lang.String r5 = r7.getString(r8)     // Catch: java.lang.Exception -> La8
            boolean r5 = com.mycompany.app.main.MainUtil.c0(r12, r4, r5)     // Catch: java.lang.Exception -> La8
            if (r5 != 0) goto L72
            goto La8
        L72:
            java.lang.String r5 = r7.getString(r9)     // Catch: java.lang.Exception -> La8
            boolean r5 = com.mycompany.app.main.MainUtil.c0(r12, r3, r5)     // Catch: java.lang.Exception -> La8
            if (r5 != 0) goto L7d
            goto La8
        L7d:
            long r14 = r7.getLong(r10)     // Catch: java.lang.Exception -> La8
            boolean r5 = com.mycompany.app.main.MainUtil.b0(r12, r2, r14)     // Catch: java.lang.Exception -> La8
            if (r5 != 0) goto L88
            goto La8
        L88:
            int r5 = r7.getInt(r11)     // Catch: java.lang.Exception -> La8
            boolean r5 = com.mycompany.app.main.MainUtil.Z(r12, r1, r5)     // Catch: java.lang.Exception -> La8
            if (r5 != 0) goto L93
            goto La8
        L93:
            r5 = 1
            boolean r14 = r7.moveToNext()     // Catch: java.lang.Exception -> L9a
            if (r14 != 0) goto L43
        L9a:
            r6 = r5
            goto La8
        L9c:
            r16 = 0
            r12 = r16
        La0:
            r13 = r12
            goto La8
        La2:
            r16 = 0
            r7 = r16
            r12 = r7
            goto La0
        La8:
            if (r7 == 0) goto Lad
            r7.close()
        Lad:
            if (r12 == 0) goto Lb2
            r12.close()     // Catch: java.lang.Exception -> Lb2
        Lb2:
            if (r13 == 0) goto Lb7
            r13.close()     // Catch: java.lang.Exception -> Lb7
        Lb7:
            if (r6 != 0) goto Lc8
            java.io.File r1 = new java.io.File
            r1.<init>(r0)
            boolean r0 = r1.exists()
            if (r0 == 0) goto Lc7
            r1.delete()
        Lc7:
            return r16
        Lc8:
            java.io.File r1 = new java.io.File
            r1.<init>(r0)
            return r1
        Lce:
            return r16
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookUser.a(android.content.Context, java.lang.String):java.io.File");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0086 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String b(android.content.Context r8, java.lang.String r9) {
        /*
            r0 = 0
            if (r8 == 0) goto L8c
            boolean r1 = android.text.TextUtils.isEmpty(r9)
            if (r1 == 0) goto Lb
            goto L8c
        Lb:
            java.lang.String r1 = "_path"
            java.lang.String[] r4 = new java.lang.String[]{r1}
            java.lang.String r5 = "_rsv1=? AND _use=?"
            java.lang.String r2 = "1"
            java.lang.String[] r6 = new java.lang.String[]{r9, r2}
            com.mycompany.app.db.book.DbBookUser r8 = d(r8)     // Catch: java.lang.Exception -> L7d
            android.database.sqlite.SQLiteDatabase r2 = r8.getWritableDatabase()     // Catch: java.lang.Exception -> L7d
            java.lang.String r3 = "DbBookUser_table"
            r7 = 0
            android.database.Cursor r8 = com.mycompany.app.db.DbUtil.g(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> L7d
            if (r8 == 0) goto L7b
            boolean r9 = r8.moveToFirst()     // Catch: java.lang.Exception -> L7b
            if (r9 == 0) goto L7b
            int r9 = r8.getColumnIndex(r1)     // Catch: java.lang.Exception -> L7b
            r1 = r0
        L35:
            java.lang.String r2 = r8.getString(r9)     // Catch: java.lang.Exception -> L7f
            boolean r3 = com.mycompany.app.web.WebClean.e0(r2)     // Catch: java.lang.Exception -> L7f
            if (r3 != 0) goto L40
            goto L74
        L40:
            if (r2 != 0) goto L44
        L42:
            r2 = r0
            goto L5c
        L44:
            int r3 = r2.length()     // Catch: java.lang.Exception -> L7f
            if (r3 != 0) goto L4b
            goto L42
        L4b:
            java.lang.String r4 = "##"
            int r4 = r2.indexOf(r4)     // Catch: java.lang.Exception -> L7f
            if (r4 <= 0) goto L42
            if (r4 < r3) goto L56
            goto L42
        L56:
            int r4 = r4 + 2
            java.lang.String r2 = r2.substring(r4)     // Catch: java.lang.Exception -> L7f
        L5c:
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Exception -> L7f
            if (r3 == 0) goto L63
            goto L74
        L63:
            if (r1 != 0) goto L6c
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L7f
            r3.<init>()     // Catch: java.lang.Exception -> L7f
            r1 = r3
            goto L71
        L6c:
            java.lang.String r3 = ","
            r1.append(r3)     // Catch: java.lang.Exception -> L7f
        L71:
            r1.append(r2)     // Catch: java.lang.Exception -> L7f
        L74:
            boolean r2 = r8.moveToNext()     // Catch: java.lang.Exception -> L7f
            if (r2 != 0) goto L35
            goto L7f
        L7b:
            r1 = r0
            goto L7f
        L7d:
            r8 = r0
            r1 = r8
        L7f:
            if (r8 == 0) goto L84
            r8.close()
        L84:
            if (r1 != 0) goto L87
            return r0
        L87:
            java.lang.String r8 = r1.toString()
            return r8
        L8c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookUser.b(android.content.Context, java.lang.String):java.lang.String");
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.sqlite.SQLiteOpenHelper, com.mycompany.app.db.book.DbBookUser] */
    public static DbBookUser d(Context context) {
        if (f12963c == null) {
            synchronized (DbBookUser.class) {
                try {
                    if (f12963c == null) {
                        f12963c = new SQLiteOpenHelper(MainUtil.R(context), "DbBookUser.db", (SQLiteDatabase.CursorFactory) null, 1);
                    }
                } finally {
                }
            }
        }
        return f12963c;
    }

    public static String e(String str) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return null;
        }
        int indexOf = str.indexOf(35);
        if (indexOf > 0 && indexOf < length) {
            return str.substring(0, indexOf);
        }
        return "noname";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00b2  */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v8, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v5, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r8v6, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.mycompany.app.main.MainItem.ChildItem f(android.content.Context r8, long r9, java.lang.String r11, java.lang.String r12) {
        /*
            r0 = 0
            if (r8 == 0) goto Lb5
            boolean r1 = android.text.TextUtils.isEmpty(r12)
            if (r1 == 0) goto Lb
            goto Lb5
        Lb:
            com.mycompany.app.db.book.DbBookUser r8 = d(r8)
            android.database.sqlite.SQLiteDatabase r8 = r8.getWritableDatabase()
            java.lang.String r1 = "DbBookUser_table"
            int r2 = com.mycompany.app.db.DbUtil.c(r8, r1, r9)
            java.lang.String r3 = "_use"
            java.lang.String r4 = "_time"
            java.lang.String r5 = "_path"
            r6 = 1
            if (r2 == 0) goto L44
            java.lang.String r7 = "_rsv1"
            android.content.ContentValues r11 = com.mycompany.app.dialog.a.e(r7, r11, r5, r12)
            if (r2 != r6) goto L2e
            com.mycompany.app.db.DbUtil.i(r8, r1, r11, r9)
            goto L44
        L2e:
            long r9 = java.lang.System.currentTimeMillis()
            java.lang.Long r9 = java.lang.Long.valueOf(r9)
            r11.put(r4, r9)
            java.lang.Integer r9 = java.lang.Integer.valueOf(r6)
            r11.put(r3, r9)
            long r9 = com.mycompany.app.db.DbUtil.e(r8, r1, r11)
        L44:
            r11 = 0
            int r11 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r11 != 0) goto L4c
            goto Lb5
        L4c:
            android.database.Cursor r8 = com.mycompany.app.db.DbUtil.f(r8, r1, r0, r9)     // Catch: java.lang.Exception -> Lad
            if (r8 == 0) goto Lb0
            boolean r9 = r8.moveToFirst()     // Catch: java.lang.Exception -> Lab
            if (r9 == 0) goto Lb0
            java.lang.String r9 = "_id"
            int r9 = r8.getColumnIndex(r9)     // Catch: java.lang.Exception -> Lab
            int r10 = r8.getColumnIndex(r5)     // Catch: java.lang.Exception -> Lab
            int r11 = r8.getColumnIndex(r4)     // Catch: java.lang.Exception -> Lab
            int r12 = r8.getColumnIndex(r3)     // Catch: java.lang.Exception -> Lab
            java.lang.String r10 = r8.getString(r10)     // Catch: java.lang.Exception -> Lab
            boolean r1 = android.text.TextUtils.isEmpty(r10)     // Catch: java.lang.Exception -> Lab
            if (r1 != 0) goto Lb0
            com.mycompany.app.main.MainItem$ChildItem r1 = new com.mycompany.app.main.MainItem$ChildItem     // Catch: java.lang.Exception -> Lab
            r1.<init>()     // Catch: java.lang.Exception -> Lab
            long r2 = r8.getLong(r9)     // Catch: java.lang.Exception -> La9
            r1.y = r2     // Catch: java.lang.Exception -> La9
            r1.g = r10     // Catch: java.lang.Exception -> La9
            r1.h = r10     // Catch: java.lang.Exception -> La9
            long r2 = r8.getLong(r11)     // Catch: java.lang.Exception -> La9
            r1.A = r2     // Catch: java.lang.Exception -> La9
            int r9 = r8.getInt(r12)     // Catch: java.lang.Exception -> La9
            r11 = 0
            if (r9 != r6) goto L91
            goto L92
        L91:
            r6 = r11
        L92:
            r1.M = r6     // Catch: java.lang.Exception -> La9
            r1.f16551c = r11     // Catch: java.lang.Exception -> La9
            r9 = -460552(0xfffffffffff8f8f8, float:NaN)
            r1.v = r9     // Catch: java.lang.Exception -> La9
            int r9 = com.mycompany.app.soulbrowser.R.drawable.outline_verified_user_black_24     // Catch: java.lang.Exception -> La9
            r1.w = r9     // Catch: java.lang.Exception -> La9
            java.lang.String r9 = e(r10)     // Catch: java.lang.Exception -> La9
            r1.G = r9     // Catch: java.lang.Exception -> La9
            com.mycompany.app.list.book.ListBookUser.q(r1)     // Catch: java.lang.Exception -> La9
            goto Laf
        La9:
            r0 = r8
            goto Lae
        Lab:
            r1 = r0
            goto La9
        Lad:
            r1 = r0
        Lae:
            r8 = r0
        Laf:
            r0 = r1
        Lb0:
            if (r8 == 0) goto Lb5
            r8.close()
        Lb5:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookUser.f(android.content.Context, long, java.lang.String, java.lang.String):com.mycompany.app.main.MainItem$ChildItem");
    }

    public static void i(Context context, long j, boolean z) {
        if (context == null) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("_use", Integer.valueOf(z ? 1 : 0));
        DbUtil.h(d(context).getWritableDatabase(), "DbBookUser_table", contentValues, "_id=?", new String[]{Long.toString(j)});
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbBookUser_table (_id INTEGER PRIMARY KEY, _path TEXT, _time INTEGER, _use INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookUser_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookUser_table (_id INTEGER PRIMARY KEY, _path TEXT, _time INTEGER, _use INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
