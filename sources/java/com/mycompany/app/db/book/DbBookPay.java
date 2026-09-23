package com.mycompany.app.db.book;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class DbBookPay extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbBookPay f12941c;

    /* loaded from: classes3.dex */
    public static class DbPayItem {

        /* renamed from: a, reason: collision with root package name */
        public long f12942a;
        public boolean b;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.sqlite.SQLiteOpenHelper, com.mycompany.app.db.book.DbBookPay] */
    public static DbBookPay a(Context context) {
        if (f12941c == null) {
            synchronized (DbBookPay.class) {
                try {
                    if (f12941c == null) {
                        f12941c = new SQLiteOpenHelper(MainUtil.R(context), "DbBookPay.db", (SQLiteDatabase.CursorFactory) null, 1);
                    }
                } finally {
                }
            }
        }
        return f12941c;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbBookPay_table (_id INTEGER PRIMARY KEY, _time INTEGER, _paid INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookPay_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookPay_table (_id INTEGER PRIMARY KEY, _time INTEGER, _paid INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
