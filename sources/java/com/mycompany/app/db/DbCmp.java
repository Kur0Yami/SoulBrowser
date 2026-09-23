package com.mycompany.app.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.mycompany.app.data.DataCmp;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class DbCmp extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbCmp f12919c;

    /* JADX WARN: Type inference failed for: r9v0, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    public static MainItem.ChildItem a(Context context, String str) {
        Cursor cursor;
        MainItem.ChildItem childItem = null;
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                cursor = DbUtil.g(b(context).getWritableDatabase(), "DbCmp_table", null, "_path=?", new String[]{str}, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            int columnIndex = cursor.getColumnIndex("_dir");
                            int columnIndex2 = cursor.getColumnIndex("_dname");
                            int columnIndex3 = cursor.getColumnIndex("_name");
                            int columnIndex4 = cursor.getColumnIndex("_time");
                            int columnIndex5 = cursor.getColumnIndex("_size");
                            int columnIndex6 = cursor.getColumnIndex("_count");
                            int columnIndex7 = cursor.getColumnIndex("_index");
                            int columnIndex8 = cursor.getColumnIndex("_page");
                            ?? obj = new Object();
                            try {
                                obj.e = cursor.getString(columnIndex);
                                obj.f = cursor.getString(columnIndex2);
                                obj.g = str;
                                obj.h = cursor.getString(columnIndex3);
                                obj.A = cursor.getLong(columnIndex4);
                                obj.B = cursor.getLong(columnIndex5);
                                obj.s = (int) cursor.getLong(columnIndex6);
                                obj.t = (int) cursor.getLong(columnIndex7);
                                obj.u = cursor.getInt(columnIndex8);
                            } catch (Exception unused) {
                            }
                            childItem = obj;
                        }
                    } catch (Exception unused2) {
                    }
                }
            } catch (Exception unused3) {
                cursor = null;
            }
            if (cursor != null) {
                cursor.close();
            }
        }
        return childItem;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.db.DbCmp, android.database.sqlite.SQLiteOpenHelper] */
    public static DbCmp b(Context context) {
        if (f12919c == null) {
            synchronized (DbCmp.class) {
                try {
                    if (f12919c == null) {
                        f12919c = new SQLiteOpenHelper(MainUtil.R(context), "DbCmp.db", (SQLiteDatabase.CursorFactory) null, 2);
                    }
                } finally {
                }
            }
        }
        return f12919c;
    }

    public static void d(Context context, MainUri.UriItem uriItem) {
        if (context != null && uriItem != null && !TextUtils.isEmpty(uriItem.e)) {
            String[] strArr = {uriItem.e};
            Cursor cursor = null;
            try {
                SQLiteDatabase writableDatabase = b(context).getWritableDatabase();
                cursor = DbUtil.g(writableDatabase, "DbCmp_table", null, "_path=?", strArr, null);
                if (cursor == null || !cursor.moveToFirst()) {
                    if (uriItem.g == 0) {
                        uriItem.g = System.currentTimeMillis();
                    }
                    if (uriItem.h == 0) {
                        uriItem.h = MainUtil.g1(context, uriItem.e);
                    }
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("_dir", uriItem.f16986c);
                    contentValues.put("_dname", uriItem.d);
                    contentValues.put("_path", uriItem.e);
                    contentValues.put("_name", uriItem.f);
                    contentValues.put("_time", Long.valueOf(uriItem.g));
                    contentValues.put("_size", Long.valueOf(uriItem.h));
                    contentValues.put("_count", (Integer) 0);
                    contentValues.put("_index", (Integer) 0);
                    contentValues.put("_page", (Integer) 0);
                    DbUtil.e(writableDatabase, "DbCmp_table", contentValues);
                }
            } catch (Exception unused) {
            }
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public static void e(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            DbUtil.a(b(context).getWritableDatabase(), "DbCmp_table", "_path=?", new String[]{str});
        }
    }

    public static void f(Context context, final String str, final long j, final long j2, final int i) {
        final Context R;
        if (TextUtils.isEmpty(str) || (R = MainUtil.R(context)) == null) {
            return;
        }
        MainApp.J(R, new Runnable() { // from class: com.mycompany.app.db.DbCmp.1
            @Override // java.lang.Runnable
            public final void run() {
                DbCmp dbCmp = DbCmp.f12919c;
                String str2 = str;
                if (!TextUtils.isEmpty(str2)) {
                    Context context2 = R;
                    MainItem.ChildItem g = DataCmp.m(context2).g(str2);
                    if (g != null) {
                        long j3 = j;
                        g.s = (int) j3;
                        long j4 = j2;
                        g.t = (int) j4;
                        int i2 = i;
                        g.u = i2;
                        String[] strArr = {str2};
                        SQLiteDatabase writableDatabase = DbCmp.b(context2).getWritableDatabase();
                        int d = DbUtil.d(writableDatabase, "DbCmp_table", null, "_path=?", strArr);
                        if (d != 0) {
                            if (d == 1) {
                                ContentValues contentValues = new ContentValues();
                                contentValues.put("_count", Integer.valueOf(g.s));
                                contentValues.put("_index", Integer.valueOf(g.t));
                                contentValues.put("_page", Integer.valueOf(g.u));
                                DbUtil.h(writableDatabase, "DbCmp_table", contentValues, "_path=?", strArr);
                                return;
                            }
                            MainUri.UriItem j5 = MainUri.j(context2, str2, null);
                            if (j5 != null) {
                                ContentValues contentValues2 = new ContentValues();
                                contentValues2.put("_dir", j5.f16986c);
                                contentValues2.put("_dname", j5.d);
                                contentValues2.put("_path", str2);
                                contentValues2.put("_name", j5.f);
                                contentValues2.put("_time", Long.valueOf(j5.g));
                                contentValues2.put("_size", Long.valueOf(j5.h));
                                contentValues2.put("_count", Long.valueOf(j3));
                                contentValues2.put("_index", Long.valueOf(j4));
                                contentValues2.put("_page", Integer.valueOf(i2));
                                DbUtil.e(writableDatabase, "DbCmp_table", contentValues2);
                            }
                        }
                    }
                }
            }
        });
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbCmp_table (_id INTEGER PRIMARY KEY, _dir TEXT, _dname TEXT, _path TEXT, _name TEXT, _time INTEGER, _size INTEGER, _count INTEGER, _index INTEGER, _page INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbCmp_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbCmp_table (_id INTEGER PRIMARY KEY, _dir TEXT, _dname TEXT, _path TEXT, _name TEXT, _time INTEGER, _size INTEGER, _count INTEGER, _index INTEGER, _page INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
