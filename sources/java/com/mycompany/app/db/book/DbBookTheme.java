package com.mycompany.app.db.book;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.main.MainUtil;

/** Per-host web page theme override (0 Light, 1 Dark). Absent host => Display default. */
public class DbBookTheme extends SQLiteOpenHelper {

    public static DbBookTheme c;

    public DbBookTheme(Context context, String name, SQLiteDatabase.CursorFactory factory, int version) {
        super(context, name, factory, version);
    }

    public static DbBookTheme a(Context context) {
        if (c == null) {
            synchronized (DbBookTheme.class) {
                try {
                    if (c == null) {
                        c = new DbBookTheme(MainUtil.R(context), "DbBookTheme.db", null, 1);
                    }
                } finally {
                }
            }
        }
        return c;
    }

    /** @return theme 0/1, or -1 if no override for host */
    public static int b(Context context, String host) {
        int theme = -1;
        if (context == null || TextUtils.isEmpty(host)) {
            return -1;
        }
        Cursor cursor = null;
        try {
            cursor = DbUtil.g(a(context).getWritableDatabase(), "DbBookTheme_table",
                    new String[]{"_rsv4"}, "_path=?", new String[]{host}, null);
            if (cursor != null && cursor.moveToFirst()) {
                theme = cursor.getInt(cursor.getColumnIndex("_rsv4"));
            }
        } catch (Exception unused) {
        }
        if (cursor != null) {
            cursor.close();
        }
        return theme;
    }

    public static void c(Context context, String host, int theme) {
        if (context == null || TextUtils.isEmpty(host)) {
            return;
        }
        long now = System.currentTimeMillis();
        String[] args = {host};
        SQLiteDatabase db = a(context).getWritableDatabase();
        int count = DbUtil.d(db, "DbBookTheme_table", null, "_path=?", args);
        ContentValues values = new ContentValues();
        values.put("_path", host);
        values.put("_time", Long.valueOf(now));
        values.put("_rsv4", Integer.valueOf(theme));
        if (count == 1) {
            DbUtil.h(db, "DbBookTheme_table", values, "_path=?", args);
        } else if (count == 0) {
            DbUtil.e(db, "DbBookTheme_table", values);
        } else {
            DbUtil.a(db, "DbBookTheme_table", "_path=?", args);
            DbUtil.e(db, "DbBookTheme_table", values);
        }
    }

    public static void d(Context context, String host) {
        if (context == null || TextUtils.isEmpty(host)) {
            return;
        }
        DbUtil.a(a(context).getWritableDatabase(), "DbBookTheme_table", "_path=?", new String[]{host});
    }

    @Override
    public final void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE DbBookTheme_table (_id INTEGER PRIMARY KEY, _path TEXT, _title TEXT, _icon BLOB, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override
    public final void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL("DROP TABLE IF EXISTS DbBookTheme_table");
        db.execSQL("CREATE TABLE DbBookTheme_table (_id INTEGER PRIMARY KEY, _path TEXT, _title TEXT, _icon BLOB, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
