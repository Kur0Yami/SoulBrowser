package com.mycompany.app.db.book;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class DbTabThumb extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbTabThumb f12971c;

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
            java.lang.String r1 = "_thumb"
            java.lang.String r2 = "_tkey"
            java.lang.String r3 = "_uid"
            java.lang.String r4 = "_secret"
            if (r17 == 0) goto L12
            boolean r6 = android.text.TextUtils.isEmpty(r0)
            if (r6 == 0) goto L16
        L12:
            r16 = 0
            goto Lce
        L16:
            r6 = 0
            com.mycompany.app.db.book.DbTabThumb r7 = b(r17)     // Catch: java.lang.Exception -> La2
            android.database.sqlite.SQLiteDatabase r8 = r7.getWritableDatabase()     // Catch: java.lang.Exception -> La2
            java.lang.String r9 = "DbTabThumb_table"
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
            int r5 = r7.getInt(r8)     // Catch: java.lang.Exception -> La8
            boolean r5 = com.mycompany.app.main.MainUtil.Z(r12, r4, r5)     // Catch: java.lang.Exception -> La8
            if (r5 != 0) goto L72
            goto La8
        L72:
            long r14 = r7.getLong(r9)     // Catch: java.lang.Exception -> La8
            boolean r5 = com.mycompany.app.main.MainUtil.b0(r12, r3, r14)     // Catch: java.lang.Exception -> La8
            if (r5 != 0) goto L7d
            goto La8
        L7d:
            java.lang.String r5 = r7.getString(r10)     // Catch: java.lang.Exception -> La8
            boolean r5 = com.mycompany.app.main.MainUtil.c0(r12, r2, r5)     // Catch: java.lang.Exception -> La8
            if (r5 != 0) goto L88
            goto La8
        L88:
            byte[] r5 = r7.getBlob(r11)     // Catch: java.lang.Exception -> La8
            boolean r5 = com.mycompany.app.main.MainUtil.Y(r12, r1, r5)     // Catch: java.lang.Exception -> La8
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
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbTabThumb.a(android.content.Context, java.lang.String):java.io.File");
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.sqlite.SQLiteOpenHelper, com.mycompany.app.db.book.DbTabThumb] */
    public static DbTabThumb b(Context context) {
        if (f12971c == null) {
            synchronized (DbTabThumb.class) {
                try {
                    if (f12971c == null) {
                        f12971c = new SQLiteOpenHelper(MainUtil.R(context), "DbTabThumb.db", (SQLiteDatabase.CursorFactory) null, 1);
                    }
                } finally {
                }
            }
        }
        return f12971c;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap d(android.content.Context r8, long r9) {
        /*
            r0 = 0
            if (r8 == 0) goto L4c
            r1 = 0
            int r1 = (r9 > r1 ? 1 : (r9 == r1 ? 0 : -1))
            if (r1 > 0) goto La
            goto L4c
        La:
            java.lang.String r1 = "_thumb"
            java.lang.String[] r4 = new java.lang.String[]{r1}
            java.lang.String r5 = "_uid=?"
            java.lang.String r9 = java.lang.Long.toString(r9)
            java.lang.String[] r6 = new java.lang.String[]{r9}
            com.mycompany.app.db.book.DbTabThumb r8 = b(r8)     // Catch: java.lang.Exception -> L3a
            android.database.sqlite.SQLiteDatabase r2 = r8.getWritableDatabase()     // Catch: java.lang.Exception -> L3a
            java.lang.String r3 = "DbTabThumb_table"
            r7 = 0
            android.database.Cursor r8 = com.mycompany.app.db.DbUtil.g(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> L3a
            if (r8 == 0) goto L3b
            boolean r9 = r8.moveToFirst()     // Catch: java.lang.Exception -> L3b
            if (r9 == 0) goto L3b
            int r9 = r8.getColumnIndex(r1)     // Catch: java.lang.Exception -> L3b
            byte[] r9 = r8.getBlob(r9)     // Catch: java.lang.Exception -> L3b
            goto L3c
        L3a:
            r8 = r0
        L3b:
            r9 = r0
        L3c:
            if (r8 == 0) goto L41
            r8.close()
        L41:
            if (r9 == 0) goto L4c
            int r8 = r9.length
            if (r8 <= 0) goto L4c
            int r8 = r9.length
            android.graphics.Bitmap r8 = com.mycompany.app.main.BitmapUtil.a(r9, r8)
            return r8
        L4c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbTabThumb.d(android.content.Context, long):android.graphics.Bitmap");
    }

    public static void e(Context context, String str, String[] strArr) {
        if (context != null) {
            DbUtil.a(b(context).getWritableDatabase(), "DbTabThumb_table", str, strArr);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbTabThumb_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _uid INTEGER, _tkey TEXT, _thumb BLOB, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbTabThumb_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbTabThumb_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _uid INTEGER, _tkey TEXT, _thumb BLOB, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
