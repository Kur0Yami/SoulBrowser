package com.mycompany.app.db.book;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class DbBookTrans extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbBookTrans f12962c;

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0089, code lost:
    
        r13.close();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0093 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File a(android.content.Context r13, java.lang.String r14) {
        /*
            java.lang.String r0 = "_time"
            java.lang.String r1 = "_title"
            java.lang.String r2 = "_path"
            r3 = 0
            if (r13 == 0) goto Lad
            boolean r4 = android.text.TextUtils.isEmpty(r14)
            if (r4 == 0) goto L11
            goto Lad
        L11:
            r4 = 0
            com.mycompany.app.db.book.DbBookTrans r13 = b(r13)     // Catch: java.lang.Exception -> L84
            android.database.sqlite.SQLiteDatabase r5 = r13.getWritableDatabase()     // Catch: java.lang.Exception -> L84
            java.lang.String r6 = "DbBookTrans_table"
            r9 = 0
            r10 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r13 = com.mycompany.app.db.DbUtil.g(r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Exception -> L84
            if (r13 == 0) goto L81
            boolean r5 = r13.moveToFirst()     // Catch: java.lang.Exception -> L81
            if (r5 == 0) goto L81
            int r5 = r13.getColumnIndex(r2)     // Catch: java.lang.Exception -> L81
            int r6 = r13.getColumnIndex(r1)     // Catch: java.lang.Exception -> L81
            int r7 = r13.getColumnIndex(r0)     // Catch: java.lang.Exception -> L81
            r8 = r3
            r9 = r8
        L3a:
            if (r8 != 0) goto L50
            java.io.OutputStream r9 = com.mycompany.app.main.MainUtil.c1(r14, r4)     // Catch: java.lang.Exception -> L4d
            java.io.BufferedWriter r10 = new java.io.BufferedWriter     // Catch: java.lang.Exception -> L4d
            java.io.OutputStreamWriter r11 = new java.io.OutputStreamWriter     // Catch: java.lang.Exception -> L4d
            java.nio.charset.Charset r12 = java.nio.charset.StandardCharsets.UTF_8     // Catch: java.lang.Exception -> L4d
            r11.<init>(r9, r12)     // Catch: java.lang.Exception -> L4d
            r10.<init>(r11)     // Catch: java.lang.Exception -> L4d
            r8 = r10
        L4d:
            if (r8 != 0) goto L50
            goto L87
        L50:
            boolean r10 = com.mycompany.app.main.MainUtil.a0(r8)     // Catch: java.lang.Exception -> L87
            if (r10 != 0) goto L57
            goto L87
        L57:
            java.lang.String r10 = r13.getString(r5)     // Catch: java.lang.Exception -> L87
            boolean r10 = com.mycompany.app.main.MainUtil.c0(r8, r2, r10)     // Catch: java.lang.Exception -> L87
            if (r10 != 0) goto L62
            goto L87
        L62:
            java.lang.String r10 = r13.getString(r6)     // Catch: java.lang.Exception -> L87
            boolean r10 = com.mycompany.app.main.MainUtil.c0(r8, r1, r10)     // Catch: java.lang.Exception -> L87
            if (r10 != 0) goto L6d
            goto L87
        L6d:
            long r10 = r13.getLong(r7)     // Catch: java.lang.Exception -> L87
            boolean r10 = com.mycompany.app.main.MainUtil.b0(r8, r0, r10)     // Catch: java.lang.Exception -> L87
            if (r10 != 0) goto L78
            goto L87
        L78:
            r10 = 1
            boolean r11 = r13.moveToNext()     // Catch: java.lang.Exception -> L7f
            if (r11 != 0) goto L3a
        L7f:
            r4 = r10
            goto L87
        L81:
            r8 = r3
        L82:
            r9 = r8
            goto L87
        L84:
            r13 = r3
            r8 = r13
            goto L82
        L87:
            if (r13 == 0) goto L8c
            r13.close()
        L8c:
            if (r8 == 0) goto L91
            r8.close()     // Catch: java.lang.Exception -> L91
        L91:
            if (r9 == 0) goto L96
            r9.close()     // Catch: java.lang.Exception -> L96
        L96:
            if (r4 != 0) goto La7
            java.io.File r13 = new java.io.File
            r13.<init>(r14)
            boolean r14 = r13.exists()
            if (r14 == 0) goto La6
            r13.delete()
        La6:
            return r3
        La7:
            java.io.File r13 = new java.io.File
            r13.<init>(r14)
            return r13
        Lad:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookTrans.a(android.content.Context, java.lang.String):java.io.File");
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.sqlite.SQLiteOpenHelper, com.mycompany.app.db.book.DbBookTrans] */
    public static DbBookTrans b(Context context) {
        if (f12962c == null) {
            synchronized (DbBookTrans.class) {
                try {
                    if (f12962c == null) {
                        f12962c = new SQLiteOpenHelper(MainUtil.R(context), "DbBookTrans.db", (SQLiteDatabase.CursorFactory) null, 1);
                    }
                } finally {
                }
            }
        }
        return f12962c;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006a  */
    /* JADX WARN: Type inference failed for: r11v5, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.mycompany.app.main.MainItem.ChildItem d(android.content.Context r11, java.lang.String r12) {
        /*
            r0 = 0
            if (r11 == 0) goto L92
            boolean r1 = android.text.TextUtils.isEmpty(r12)
            if (r1 == 0) goto Lb
            goto L92
        Lb:
            long r1 = java.lang.System.currentTimeMillis()
            java.lang.String[] r7 = new java.lang.String[]{r12}
            com.mycompany.app.db.book.DbBookTrans r11 = b(r11)
            android.database.sqlite.SQLiteDatabase r3 = r11.getWritableDatabase()
            java.lang.String r11 = "DbBookTrans_table"
            java.lang.String r6 = "_path=?"
            int r4 = com.mycompany.app.db.DbUtil.d(r3, r11, r0, r6, r7)
            if (r4 == 0) goto L3e
            java.lang.String r5 = "_path"
            android.content.ContentValues r5 = androidx.work.impl.workers.a.f(r5, r12)
            java.lang.String r8 = "_time"
            java.lang.Long r9 = java.lang.Long.valueOf(r1)
            r5.put(r8, r9)
            r8 = 1
            if (r4 != r8) goto L3b
            com.mycompany.app.db.DbUtil.h(r3, r11, r5, r6, r7)
            goto L3e
        L3b:
            com.mycompany.app.db.DbUtil.e(r3, r11, r5)
        L3e:
            java.lang.String r11 = "_id"
            java.lang.String[] r5 = new java.lang.String[]{r11}
            r9 = 0
            java.lang.String r4 = "DbBookTrans_table"
            r8 = 0
            android.database.Cursor r3 = com.mycompany.app.db.DbUtil.g(r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> L5e
            if (r3 == 0) goto L5f
            boolean r4 = r3.moveToFirst()     // Catch: java.lang.Exception -> L5f
            if (r4 == 0) goto L5f
            int r11 = r3.getColumnIndex(r11)     // Catch: java.lang.Exception -> L5f
            long r4 = r3.getLong(r11)     // Catch: java.lang.Exception -> L5f
            goto L60
        L5e:
            r3 = r0
        L5f:
            r4 = r9
        L60:
            if (r3 == 0) goto L65
            r3.close()
        L65:
            int r11 = (r4 > r9 ? 1 : (r4 == r9 ? 0 : -1))
            if (r11 > 0) goto L6a
            goto L92
        L6a:
            com.mycompany.app.main.MainItem$ChildItem r11 = new com.mycompany.app.main.MainItem$ChildItem
            r11.<init>()
            r11.y = r4
            r11.g = r12
            r11.h = r12
            r11.A = r1
            r3 = 0
            r11.f16551c = r3
            r4 = -460552(0xfffffffffff8f8f8, float:NaN)
            r11.v = r4
            int r4 = com.mycompany.app.soulbrowser.R.drawable.outline_public_black_24
            r11.w = r4
            java.lang.String r4 = "yyyy.MM.dd"
            java.lang.String r0 = com.mycompany.app.main.MainUtil.y1(r1, r0, r4)
            r11.F = r0
            java.lang.String r12 = com.mycompany.app.main.MainUtil.D1(r12, r3)
            r11.G = r12
            return r11
        L92:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookTrans.d(android.content.Context, java.lang.String):com.mycompany.app.main.MainItem$ChildItem");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbBookTrans_table (_id INTEGER PRIMARY KEY, _path TEXT, _title TEXT, _icon BLOB, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookTrans_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookTrans_table (_id INTEGER PRIMARY KEY, _path TEXT, _title TEXT, _icon BLOB, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
