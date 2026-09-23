package com.mycompany.app.db.book;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import android.webkit.URLUtil;
import androidx.documentfile.provider.DocumentFile;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.dialog.DialogSetFilter;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import java.io.File;

/* loaded from: classes3.dex */
public class DbBookFilter extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbBookFilter f12931c;

    public static StringBuilder a(int i, Context context, StringBuilder sb) {
        if (i >= 0) {
            String[][] strArr = DialogSetFilter.p0;
            if (i < 44) {
                String[] strArr2 = strArr[i];
                b(context, strArr2[1], strArr2[0]);
                if (sb == null) {
                    sb = new StringBuilder();
                } else {
                    sb.append("/");
                }
                sb.append(i);
            }
        }
        return sb;
    }

    public static void b(Context context, String str, String str2) {
        String[] strArr = {str};
        Cursor cursor = null;
        try {
            SQLiteDatabase writableDatabase = f(context).getWritableDatabase();
            cursor = DbUtil.g(writableDatabase, "DbBookFilter_table", null, "_path=?", strArr, null);
            if (cursor == null || !cursor.moveToFirst()) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("_path", str);
                contentValues.put("_title", str2);
                contentValues.put("_time", Long.valueOf(System.currentTimeMillis()));
                contentValues.put("_use", (Integer) 1);
                DbUtil.e(writableDatabase, "DbBookFilter_table", contentValues);
            }
        } catch (Exception unused) {
        }
        if (cursor != null) {
            cursor.close();
        }
    }

    public static long d(Context context) {
        long lastModified;
        long j = 0;
        if (context == null) {
            return 0L;
        }
        Cursor cursor = null;
        try {
            cursor = DbUtil.g(f(context).getWritableDatabase(), "DbBookFilter_table", new String[]{"_path", "_time"}, "_use=?", new String[]{"1"}, null);
            if (cursor != null && cursor.moveToFirst()) {
                int columnIndex = cursor.getColumnIndex("_path");
                long j2 = 0;
                do {
                    try {
                        String string = cursor.getString(columnIndex);
                        if ("sb_user_filter_path".equals(string)) {
                            lastModified = cursor.getLong(cursor.getColumnIndex("_time"));
                        } else if (MainUri.q(string)) {
                            DocumentFile f = MainUri.f(context, string);
                            if (f == null) {
                                lastModified = 0;
                            } else {
                                lastModified = f.f();
                            }
                        } else {
                            String a4 = MainUtil.a4(context, string);
                            if (!TextUtils.isEmpty(a4)) {
                                lastModified = new File(a4).lastModified();
                            }
                        }
                        j2 += lastModified;
                    } catch (Exception unused) {
                    }
                } while (cursor.moveToNext());
                j = j2;
            }
        } catch (Exception unused2) {
        }
        if (cursor != null) {
            cursor.close();
        }
        return j;
    }

    public static int e(String str) {
        boolean startsWith;
        if ("sb_user_filter_path".equals(str)) {
            return R.drawable.outline_verified_user_red_24;
        }
        if (!URLUtil.isNetworkUrl(str)) {
            return R.drawable.outline_draft_black_24;
        }
        String c2 = MainUtil.c2(str);
        if (!TextUtils.isEmpty(c2)) {
            str = c2;
        }
        String[][] strArr = DialogSetFilter.p0;
        int i = 0;
        if (TextUtils.isEmpty(str)) {
            startsWith = false;
        } else {
            startsWith = str.startsWith("https://raw.githubusercontent.com/AdguardTeam/");
        }
        if (startsWith) {
            while (i < 18) {
                if (str.equals(DialogSetFilter.C(i))) {
                    return R.drawable.ic_adguard;
                }
                i++;
            }
        } else {
            while (i < 44) {
                if (str.equals(DialogSetFilter.p0[i][1])) {
                    return R.drawable.ic_adblock;
                }
                i++;
            }
        }
        return R.drawable.outline_public_black_24;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.sqlite.SQLiteOpenHelper, com.mycompany.app.db.book.DbBookFilter] */
    public static DbBookFilter f(Context context) {
        if (f12931c == null) {
            synchronized (DbBookFilter.class) {
                try {
                    if (f12931c == null) {
                        f12931c = new SQLiteOpenHelper(MainUtil.R(context), "DbBookFilter.db", (SQLiteDatabase.CursorFactory) null, 2);
                    }
                } finally {
                }
            }
        }
        return f12931c;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a2 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a6  */
    /* JADX WARN: Type inference failed for: r7v5, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.mycompany.app.main.MainItem.ChildItem i(android.content.Context r20, java.lang.String r21, java.lang.String r22) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookFilter.i(android.content.Context, java.lang.String, java.lang.String):com.mycompany.app.main.MainItem$ChildItem");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbBookFilter_table (_id INTEGER PRIMARY KEY, _path TEXT, _title TEXT, _time INTEGER, _use INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookFilter_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookFilter_table (_id INTEGER PRIMARY KEY, _path TEXT, _title TEXT, _time INTEGER, _use INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
