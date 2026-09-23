package com.mycompany.app.db.book;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class DbBookPage extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbBookPage f12939c;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.db.book.DbBookPage, android.database.sqlite.SQLiteOpenHelper] */
    public static DbBookPage a(Context context) {
        if (f12939c == null) {
            synchronized (DbBookPage.class) {
                try {
                    if (f12939c == null) {
                        f12939c = new SQLiteOpenHelper(MainUtil.R(context), "DbBookPage.db", (SQLiteDatabase.CursorFactory) null, 3);
                    }
                } finally {
                }
            }
        }
        return f12939c;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbBookPage_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _dir TEXT, _dname TEXT, _path TEXT, _name TEXT, _url TEXT, _icon BLOB, _time INTEGER, _size INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookPage_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookPage_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _dir TEXT, _dname TEXT, _path TEXT, _name TEXT, _url TEXT, _icon BLOB, _time INTEGER, _size INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
