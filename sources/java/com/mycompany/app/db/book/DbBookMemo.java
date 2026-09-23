package com.mycompany.app.db.book;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class DbBookMemo extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbBookMemo f12937c;

    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.sqlite.SQLiteOpenHelper, com.mycompany.app.db.book.DbBookMemo] */
    public static DbBookMemo a(Context context) {
        if (f12937c == null) {
            synchronized (DbBookMemo.class) {
                try {
                    if (f12937c == null) {
                        f12937c = new SQLiteOpenHelper(MainUtil.R(context), "DbBookMemo.db", (SQLiteDatabase.CursorFactory) null, 1);
                    }
                } finally {
                }
            }
        }
        return f12937c;
    }

    public static void b(Context context, long j, int i) {
        if (context != null && j > 0) {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("_order", Integer.valueOf(i));
                DbUtil.i(a(context).getWritableDatabase(), "DbBookMemo_table", contentValues, j);
            } catch (Exception unused) {
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbBookMemo_table (_id INTEGER PRIMARY KEY, _text TEXT, _time INTEGER, _order INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookMemo_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookMemo_table (_id INTEGER PRIMARY KEY, _text TEXT, _time INTEGER, _order INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
