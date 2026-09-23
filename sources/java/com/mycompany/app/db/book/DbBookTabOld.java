package com.mycompany.app.db.book;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class DbBookTabOld extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbBookTabOld f12958c;

    /* loaded from: classes3.dex */
    public static class TabOldItem {

        /* renamed from: a, reason: collision with root package name */
        public long f12959a;
        public long b;

        /* renamed from: c, reason: collision with root package name */
        public long f12960c;
        public String d;
        public int e;
        public String f;
        public String g;
        public int h;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.sqlite.SQLiteOpenHelper, com.mycompany.app.db.book.DbBookTabOld] */
    public static DbBookTabOld a(Context context) {
        if (f12958c == null) {
            synchronized (DbBookTabOld.class) {
                try {
                    if (f12958c == null) {
                        f12958c = new SQLiteOpenHelper(MainUtil.R(context), "DbBookTab2.db", (SQLiteDatabase.CursorFactory) null, 1);
                    }
                } finally {
                }
            }
        }
        return f12958c;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:42:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r15v0, types: [com.mycompany.app.db.book.DbBookTabOld$TabOldItem, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(android.content.Context r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookTabOld.b(android.content.Context, boolean):void");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbBookTab2_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _gid INTEGER, _gname TEXT, _color INTEGER, _index INTEGER, _path TEXT, _title TEXT, _state TEXT, _desk INTEGER, _ikey TEXT, _icon BLOB, _tkey TEXT, _thumb BLOB, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookTab2_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookTab2_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _gid INTEGER, _gname TEXT, _color INTEGER, _index INTEGER, _path TEXT, _title TEXT, _state TEXT, _desk INTEGER, _ikey TEXT, _icon BLOB, _tkey TEXT, _thumb BLOB, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
