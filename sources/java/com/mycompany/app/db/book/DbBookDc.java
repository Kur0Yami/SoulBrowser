package com.mycompany.app.db.book;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.support.v4.media.a;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class DbBookDc extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbBookDc f12929c;

    public static String a(String str, String str2, boolean z) {
        if (z) {
            return str;
        }
        return a.D(str2, " - ", str);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.sqlite.SQLiteOpenHelper, com.mycompany.app.db.book.DbBookDc] */
    public static DbBookDc b(Context context) {
        if (f12929c == null) {
            synchronized (DbBookDc.class) {
                try {
                    if (f12929c == null) {
                        f12929c = new SQLiteOpenHelper(MainUtil.R(context), "DbBookDc.db", (SQLiteDatabase.CursorFactory) null, 1);
                    }
                } finally {
                }
            }
        }
        return f12929c;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbBookDc_table (_id INTEGER PRIMARY KEY, _isip INTEGER, _path TEXT, _name TEXT, _text TEXT, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookDc_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookDc_table (_id INTEGER PRIMARY KEY, _isip INTEGER, _path TEXT, _name TEXT, _text TEXT, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
