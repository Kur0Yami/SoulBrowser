package com.mycompany.app.db.book;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class DbBookPop extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbBookPop f12945c;

    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.sqlite.SQLiteOpenHelper, com.mycompany.app.db.book.DbBookPop] */
    public static DbBookPop a(Context context) {
        if (f12945c == null) {
            synchronized (DbBookPop.class) {
                try {
                    if (f12945c == null) {
                        f12945c = new SQLiteOpenHelper(MainUtil.R(context), "DbBookPop.db", (SQLiteDatabase.CursorFactory) null, 2);
                    }
                } finally {
                }
            }
        }
        return f12945c;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006a  */
    /* JADX WARN: Type inference failed for: r11v5, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.mycompany.app.main.MainItem.ChildItem b(android.content.Context r11, java.lang.String r12) {
        /*
            r0 = 0
            if (r11 == 0) goto L92
            boolean r1 = android.text.TextUtils.isEmpty(r12)
            if (r1 == 0) goto Lb
            goto L92
        Lb:
            long r1 = java.lang.System.currentTimeMillis()
            java.lang.String[] r7 = new java.lang.String[]{r12}
            com.mycompany.app.db.book.DbBookPop r11 = a(r11)
            android.database.sqlite.SQLiteDatabase r3 = r11.getWritableDatabase()
            java.lang.String r11 = "DbBookPop_table"
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
            java.lang.String r4 = "DbBookPop_table"
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
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookPop.b(android.content.Context, java.lang.String):com.mycompany.app.main.MainItem$ChildItem");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbBookPop_table (_id INTEGER PRIMARY KEY, _path TEXT, _title TEXT, _icon BLOB, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookPop_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookPop_table (_id INTEGER PRIMARY KEY, _path TEXT, _title TEXT, _icon BLOB, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
