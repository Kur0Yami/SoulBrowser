package com.mycompany.app.db.book;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;

/* loaded from: classes3.dex */
public class DbBookPms extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbBookPms f12944c;

    public static String a(Context context, int i) {
        StringBuilder sb;
        if ((i & 2) == 2) {
            sb = new StringBuilder();
            sb.append(context.getString(R.string.camera));
        } else {
            sb = null;
        }
        if ((i & 4) == 4) {
            if (sb == null) {
                sb = new StringBuilder();
            } else {
                sb.append(", ");
            }
            sb.append(context.getString(R.string.audio));
        }
        if ((i & 16) == 16) {
            if (sb == null) {
                sb = new StringBuilder();
            } else {
                sb.append(", ");
            }
            sb.append(context.getString(R.string.media));
        }
        if ((i & 8) == 8) {
            if (sb == null) {
                sb = new StringBuilder();
            } else {
                sb.append(", ");
            }
            sb.append(context.getString(R.string.location));
        }
        if (sb == null) {
            return null;
        }
        return sb.toString();
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.sqlite.SQLiteOpenHelper, com.mycompany.app.db.book.DbBookPms] */
    public static DbBookPms b(Context context) {
        if (f12944c == null) {
            synchronized (DbBookPms.class) {
                try {
                    if (f12944c == null) {
                        f12944c = new SQLiteOpenHelper(MainUtil.R(context), "DbBookPms.db", (SQLiteDatabase.CursorFactory) null, 1);
                    }
                } finally {
                }
            }
        }
        return f12944c;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbBookPms_table (_id INTEGER PRIMARY KEY, _path TEXT, _title TEXT, _icon BLOB, _time INTEGER, _allow INTEGER, _block INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookPms_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookPms_table (_id INTEGER PRIMARY KEY, _path TEXT, _title TEXT, _icon BLOB, _time INTEGER, _allow INTEGER, _block INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
