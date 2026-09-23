package com.mycompany.app.db.book;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class DbAdsCmd extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbAdsCmd f12923c;

    public static String a(Context context, String str, String str2) {
        Cursor cursor;
        String str3 = null;
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                cursor = DbUtil.g(b(context).getWritableDatabase(), "DbAdsCmd_table", new String[]{str2}, "_host=?", new String[]{str}, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            str3 = cursor.getString(cursor.getColumnIndex(str2));
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
        return str3;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.sqlite.SQLiteOpenHelper, com.mycompany.app.db.book.DbAdsCmd] */
    public static DbAdsCmd b(Context context) {
        if (f12923c == null) {
            synchronized (DbAdsCmd.class) {
                try {
                    if (f12923c == null) {
                        f12923c = new SQLiteOpenHelper(MainUtil.R(context), "DbAdsCmd.db", (SQLiteDatabase.CursorFactory) null, 1);
                    }
                } finally {
                }
            }
        }
        return f12923c;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void d(android.content.Context r10, java.lang.String r11, java.lang.String r12, java.lang.String r13) {
        /*
            if (r10 == 0) goto L9e
            boolean r0 = android.text.TextUtils.isEmpty(r11)
            if (r0 == 0) goto La
            goto L9e
        La:
            boolean r0 = android.text.TextUtils.isEmpty(r12)
            if (r0 != 0) goto L18
            java.lang.String r0 = "\\"
            java.lang.String r1 = ""
            java.lang.String r12 = r12.replace(r0, r1)
        L18:
            java.lang.String[] r0 = new java.lang.String[]{r11}
            com.mycompany.app.db.book.DbAdsCmd r1 = b(r10)
            android.database.sqlite.SQLiteDatabase r1 = r1.getWritableDatabase()
            java.lang.String r2 = "DbAdsCmd_table"
            r3 = 0
            java.lang.String r4 = "_host=?"
            int r5 = com.mycompany.app.db.DbUtil.d(r1, r2, r3, r4, r0)
            if (r5 != 0) goto L30
            goto L9e
        L30:
            android.content.ContentValues r12 = androidx.work.impl.workers.a.f(r13, r12)
            long r6 = java.lang.System.currentTimeMillis()
            java.lang.Long r13 = java.lang.Long.valueOf(r6)
            java.lang.String r6 = "_time"
            r12.put(r6, r13)
            r13 = 1
            if (r5 != r13) goto L48
            com.mycompany.app.db.DbUtil.h(r1, r2, r12, r4, r0)
            return
        L48:
            java.lang.String r13 = "_host"
            r12.put(r13, r11)
            long r11 = com.mycompany.app.db.DbUtil.e(r1, r2, r12)
            r0 = 0
            int r11 = (r11 > r0 ? 1 : (r11 == r0 ? 0 : -1))
            if (r11 == 0) goto L9e
            java.lang.String r11 = "_id"
            java.lang.String[] r6 = new java.lang.String[]{r11}
            java.lang.String r9 = "_time ASC"
            com.mycompany.app.db.book.DbAdsCmd r12 = b(r10)     // Catch: java.lang.Exception -> L88
            android.database.sqlite.SQLiteDatabase r4 = r12.getWritableDatabase()     // Catch: java.lang.Exception -> L88
            java.lang.String r5 = "DbAdsCmd_table"
            r7 = 0
            r8 = 0
            android.database.Cursor r3 = com.mycompany.app.db.DbUtil.g(r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Exception -> L88
            if (r3 == 0) goto L88
            int r12 = r3.getCount()     // Catch: java.lang.Exception -> L88
            r13 = 100
            if (r12 <= r13) goto L88
            boolean r12 = r3.moveToFirst()     // Catch: java.lang.Exception -> L88
            if (r12 == 0) goto L88
            int r11 = r3.getColumnIndex(r11)     // Catch: java.lang.Exception -> L88
            long r11 = r3.getLong(r11)     // Catch: java.lang.Exception -> L88
            goto L89
        L88:
            r11 = r0
        L89:
            if (r3 == 0) goto L8e
            r3.close()
        L8e:
            int r13 = (r11 > r0 ? 1 : (r11 == r0 ? 0 : -1))
            if (r13 > 0) goto L93
            goto L9e
        L93:
            com.mycompany.app.db.book.DbAdsCmd r10 = b(r10)
            android.database.sqlite.SQLiteDatabase r10 = r10.getWritableDatabase()
            com.mycompany.app.db.DbUtil.b(r10, r2, r11)
        L9e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbAdsCmd.d(android.content.Context, java.lang.String, java.lang.String, java.lang.String):void");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbAdsCmd_table (_id INTEGER PRIMARY KEY, _host TEXT, _ele TEXT, _doc TEXT, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbAdsCmd_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbAdsCmd_table (_id INTEGER PRIMARY KEY, _host TEXT, _ele TEXT, _doc TEXT, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
