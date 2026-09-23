package com.mycompany.app.db.book;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class DbBookAgent extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbBookAgent f12925c;

    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.sqlite.SQLiteOpenHelper, com.mycompany.app.db.book.DbBookAgent] */
    public static DbBookAgent a(Context context) {
        if (f12925c == null) {
            synchronized (DbBookAgent.class) {
                try {
                    if (f12925c == null) {
                        f12925c = new SQLiteOpenHelper(MainUtil.R(context), "DbBookAgent.db", (SQLiteDatabase.CursorFactory) null, 1);
                    }
                } finally {
                }
            }
        }
        return f12925c;
    }

    public static String b(Context context, long j) {
        Cursor cursor;
        String str = null;
        if (context != null && j > 0) {
            try {
                cursor = DbUtil.f(a(context).getWritableDatabase(), "DbBookAgent_table", new String[]{"_title"}, j);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            str = cursor.getString(cursor.getColumnIndex("_title"));
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
        return str;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbBookAgent_table (_id INTEGER PRIMARY KEY, _title TEXT, _text TEXT, _icon BLOB, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookAgent_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookAgent_table (_id INTEGER PRIMARY KEY, _title TEXT, _text TEXT, _icon BLOB, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
