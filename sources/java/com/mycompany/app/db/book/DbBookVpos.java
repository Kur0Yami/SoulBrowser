package com.mycompany.app.db.book;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class DbBookVpos extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbBookVpos f12964c;

    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.sqlite.SQLiteOpenHelper, com.mycompany.app.db.book.DbBookVpos] */
    public static DbBookVpos a(Context context) {
        if (f12964c == null) {
            synchronized (DbBookVpos.class) {
                try {
                    if (f12964c == null) {
                        f12964c = new SQLiteOpenHelper(MainUtil.R(context), "DbBookVpos.db", (SQLiteDatabase.CursorFactory) null, 1);
                    }
                } finally {
                }
            }
        }
        return f12964c;
    }

    public static void b(Context context, final int i, final String str) {
        final Context R = MainUtil.R(context);
        if (R == null) {
            return;
        }
        MainApp.J(R, new Runnable() { // from class: com.mycompany.app.db.book.DbBookVpos.1
            /* JADX WARN: Removed duplicated region for block: B:22:0x0088  */
            /* JADX WARN: Removed duplicated region for block: B:25:0x0090  */
            /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    r14 = this;
                    com.mycompany.app.db.book.DbBookVpos r0 = com.mycompany.app.db.book.DbBookVpos.f12964c
                    java.lang.String r0 = r3
                    boolean r1 = android.text.TextUtils.isEmpty(r0)
                    if (r1 == 0) goto Lc
                    goto L9b
                Lc:
                    java.lang.String[] r1 = new java.lang.String[]{r0}
                    android.content.Context r2 = r1
                    com.mycompany.app.db.book.DbBookVpos r3 = com.mycompany.app.db.book.DbBookVpos.a(r2)
                    android.database.sqlite.SQLiteDatabase r3 = r3.getWritableDatabase()
                    java.lang.String r4 = "DbBookVpos_table"
                    r5 = 0
                    java.lang.String r6 = "_path=?"
                    int r7 = com.mycompany.app.db.DbUtil.d(r3, r4, r5, r6, r1)
                    if (r7 == 0) goto L9b
                    java.lang.String r8 = "_path"
                    android.content.ContentValues r0 = androidx.work.impl.workers.a.f(r8, r0)
                    java.lang.String r8 = "_pos"
                    int r9 = r2
                    java.lang.Integer r9 = java.lang.Integer.valueOf(r9)
                    r0.put(r8, r9)
                    long r8 = java.lang.System.currentTimeMillis()
                    java.lang.Long r8 = java.lang.Long.valueOf(r8)
                    java.lang.String r9 = "_time"
                    r0.put(r9, r8)
                    r8 = 1
                    if (r7 != r8) goto L4a
                    com.mycompany.app.db.DbUtil.h(r3, r4, r0, r6, r1)
                    return
                L4a:
                    long r0 = com.mycompany.app.db.DbUtil.e(r3, r4, r0)
                    r6 = 0
                    int r0 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
                    if (r0 == 0) goto L9b
                    java.lang.String r0 = "_id"
                    java.lang.String[] r10 = new java.lang.String[]{r0}
                    java.lang.String r13 = "_time ASC"
                    com.mycompany.app.db.book.DbBookVpos r1 = com.mycompany.app.db.book.DbBookVpos.a(r2)     // Catch: java.lang.Exception -> L85
                    android.database.sqlite.SQLiteDatabase r8 = r1.getWritableDatabase()     // Catch: java.lang.Exception -> L85
                    java.lang.String r9 = "DbBookVpos_table"
                    r11 = 0
                    r12 = 0
                    android.database.Cursor r5 = com.mycompany.app.db.DbUtil.g(r8, r9, r10, r11, r12, r13)     // Catch: java.lang.Exception -> L85
                    if (r5 == 0) goto L85
                    int r1 = r5.getCount()     // Catch: java.lang.Exception -> L85
                    r3 = 500(0x1f4, float:7.0E-43)
                    if (r1 <= r3) goto L85
                    boolean r1 = r5.moveToFirst()     // Catch: java.lang.Exception -> L85
                    if (r1 == 0) goto L85
                    int r0 = r5.getColumnIndex(r0)     // Catch: java.lang.Exception -> L85
                    long r0 = r5.getLong(r0)     // Catch: java.lang.Exception -> L85
                    goto L86
                L85:
                    r0 = r6
                L86:
                    if (r5 == 0) goto L8b
                    r5.close()
                L8b:
                    int r3 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
                    if (r3 > 0) goto L90
                    goto L9b
                L90:
                    com.mycompany.app.db.book.DbBookVpos r2 = com.mycompany.app.db.book.DbBookVpos.a(r2)
                    android.database.sqlite.SQLiteDatabase r2 = r2.getWritableDatabase()
                    com.mycompany.app.db.DbUtil.b(r2, r4, r0)
                L9b:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookVpos.AnonymousClass1.run():void");
            }
        });
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbBookVpos_table (_id INTEGER PRIMARY KEY, _path TEXT, _pos INTEGER, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookVpos_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookVpos_table (_id INTEGER PRIMARY KEY, _path TEXT, _pos INTEGER, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
