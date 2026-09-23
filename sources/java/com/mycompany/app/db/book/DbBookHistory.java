package com.mycompany.app.db.book;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefWeb;

/* loaded from: classes3.dex */
public class DbBookHistory extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbBookHistory f12932c;

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
            java.lang.String r1 = "_time"
            java.lang.String r2 = "_title"
            java.lang.String r3 = "_path"
            java.lang.String r4 = "_secret"
            if (r17 == 0) goto L12
            boolean r6 = android.text.TextUtils.isEmpty(r0)
            if (r6 == 0) goto L16
        L12:
            r16 = 0
            goto Lce
        L16:
            r6 = 0
            com.mycompany.app.db.book.DbBookHistory r7 = b(r17)     // Catch: java.lang.Exception -> La2
            android.database.sqlite.SQLiteDatabase r8 = r7.getWritableDatabase()     // Catch: java.lang.Exception -> La2
            java.lang.String r9 = "DbBookHistory_table"
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
            java.lang.String r5 = r7.getString(r9)     // Catch: java.lang.Exception -> La8
            boolean r5 = com.mycompany.app.main.MainUtil.c0(r12, r3, r5)     // Catch: java.lang.Exception -> La8
            if (r5 != 0) goto L7d
            goto La8
        L7d:
            java.lang.String r5 = r7.getString(r10)     // Catch: java.lang.Exception -> La8
            boolean r5 = com.mycompany.app.main.MainUtil.c0(r12, r2, r5)     // Catch: java.lang.Exception -> La8
            if (r5 != 0) goto L88
            goto La8
        L88:
            long r14 = r7.getLong(r11)     // Catch: java.lang.Exception -> La8
            boolean r5 = com.mycompany.app.main.MainUtil.b0(r12, r1, r14)     // Catch: java.lang.Exception -> La8
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
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookHistory.a(android.content.Context, java.lang.String):java.io.File");
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.sqlite.SQLiteOpenHelper, com.mycompany.app.db.book.DbBookHistory] */
    public static DbBookHistory b(Context context) {
        if (f12932c == null) {
            synchronized (DbBookHistory.class) {
                try {
                    if (f12932c == null) {
                        f12932c = new SQLiteOpenHelper(MainUtil.R(context), "DbBookHistory.db", (SQLiteDatabase.CursorFactory) null, 2);
                    }
                } finally {
                }
            }
        }
        return f12932c;
    }

    public static void d(Context context) {
        if (context == null) {
            return;
        }
        DbUtil.a(b(context).getWritableDatabase(), "DbBookHistory_table", null, null);
    }

    public static void e(Context context, boolean z) {
        String str;
        if (context == null) {
            return;
        }
        if (z) {
            str = "1";
        } else {
            str = "0";
        }
        DbUtil.a(b(context).getWritableDatabase(), "DbBookHistory_table", "_secret=?", new String[]{str});
    }

    public static void f(Context context) {
        if (PrefWeb.n == -1 || context == null) {
            return;
        }
        DbUtil.a(b(context).getWritableDatabase(), "DbBookHistory_table", "_time<?", new String[]{Long.toString(System.currentTimeMillis() - (PrefWeb.n * 86400000))});
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbBookHistory_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _path TEXT, _title TEXT, _icon BLOB, _time INTEGER, _count INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookHistory_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookHistory_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _path TEXT, _title TEXT, _icon BLOB, _time INTEGER, _count INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
