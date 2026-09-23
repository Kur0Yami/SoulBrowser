package com.mycompany.app.db.book;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.main.MainUtil;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DbBookLocale extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbBookLocale f12936c;

    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.sqlite.SQLiteOpenHelper, com.mycompany.app.db.book.DbBookLocale] */
    public static DbBookLocale a(Context context) {
        if (f12936c == null) {
            synchronized (DbBookLocale.class) {
                try {
                    if (f12936c == null) {
                        f12936c = new SQLiteOpenHelper(MainUtil.R(context), "DbBookLocale.db", (SQLiteDatabase.CursorFactory) null, 1);
                    }
                } finally {
                }
            }
        }
        return f12936c;
    }

    public static ArrayList b(Context context, String str) {
        Cursor cursor = null;
        if (context == null || TextUtils.isEmpty(str)) {
            return null;
        }
        String[] strArr = {"_name"};
        String[] strArr2 = {str};
        ArrayList arrayList = new ArrayList();
        try {
            cursor = DbUtil.g(a(context).getWritableDatabase(), "DbBookLocale_table", strArr, "_code=?", strArr2, "_index ASC");
            if (cursor != null && cursor.moveToFirst()) {
                int columnIndex = cursor.getColumnIndex("_name");
                do {
                    String string = cursor.getString(columnIndex);
                    if (!TextUtils.isEmpty(string)) {
                        arrayList.add(string);
                    }
                } while (cursor.moveToNext());
            }
        } catch (Exception unused) {
        }
        if (cursor != null) {
            cursor.close();
        }
        return arrayList;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbBookLocale_table (_id INTEGER PRIMARY KEY, _code TEXT, _index INTEGER, _name TEXT, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookLocale_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookLocale_table (_id INTEGER PRIMARY KEY, _code TEXT, _index INTEGER, _name TEXT, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
