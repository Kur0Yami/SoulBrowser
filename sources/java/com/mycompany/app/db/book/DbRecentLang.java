package com.mycompany.app.db.book;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefZtwo;

/* loaded from: classes3.dex */
public class DbRecentLang extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbRecentLang f12967c;

    /* JADX WARN: Removed duplicated region for block: B:18:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0057 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r11, int r12) {
        /*
            if (r11 != 0) goto L3
            goto L57
        L3:
            int r0 = e(r12)
            r1 = -1
            if (r0 != r1) goto Lb
            goto L57
        Lb:
            if (r0 != 0) goto L11
            f(r11, r12)
            return
        L11:
            java.lang.String r1 = "_time"
            java.lang.String[] r4 = new java.lang.String[]{r1}
            java.lang.String r2 = java.lang.Integer.toString(r12)
            java.lang.String[] r6 = new java.lang.String[]{r2}
            java.lang.String r7 = "_time DESC"
            r8 = 0
            r10 = 0
            com.mycompany.app.db.book.DbRecentLang r2 = d(r11)     // Catch: java.lang.Exception -> L4d
            android.database.sqlite.SQLiteDatabase r2 = r2.getWritableDatabase()     // Catch: java.lang.Exception -> L4d
            java.lang.String r3 = "DbRecentLang_table"
            java.lang.String r5 = "_type=?"
            android.database.Cursor r10 = com.mycompany.app.db.DbUtil.g(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> L4d
            if (r10 == 0) goto L4d
            int r2 = r10.getCount()     // Catch: java.lang.Exception -> L4d
            if (r2 <= r0) goto L4d
            int r0 = r0 + (-1)
            boolean r0 = r10.moveToPosition(r0)     // Catch: java.lang.Exception -> L4d
            if (r0 == 0) goto L4d
            int r0 = r10.getColumnIndex(r1)     // Catch: java.lang.Exception -> L4d
            long r0 = r10.getLong(r0)     // Catch: java.lang.Exception -> L4d
            goto L4e
        L4d:
            r0 = r8
        L4e:
            if (r10 == 0) goto L53
            r10.close()
        L53:
            int r2 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r2 > 0) goto L58
        L57:
            return
        L58:
            java.lang.String r12 = java.lang.Integer.toString(r12)
            java.lang.String r0 = java.lang.Long.toString(r0)
            java.lang.String[] r12 = new java.lang.String[]{r12, r0}
            com.mycompany.app.db.book.DbRecentLang r11 = d(r11)
            android.database.sqlite.SQLiteDatabase r11 = r11.getWritableDatabase()
            java.lang.String r0 = "DbRecentLang_table"
            java.lang.String r1 = "_type=? AND _time<?"
            com.mycompany.app.db.DbUtil.a(r11, r0, r1, r12)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbRecentLang.a(android.content.Context, int):void");
    }

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
    public static java.io.File b(android.content.Context r13, java.lang.String r14) {
        /*
            java.lang.String r0 = "_time"
            java.lang.String r1 = "_lang"
            java.lang.String r2 = "_type"
            r3 = 0
            if (r13 == 0) goto Lad
            boolean r4 = android.text.TextUtils.isEmpty(r14)
            if (r4 == 0) goto L11
            goto Lad
        L11:
            r4 = 0
            com.mycompany.app.db.book.DbRecentLang r13 = d(r13)     // Catch: java.lang.Exception -> L84
            android.database.sqlite.SQLiteDatabase r5 = r13.getWritableDatabase()     // Catch: java.lang.Exception -> L84
            java.lang.String r6 = "DbRecentLang_table"
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
            int r10 = r13.getInt(r5)     // Catch: java.lang.Exception -> L87
            boolean r10 = com.mycompany.app.main.MainUtil.Z(r8, r2, r10)     // Catch: java.lang.Exception -> L87
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
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbRecentLang.b(android.content.Context, java.lang.String):java.io.File");
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.db.book.DbRecentLang, android.database.sqlite.SQLiteOpenHelper] */
    public static DbRecentLang d(Context context) {
        if (f12967c == null) {
            synchronized (DbRecentLang.class) {
                try {
                    if (f12967c == null) {
                        f12967c = new SQLiteOpenHelper(MainUtil.R(context), "DbRecentLang.db", (SQLiteDatabase.CursorFactory) null, 1);
                    }
                } finally {
                }
            }
        }
        return f12967c;
    }

    public static int e(int i) {
        if (i == 0) {
            return PrefZtwo.b0;
        }
        if (i == 1) {
            return PrefZtwo.c0;
        }
        return PrefZtwo.d0;
    }

    public static void f(Context context, int i) {
        if (context == null) {
            return;
        }
        DbUtil.a(d(context).getWritableDatabase(), "DbRecentLang_table", "_type=?", new String[]{Integer.toString(i)});
    }

    public static void i(Context context, int i, String str) {
        String[] strArr;
        SQLiteDatabase writableDatabase;
        int d;
        if (e(i) != 0 && !TextUtils.isEmpty(str) && (d = DbUtil.d((writableDatabase = d(context).getWritableDatabase()), "DbRecentLang_table", null, "_type=? AND _lang=?", (strArr = new String[]{Integer.toString(i), str}))) != 0) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("_time", Long.valueOf(System.currentTimeMillis()));
            if (d == 1) {
                DbUtil.h(writableDatabase, "DbRecentLang_table", contentValues, "_type=? AND _lang=?", strArr);
                return;
            }
            contentValues.put("_type", Integer.valueOf(i));
            contentValues.put("_lang", str);
            if (DbUtil.e(writableDatabase, "DbRecentLang_table", contentValues) != 0) {
                a(context, i);
            }
        }
    }

    public static void j(final int i, Context context, final String str, final String str2) {
        final Context R = MainUtil.R(context);
        if (R == null) {
            return;
        }
        MainApp.J(R, new Runnable() { // from class: com.mycompany.app.db.book.DbRecentLang.1
            @Override // java.lang.Runnable
            public final void run() {
                String str3 = str;
                boolean isEmpty = TextUtils.isEmpty(str3);
                int i2 = i;
                Context context2 = R;
                if (!isEmpty) {
                    DbRecentLang.i(context2, i2, str3);
                }
                DbRecentLang.i(context2, i2, str2);
            }
        });
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbRecentLang_table (_id INTEGER PRIMARY KEY, _type INTEGER, _lang TEXT, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbRecentLang_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbRecentLang_table (_id INTEGER PRIMARY KEY, _type INTEGER, _lang TEXT, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
