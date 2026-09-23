package com.mycompany.app.db.book;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.graphics.Bitmap;
import android.text.TextUtils;
import androidx.work.impl.workers.a;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.main.BitmapUtil;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.quick.QuickAdapter;
import com.mycompany.app.soulbrowser.R;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class DbBookQuick extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbBookQuick f12946c;
    public static int f;

    public static void A(int i, Context context, String str, String str2) {
        String str3;
        if (context != null && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (PrefSync.k) {
                str3 = "1";
            } else {
                str3 = "0";
            }
            ContentValues f2 = a.f("_rsv1", str);
            f2.put("_order", Integer.valueOf(i));
            DbUtil.h(i(context).getWritableDatabase(), "DbBookQuick_table", f2, "_secret=? AND _path=?", new String[]{str3, str2});
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0145 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0140 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r16v15 */
    /* JADX WARN: Type inference failed for: r16v17 */
    /* JADX WARN: Type inference failed for: r16v18 */
    /* JADX WARN: Type inference failed for: r16v5, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r21v12 */
    /* JADX WARN: Type inference failed for: r21v13 */
    /* JADX WARN: Type inference failed for: r21v14 */
    /* JADX WARN: Type inference failed for: r21v3, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.OutputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File a(android.content.Context r24, java.lang.String r25) {
        /*
            Method dump skipped, instructions count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookQuick.a(android.content.Context, java.lang.String):java.io.File");
    }

    public static Bitmap b(Cursor cursor, int i, String str, boolean z) {
        byte[] blob;
        Bitmap bitmap = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            bitmap = MainListLoader.c(str, z);
            if (!MainUtil.f6(bitmap) && (blob = cursor.getBlob(i)) != null && blob.length > 1) {
                bitmap = BitmapUtil.a(blob, blob.length);
                if (!MainUtil.f6(bitmap)) {
                    return bitmap;
                }
                MainListLoader.g(str, bitmap, z);
            }
        } catch (Exception unused) {
        }
        return bitmap;
    }

    public static int d(Context context, String str) {
        String str2;
        int i = 0;
        if (context != null && !TextUtils.isEmpty(str)) {
            if (PrefSync.k) {
                str2 = "1";
            } else {
                str2 = "0";
            }
            String[] strArr = {str2, str};
            Cursor cursor = null;
            try {
                cursor = DbUtil.g(i(context).getWritableDatabase(), "DbBookQuick_table", null, "_secret=? AND _rsv1=?", strArr, null);
                if (cursor != null) {
                    i = cursor.getCount();
                }
            } catch (Exception unused) {
            }
            if (cursor != null) {
                cursor.close();
            }
        }
        return i;
    }

    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Object, com.mycompany.app.quick.QuickAdapter$QuickItem] */
    public static ArrayList e(Context context, String str) {
        String str2;
        Cursor cursor = null;
        if (context == null || TextUtils.isEmpty(str)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (PrefSync.k) {
            str2 = "1";
        } else {
            str2 = "0";
        }
        try {
            cursor = DbUtil.g(i(context).getWritableDatabase(), "DbBookQuick_table", null, "_secret=? AND _rsv1=?", new String[]{str2, str}, "_order ASC");
            if (cursor != null && cursor.moveToFirst()) {
                int columnIndex = cursor.getColumnIndex("_id");
                int columnIndex2 = cursor.getColumnIndex("_path");
                int columnIndex3 = cursor.getColumnIndex("_title");
                int columnIndex4 = cursor.getColumnIndex("_rsv4");
                int columnIndex5 = cursor.getColumnIndex("_order");
                Pattern compile = Pattern.compile("\\p{Punct}");
                do {
                    ?? obj = new Object();
                    obj.b = cursor.getLong(columnIndex);
                    obj.d = cursor.getString(columnIndex2);
                    String string = cursor.getString(columnIndex3);
                    obj.f = string;
                    obj.g = MainUtil.y2(string, compile);
                    obj.h = cursor.getInt(columnIndex4);
                    obj.i = cursor.getInt(columnIndex5);
                    arrayList.add(obj);
                } while (cursor.moveToNext());
            }
        } catch (Exception unused) {
        }
        if (cursor != null) {
            cursor.close();
        }
        return arrayList;
    }

    public static int f(int i) {
        int length = MainConst.b0.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (i == MainConst.b0[i2]) {
                if (i == -16777216 && MainApp.K1) {
                    return R.drawable.baseline_folder_2_black_24;
                }
                return MainConst.c0[i2];
            }
        }
        return MainConst.c0[0];
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.sqlite.SQLiteOpenHelper, com.mycompany.app.db.book.DbBookQuick] */
    public static DbBookQuick i(Context context) {
        if (f12946c == null) {
            synchronized (DbBookQuick.class) {
                try {
                    if (f12946c == null) {
                        ?? sQLiteOpenHelper = new SQLiteOpenHelper(MainUtil.R(context), "DbBookQuick.db", (SQLiteDatabase.CursorFactory) null, 1);
                        if (f == 0) {
                            f = MainUtil.L6(0, MainConst.b0.length);
                        }
                        f12946c = sQLiteOpenHelper;
                    }
                } finally {
                }
            }
        }
        return f12946c;
    }

    public static int j(Context context) {
        String str;
        int i = 0;
        if (context == null) {
            return 0;
        }
        String[] strArr = {"_rsv1"};
        if (PrefSync.k) {
            str = "1";
        } else {
            str = "0";
        }
        Cursor cursor = null;
        try {
            cursor = DbUtil.g(i(context).getWritableDatabase(), "DbBookQuick_table", strArr, "_secret=?", new String[]{str}, null);
            if (cursor != null && cursor.moveToFirst()) {
                int columnIndex = cursor.getColumnIndex("_rsv1");
                do {
                    if (TextUtils.isEmpty(cursor.getString(columnIndex))) {
                        i++;
                    }
                } while (cursor.moveToNext());
            }
        } catch (Exception unused) {
        }
        if (cursor != null) {
            cursor.close();
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0112  */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, com.mycompany.app.quick.QuickAdapter$QuickItem] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.mycompany.app.quick.QuickAdapter$QuickItem] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, com.mycompany.app.quick.QuickAdapter$QuickItem] */
    /* JADX WARN: Type inference failed for: r15v4, types: [java.lang.Object, com.mycompany.app.quick.QuickAdapter$QuickItem] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList k(android.content.Context r17, boolean r18, boolean r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookQuick.k(android.content.Context, boolean, boolean, boolean):java.util.ArrayList");
    }

    public static int l(Context context, String str) {
        String str2;
        int i = -1;
        if (context != null && !TextUtils.isEmpty(str)) {
            String[] strArr = {"_order"};
            if (PrefSync.k) {
                str2 = "1";
            } else {
                str2 = "0";
            }
            String[] strArr2 = {str2, str};
            Cursor cursor = null;
            try {
                cursor = DbUtil.g(i(context).getWritableDatabase(), "DbBookQuick_table", strArr, "_secret=? AND _path=?", strArr2, null);
                if (cursor != null && cursor.moveToFirst()) {
                    i = cursor.getInt(cursor.getColumnIndex("_order"));
                }
            } catch (Exception unused) {
            }
            if (cursor != null) {
                cursor.close();
            }
        }
        return i;
    }

    public static int m() {
        int[] iArr = MainConst.b0;
        int length = iArr.length;
        int i = f % length;
        if (i < 0) {
            i = 0;
        }
        int i2 = iArr[i];
        f = (i + 3) % length;
        return i2;
    }

    /* JADX WARN: Type inference failed for: r6v1, types: [com.mycompany.app.quick.QuickAdapter$QuickSubItem, java.lang.Object] */
    public static ArrayList n(Context context, String str) {
        String str2;
        Cursor cursor = null;
        if (context == null || TextUtils.isEmpty(str)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (PrefSync.k) {
            str2 = "1";
        } else {
            str2 = "0";
        }
        try {
            cursor = DbUtil.g(i(context).getWritableDatabase(), "DbBookQuick_table", null, "_secret=? AND _rsv1=?", new String[]{str2, str}, "_order ASC");
            if (cursor != null && cursor.moveToFirst()) {
                int columnIndex = cursor.getColumnIndex("_id");
                int columnIndex2 = cursor.getColumnIndex("_path");
                int columnIndex3 = cursor.getColumnIndex("_title");
                int columnIndex4 = cursor.getColumnIndex("_rsv4");
                Pattern compile = Pattern.compile("\\p{Punct}");
                int i = 0;
                do {
                    ?? obj = new Object();
                    obj.f17364a = cursor.getLong(columnIndex);
                    obj.b = cursor.getString(columnIndex2);
                    obj.f17365c = MainUtil.y2(cursor.getString(columnIndex3), compile);
                    obj.d = cursor.getInt(columnIndex4);
                    arrayList.add(obj);
                    i++;
                    if (i >= 4) {
                        break;
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

    public static boolean o(Context context, String str) {
        String str2;
        boolean z = false;
        if (context != null && !TextUtils.isEmpty(str)) {
            if (PrefSync.k) {
                str2 = "1";
            } else {
                str2 = "0";
            }
            String[] strArr = {str2, str};
            Cursor cursor = null;
            try {
                cursor = DbUtil.g(i(context).getWritableDatabase(), "DbBookQuick_table", null, "_secret=? AND _path=?", strArr, null);
                if (cursor != null) {
                    if (cursor.moveToFirst()) {
                        z = true;
                    }
                }
            } catch (Exception unused) {
            }
            if (cursor != null) {
                cursor.close();
            }
        }
        return z;
    }

    public static void u(Context context, String str, QuickAdapter.QuickItem quickItem, String str2, int i) {
        if (context != null && !TextUtils.isEmpty(str)) {
            String l = Long.toString(System.currentTimeMillis());
            if (str2 == null) {
                str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            if (i == 0) {
                i = m();
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("_rsv5", (Integer) 1);
            contentValues.put("_path", l);
            contentValues.put("_title", str2);
            contentValues.put("_order", Integer.valueOf(quickItem.i));
            contentValues.put("_secret", Integer.valueOf(PrefSync.k ? 1 : 0));
            contentValues.put("_rsv4", Integer.valueOf(i));
            long e = DbUtil.e(i(context).getWritableDatabase(), "DbBookQuick_table", contentValues);
            if (e != 0) {
                A(0, context, l, quickItem.d);
                A(1, context, l, str);
                quickItem.b = e;
                quickItem.f17363c = true;
                quickItem.d = l;
                quickItem.f = str2;
                quickItem.g = MainUtil.y2(str2, null);
                quickItem.h = i;
            }
        }
    }

    public static boolean v(Context context, String str, boolean z) {
        String str2;
        boolean z2 = false;
        if (context != null && !TextUtils.isEmpty(str)) {
            String str3 = "0";
            if (!PrefSync.k) {
                str2 = "0";
            } else {
                str2 = "1";
            }
            if (DbUtil.a(i(context).getWritableDatabase(), "DbBookQuick_table", "_secret=? AND _path=?", new String[]{str2, str}) > 0) {
                z2 = true;
            }
            if (z && z2) {
                if (PrefSync.k) {
                    str3 = "1";
                }
                DbUtil.a(i(context).getWritableDatabase(), "DbBookQuick_table", "_secret=? AND _rsv1=?", new String[]{str3, str});
            }
        }
        return z2;
    }

    public static void z(Context context, int i, String str, String str2, String str3, Bitmap bitmap, int i2, int i3) {
        if (context != null && !TextUtils.isEmpty(str2)) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("_rsv5", Integer.valueOf(i));
            contentValues.put("_rsv1", str);
            contentValues.put("_path", str2);
            contentValues.put("_title", str3);
            contentValues.put("_order", Integer.valueOf(i3));
            contentValues.put("_secret", Integer.valueOf(PrefSync.k ? 1 : 0));
            if (MainUtil.f6(bitmap)) {
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                    contentValues.put("_icon", byteArrayOutputStream.toByteArray());
                    byteArrayOutputStream.close();
                } catch (Exception unused) {
                }
            } else {
                if (i2 == 0) {
                    i2 = m();
                }
                contentValues.put("_rsv4", Integer.valueOf(i2));
            }
            DbUtil.e(i(context).getWritableDatabase(), "DbBookQuick_table", contentValues);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbBookQuick_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _path TEXT, _title TEXT, _icon BLOB, _order INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookQuick_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookQuick_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _path TEXT, _title TEXT, _icon BLOB, _order INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
