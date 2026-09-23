package com.mycompany.app.db.book;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class DbBookBlock extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbBookBlock f12927c;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.db.book.DbBookBlock, android.database.sqlite.SQLiteOpenHelper] */
    public static DbBookBlock a(Context context) {
        if (f12927c == null) {
            synchronized (DbBookBlock.class) {
                try {
                    if (f12927c == null) {
                        f12927c = new SQLiteOpenHelper(MainUtil.R(context), "DbBookBlock.db", (SQLiteDatabase.CursorFactory) null, 2);
                    }
                } finally {
                }
            }
        }
        return f12927c;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0083  */
    /* JADX WARN: Type inference failed for: r12v5, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.mycompany.app.main.MainItem.ChildItem b(android.content.Context r12, java.lang.String r13, java.lang.String r14) {
        /*
            r0 = 0
            if (r12 == 0) goto Laa
            boolean r1 = android.text.TextUtils.isEmpty(r13)
            if (r1 != 0) goto Laa
            boolean r1 = android.text.TextUtils.isEmpty(r14)
            if (r1 == 0) goto L11
            goto Laa
        L11:
            long r1 = java.lang.System.currentTimeMillis()
            java.lang.String[] r7 = new java.lang.String[]{r13, r14}
            com.mycompany.app.db.book.DbBookBlock r12 = a(r12)
            android.database.sqlite.SQLiteDatabase r3 = r12.getWritableDatabase()
            java.lang.String r12 = "DbBookBlock_table"
            java.lang.String r6 = "_path=? AND _image=?"
            int r4 = com.mycompany.app.db.DbUtil.d(r3, r12, r0, r6, r7)
            r9 = 0
            if (r4 == 0) goto L57
            android.content.ContentValues r5 = new android.content.ContentValues
            r5.<init>()
            java.lang.String r8 = "_type"
            java.lang.Integer r10 = java.lang.Integer.valueOf(r9)
            r5.put(r8, r10)
            java.lang.String r8 = "_path"
            r5.put(r8, r13)
            java.lang.String r8 = "_image"
            r5.put(r8, r14)
            java.lang.String r8 = "_time"
            java.lang.Long r10 = java.lang.Long.valueOf(r1)
            r5.put(r8, r10)
            r8 = 1
            if (r4 != r8) goto L54
            com.mycompany.app.db.DbUtil.h(r3, r12, r5, r6, r7)
            goto L57
        L54:
            com.mycompany.app.db.DbUtil.e(r3, r12, r5)
        L57:
            java.lang.String r12 = "_id"
            java.lang.String[] r5 = new java.lang.String[]{r12}
            r10 = 0
            java.lang.String r4 = "DbBookBlock_table"
            r8 = 0
            android.database.Cursor r3 = com.mycompany.app.db.DbUtil.g(r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> L77
            if (r3 == 0) goto L78
            boolean r4 = r3.moveToFirst()     // Catch: java.lang.Exception -> L78
            if (r4 == 0) goto L78
            int r12 = r3.getColumnIndex(r12)     // Catch: java.lang.Exception -> L78
            long r4 = r3.getLong(r12)     // Catch: java.lang.Exception -> L78
            goto L79
        L77:
            r3 = r0
        L78:
            r4 = r10
        L79:
            if (r3 == 0) goto L7e
            r3.close()
        L7e:
            int r12 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
            if (r12 > 0) goto L83
            goto Laa
        L83:
            com.mycompany.app.main.MainItem$ChildItem r12 = new com.mycompany.app.main.MainItem$ChildItem
            r12.<init>()
            r12.y = r4
            r12.g = r13
            r12.h = r14
            r12.A = r1
            r12.f16551c = r9
            r14 = -460552(0xfffffffffff8f8f8, float:NaN)
            r12.v = r14
            int r14 = com.mycompany.app.soulbrowser.R.drawable.outline_public_black_24
            r12.w = r14
            java.lang.String r14 = "yyyy.MM.dd"
            java.lang.String r14 = com.mycompany.app.main.MainUtil.y1(r1, r0, r14)
            r12.F = r14
            java.lang.String r13 = com.mycompany.app.main.MainUtil.D1(r13, r9)
            r12.G = r13
            return r12
        Laa:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookBlock.b(android.content.Context, java.lang.String, java.lang.String):com.mycompany.app.main.MainItem$ChildItem");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbBookBlock_table (_id INTEGER PRIMARY KEY, _type INTEGER, _path TEXT, _image TEXT, _icon BLOB, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookBlock_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookBlock_table (_id INTEGER PRIMARY KEY, _type INTEGER, _path TEXT, _image TEXT, _icon BLOB, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
