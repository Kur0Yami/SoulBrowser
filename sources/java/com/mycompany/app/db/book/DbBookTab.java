package com.mycompany.app.db.book;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.web.WebTabAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class DbBookTab extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbBookTab f12956c;
    public static boolean f;

    public static void A(Context context, final ArrayList arrayList) {
        final Context R = MainUtil.R(context);
        if (R == null) {
            return;
        }
        f = true;
        MainApp.J(R, new Runnable() { // from class: com.mycompany.app.db.book.DbBookTab.1
            @Override // java.lang.Runnable
            public final void run() {
                DbBookTab dbBookTab = DbBookTab.f12956c;
                ArrayList arrayList2 = arrayList;
                if (!arrayList2.isEmpty()) {
                    int size = arrayList2.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList2.get(i);
                        i++;
                        WebTabAdapter.WebTabItem webTabItem = (WebTabAdapter.WebTabItem) obj;
                        if (webTabItem != null) {
                            long j = webTabItem.f19520c;
                            if (j > 0 && webTabItem.d != 0) {
                                String[] strArr = {Long.toString(j)};
                                ContentValues contentValues = new ContentValues();
                                contentValues.put("_pid", Long.valueOf(webTabItem.d));
                                contentValues.put("_gid", Long.valueOf(webTabItem.e));
                                contentValues.put("_gname", webTabItem.f);
                                contentValues.put("_color", Integer.valueOf(webTabItem.g));
                                DbUtil.h(DbBookTab.b(R).getWritableDatabase(), "DbBookTab3_table", contentValues, "_uid=?", strArr);
                            }
                        }
                    }
                }
                DbBookTab.f = false;
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0165 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0160 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r16v15 */
    /* JADX WARN: Type inference failed for: r16v17 */
    /* JADX WARN: Type inference failed for: r16v18 */
    /* JADX WARN: Type inference failed for: r16v5, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r23v12 */
    /* JADX WARN: Type inference failed for: r23v13 */
    /* JADX WARN: Type inference failed for: r23v14 */
    /* JADX WARN: Type inference failed for: r23v3, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.io.OutputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File a(android.content.Context r26, java.lang.String r27) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookTab.a(android.content.Context, java.lang.String):java.io.File");
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.sqlite.SQLiteOpenHelper, com.mycompany.app.db.book.DbBookTab] */
    public static DbBookTab b(Context context) {
        if (f12956c == null) {
            synchronized (DbBookTab.class) {
                try {
                    if (f12956c == null) {
                        f12956c = new SQLiteOpenHelper(MainUtil.R(context), "DbBookTab3.db", (SQLiteDatabase.CursorFactory) null, 1);
                    }
                } finally {
                }
            }
        }
        return f12956c;
    }

    /* JADX WARN: Removed duplicated region for block: B:109:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x014b  */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.lang.Object, com.mycompany.app.web.WebTabAdapter$WebTabItem] */
    /* JADX WARN: Type inference failed for: r15v0, types: [java.lang.Object, com.mycompany.app.web.WebTabAdapter$WebTabItem] */
    /* JADX WARN: Type inference failed for: r6v8, types: [java.lang.Object, com.mycompany.app.web.WebTabAdapter$WebTabItem] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList d(android.content.Context r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 507
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookTab.d(android.content.Context, boolean):java.util.ArrayList");
    }

    public static WebTabAdapter.WebTabItem e(ArrayList arrayList) {
        WebTabAdapter.WebTabItem webTabItem;
        if (arrayList.isEmpty()) {
            return null;
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            WebTabAdapter.WebTabItem webTabItem2 = (WebTabAdapter.WebTabItem) obj;
            if (webTabItem2 != null) {
                long j = webTabItem2.d;
                if (!arrayList.isEmpty()) {
                    int size2 = arrayList.size();
                    int i2 = 0;
                    while (i2 < size2) {
                        Object obj2 = arrayList.get(i2);
                        i2++;
                        webTabItem = (WebTabAdapter.WebTabItem) obj2;
                        if (webTabItem != null && webTabItem.f19520c == j) {
                            break;
                        }
                    }
                }
                webTabItem = null;
                if (webTabItem == null) {
                    return webTabItem2;
                }
            }
        }
        return (WebTabAdapter.WebTabItem) arrayList.get(0);
    }

    public static long f(List list) {
        long currentTimeMillis = System.currentTimeMillis();
        if (list != null && !list.isEmpty()) {
            Iterator it = list.iterator();
            boolean z = false;
            long j = 0;
            while (it.hasNext()) {
                WebTabAdapter.WebTabItem webTabItem = (WebTabAdapter.WebTabItem) it.next();
                if (webTabItem != null) {
                    long j2 = webTabItem.f19520c;
                    if (j2 == currentTimeMillis) {
                        z = true;
                    }
                    j = Math.max(j, j2);
                }
            }
            if (z) {
                return j + 1;
            }
        }
        return currentTimeMillis;
    }

    public static WebTabAdapter.WebTabItem i(ArrayList arrayList, long j) {
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                WebTabAdapter.WebTabItem webTabItem = (WebTabAdapter.WebTabItem) obj;
                if (webTabItem != null && webTabItem.d == j) {
                    return webTabItem;
                }
            }
            return null;
        }
        return null;
    }

    public static long j(int i, List list) {
        WebTabAdapter.WebTabItem webTabItem;
        int i2 = i - 1;
        if (list != null && i2 >= 0 && i2 < list.size()) {
            webTabItem = (WebTabAdapter.WebTabItem) list.get(i2);
        } else {
            webTabItem = null;
        }
        if (webTabItem == null) {
            return -1L;
        }
        return webTabItem.f19520c;
    }

    public static void k(Context context, ArrayList arrayList) {
        if (context != null && arrayList != null && !arrayList.isEmpty()) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                WebTabAdapter.WebTabItem webTabItem = (WebTabAdapter.WebTabItem) obj;
                if (webTabItem != null) {
                    long j = webTabItem.f19520c;
                    if (j > 0) {
                        String[] strArr = {Long.toString(j)};
                        DbUtil.a(b(context).getWritableDatabase(), "DbBookTab3_table", "_uid=?", strArr);
                        DbTabState.e(context, "_uid=?", strArr);
                        DbTabThumb.e(context, "_uid=?", strArr);
                    }
                }
            }
        }
    }

    public static void l(Context context, long j) {
        if (context != null && j > 0) {
            String[] strArr = {Long.toString(j)};
            DbUtil.a(b(context).getWritableDatabase(), "DbBookTab3_table", "_uid=?", strArr);
            DbTabState.e(context, "_uid=?", strArr);
            DbTabThumb.e(context, "_uid=?", strArr);
        }
    }

    public static void m(Context context) {
        if (context == null) {
            return;
        }
        DbUtil.a(b(context).getWritableDatabase(), "DbBookTab3_table", null, null);
        DbUtil.a(DbTabState.b(context).getWritableDatabase(), "DbTabState_table", null, null);
        DbUtil.a(DbTabThumb.b(context).getWritableDatabase(), "DbTabThumb_table", null, null);
    }

    public static void n(Context context, boolean z) {
        String str;
        if (context == null) {
            return;
        }
        if (z) {
            str = "1";
        } else {
            str = "0";
        }
        String[] strArr = {str};
        DbUtil.a(b(context).getWritableDatabase(), "DbBookTab3_table", "_secret=?", strArr);
        DbTabState.e(context, "_secret=?", strArr);
        DbTabThumb.e(context, "_secret=?", strArr);
    }

    public static void o(Context context, WebTabAdapter.WebTabItem webTabItem, boolean z) {
        if (context != null && webTabItem != null) {
            String Z2 = MainUtil.Z2(context, webTabItem.j);
            ContentValues contentValues = new ContentValues();
            contentValues.put("_secret", Integer.valueOf(z ? 1 : 0));
            contentValues.put("_uid", Long.valueOf(webTabItem.f19520c));
            contentValues.put("_pid", Long.valueOf(webTabItem.d));
            contentValues.put("_gid", Long.valueOf(webTabItem.e));
            contentValues.put("_gname", webTabItem.f);
            contentValues.put("_color", Integer.valueOf(webTabItem.g));
            contentValues.put("_path", Z2);
            contentValues.put("_title", webTabItem.k);
            contentValues.put("_rsv1", webTabItem.r);
            contentValues.put("_desk", Integer.valueOf(webTabItem.l ? 1 : 0));
            DbUtil.e(b(context).getWritableDatabase(), "DbBookTab3_table", contentValues);
        }
    }

    /** Persists per-tab homepage URL into unused column _rsv1. */
    public static void B(Context context, long j, String str) {
        if (context != null && j > 0) {
            String[] strArr = {Long.toString(j)};
            ContentValues contentValues = new ContentValues();
            contentValues.put("_rsv1", str);
            DbUtil.h(b(context).getWritableDatabase(), "DbBookTab3_table", contentValues, "_uid=?", strArr);
        }
    }

    public static void u(Context context, ArrayList arrayList) {
        if (context != null && arrayList != null && !arrayList.isEmpty()) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                WebTabAdapter.WebTabItem webTabItem = (WebTabAdapter.WebTabItem) obj;
                if (webTabItem != null) {
                    long j = webTabItem.f19520c;
                    if (j > 0 && webTabItem.d != 0) {
                        String[] strArr = {Long.toString(j)};
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("_pid", Long.valueOf(webTabItem.d));
                        DbUtil.h(b(context).getWritableDatabase(), "DbBookTab3_table", contentValues, "_uid=?", strArr);
                    }
                }
            }
        }
    }

    public static void v(Context context, long j, long j2) {
        if (context != null && j > 0 && j2 > 0) {
            String[] strArr = {Long.toString(j)};
            ContentValues contentValues = new ContentValues();
            contentValues.put("_gid", Long.valueOf(j2));
            DbUtil.h(b(context).getWritableDatabase(), "DbBookTab3_table", contentValues, "_uid=?", strArr);
        }
    }

    public static void z(Context context, long j, long j2) {
        if (context != null && j > 0 && j2 != 0) {
            String[] strArr = {Long.toString(j)};
            ContentValues contentValues = new ContentValues();
            contentValues.put("_pid", Long.valueOf(j2));
            DbUtil.h(b(context).getWritableDatabase(), "DbBookTab3_table", contentValues, "_uid=?", strArr);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbBookTab3_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _uid INTEGER, _pid INTEGER, _gid INTEGER, _gname TEXT, _color INTEGER, _path TEXT, _title TEXT, _state TEXT, _desk INTEGER, _ikey TEXT, _icon BLOB, _tkey TEXT, _thumb BLOB, _ads TEXT, _pages TEXT, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookTab3_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookTab3_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _uid INTEGER, _pid INTEGER, _gid INTEGER, _gname TEXT, _color INTEGER, _path TEXT, _title TEXT, _state TEXT, _desk INTEGER, _ikey TEXT, _icon BLOB, _tkey TEXT, _thumb BLOB, _ads TEXT, _pages TEXT, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
