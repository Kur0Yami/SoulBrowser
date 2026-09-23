package com.mycompany.app.db.book;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.dialog.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class DbBookSub extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbBookSub f12951c;

    /* loaded from: classes3.dex */
    public static class DbSubItem {

        /* renamed from: a, reason: collision with root package name */
        public String f12954a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f12955c;
        public String d;
        public int e;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0041 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r10) {
        /*
            if (r10 != 0) goto L3
            goto L41
        L3:
            java.lang.String r0 = "_id"
            java.lang.String[] r3 = new java.lang.String[]{r0}
            java.lang.String r6 = "_time ASC"
            r7 = 0
            r9 = 0
            com.mycompany.app.db.book.DbBookSub r1 = b(r10)     // Catch: java.lang.Exception -> L37
            android.database.sqlite.SQLiteDatabase r1 = r1.getWritableDatabase()     // Catch: java.lang.Exception -> L37
            java.lang.String r2 = "DbBookSub_table"
            r4 = 0
            r5 = 0
            android.database.Cursor r9 = com.mycompany.app.db.DbUtil.g(r1, r2, r3, r4, r5, r6)     // Catch: java.lang.Exception -> L37
            if (r9 == 0) goto L37
            int r1 = r9.getCount()     // Catch: java.lang.Exception -> L37
            r2 = 500(0x1f4, float:7.0E-43)
            if (r1 <= r2) goto L37
            boolean r1 = r9.moveToFirst()     // Catch: java.lang.Exception -> L37
            if (r1 == 0) goto L37
            int r0 = r9.getColumnIndex(r0)     // Catch: java.lang.Exception -> L37
            long r0 = r9.getLong(r0)     // Catch: java.lang.Exception -> L37
            goto L38
        L37:
            r0 = r7
        L38:
            if (r9 == 0) goto L3d
            r9.close()
        L3d:
            int r2 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r2 > 0) goto L42
        L41:
            return
        L42:
            com.mycompany.app.db.book.DbBookSub r10 = b(r10)
            android.database.sqlite.SQLiteDatabase r10 = r10.getWritableDatabase()
            java.lang.String r2 = "DbBookSub_table"
            com.mycompany.app.db.DbUtil.b(r10, r2, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookSub.a(android.content.Context):void");
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.sqlite.SQLiteOpenHelper, com.mycompany.app.db.book.DbBookSub] */
    public static DbBookSub b(Context context) {
        if (f12951c == null) {
            synchronized (DbBookSub.class) {
                try {
                    if (f12951c == null) {
                        f12951c = new SQLiteOpenHelper(MainUtil.R(context), "DbBookSub.db", (SQLiteDatabase.CursorFactory) null, 1);
                    }
                } finally {
                }
            }
        }
        return f12951c;
    }

    public static void d(int i, Context context, String str, String str2) {
        String[] strArr;
        SQLiteDatabase writableDatabase;
        int d;
        if (context != null && !TextUtils.isEmpty(str) && (d = DbUtil.d((writableDatabase = b(context).getWritableDatabase()), "DbBookSub_table", null, "_path=?", (strArr = new String[]{str}))) != 0) {
            ContentValues e = a.e("_path", str, "_rsv1", str2);
            e.put("_rsv4", Integer.valueOf(i));
            e.put("_time", Long.valueOf(System.currentTimeMillis()));
            if (d == 1) {
                DbUtil.h(writableDatabase, "DbBookSub_table", e, "_path=?", strArr);
            } else if (DbUtil.e(writableDatabase, "DbBookSub_table", e) != 0) {
                a(context);
            }
        }
    }

    public static void e(Context context, final String str, final String str2, final int i, final int i2) {
        final Context R = MainUtil.R(context);
        if (R == null) {
            return;
        }
        MainApp.J(R, new Runnable() { // from class: com.mycompany.app.db.book.DbBookSub.1
            @Override // java.lang.Runnable
            public final void run() {
                DbBookSub dbBookSub = DbBookSub.f12951c;
                String str3 = str;
                if (!TextUtils.isEmpty(str3)) {
                    String[] strArr = {str3};
                    Context context2 = R;
                    SQLiteDatabase writableDatabase = DbBookSub.b(context2).getWritableDatabase();
                    int d = DbUtil.d(writableDatabase, "DbBookSub_table", null, "_path=?", strArr);
                    if (d != 0) {
                        ContentValues e = a.e("_path", str3, "_sub", str2);
                        e.put("_sync", Integer.valueOf(i));
                        e.put("_lang", Integer.valueOf(i2));
                        e.put("_time", Long.valueOf(System.currentTimeMillis()));
                        if (d == 1) {
                            DbUtil.h(writableDatabase, "DbBookSub_table", e, "_path=?", strArr);
                        } else if (DbUtil.e(writableDatabase, "DbBookSub_table", e) != 0) {
                            DbBookSub.a(context2);
                        }
                    }
                }
            }
        });
    }

    public static void f(final int i, Context context, final String str, final String str2) {
        final Context R = MainUtil.R(context);
        if (R == null) {
            return;
        }
        MainApp.J(R, new Runnable() { // from class: com.mycompany.app.db.book.DbBookSub.2
            @Override // java.lang.Runnable
            public final void run() {
                DbBookSub.d(i, R, str, str2);
            }
        });
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbBookSub_table (_id INTEGER PRIMARY KEY, _path TEXT, _sub TEXT, _sync INTEGER, _lang INTEGER, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookSub_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookSub_table (_id INTEGER PRIMARY KEY, _path TEXT, _sub TEXT, _sync INTEGER, _lang INTEGER, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
