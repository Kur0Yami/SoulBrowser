package com.mycompany.app.db.book;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Bundle;
import android.util.Base64;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSync;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DbTabState extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbTabState f12969c;

    /* loaded from: classes3.dex */
    public static class StateItem {

        /* renamed from: a, reason: collision with root package name */
        public Bundle f12970a;
        public ArrayList b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00cf A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ba A[LOOP:0: B:37:0x0049->B:56:0x00ba, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00b8 A[EDGE_INSN: B:57:0x00b8->B:58:0x00b8 BREAK  A[LOOP:0: B:37:0x0049->B:56:0x00ba], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x006c A[EDGE_INSN: B:84:0x006c->B:11:0x006c BREAK  A[LOOP:0: B:37:0x0049->B:56:0x00ba], SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v11, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File a(android.content.Context r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbTabState.a(android.content.Context, java.lang.String):java.io.File");
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.sqlite.SQLiteOpenHelper, com.mycompany.app.db.book.DbTabState] */
    public static DbTabState b(Context context) {
        if (f12969c == null) {
            synchronized (DbTabState.class) {
                try {
                    if (f12969c == null) {
                        f12969c = new SQLiteOpenHelper(MainUtil.R(context), "DbTabState.db", (SQLiteDatabase.CursorFactory) null, 1);
                    }
                } finally {
                }
            }
        }
        return f12969c;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a1  */
    /* JADX WARN: Type inference failed for: r11v3, types: [com.mycompany.app.db.book.DbTabState$StateItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v2, types: [com.mycompany.app.web.WebNestFrame$PageItem, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.mycompany.app.db.book.DbTabState.StateItem d(android.content.Context r9, long r10) {
        /*
            r0 = 0
            if (r9 == 0) goto Lc5
            r1 = 0
            int r1 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r1 > 0) goto Lb
            goto Lc5
        Lb:
            java.lang.String r1 = "_state"
            java.lang.String r2 = "_pages"
            java.lang.String[] r5 = new java.lang.String[]{r1, r2}
            java.lang.String r6 = "_uid=?"
            java.lang.String r10 = java.lang.Long.toString(r10)
            java.lang.String[] r7 = new java.lang.String[]{r10}
            r10 = 0
            com.mycompany.app.db.book.DbTabState r11 = b(r9)     // Catch: java.lang.Exception -> L53
            android.database.sqlite.SQLiteDatabase r3 = r11.getWritableDatabase()     // Catch: java.lang.Exception -> L53
            java.lang.String r4 = "DbTabState_table"
            r8 = 0
            android.database.Cursor r11 = com.mycompany.app.db.DbUtil.g(r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> L53
            if (r11 == 0) goto L4f
            boolean r3 = r11.moveToFirst()     // Catch: java.lang.Exception -> L4d
            if (r3 == 0) goto L4f
            int r1 = r11.getColumnIndex(r1)     // Catch: java.lang.Exception -> L4d
            java.lang.String r1 = r11.getString(r1)     // Catch: java.lang.Exception -> L4d
            boolean r3 = com.mycompany.app.pref.PrefZtwo.E     // Catch: java.lang.Exception -> L55
            if (r3 == 0) goto L4a
            int r2 = r11.getColumnIndex(r2)     // Catch: java.lang.Exception -> L55
            java.lang.String r2 = r11.getString(r2)     // Catch: java.lang.Exception -> L55
            goto L4b
        L4a:
            r2 = r0
        L4b:
            r3 = 1
            goto L57
        L4d:
            r1 = r0
            goto L55
        L4f:
            r3 = r10
            r1 = r0
            r2 = r1
            goto L57
        L53:
            r11 = r0
            r1 = r11
        L55:
            r3 = r10
            r2 = r0
        L57:
            if (r11 == 0) goto L5c
            r11.close()
        L5c:
            if (r3 != 0) goto L60
            goto Lc5
        L60:
            com.mycompany.app.db.book.DbTabState$StateItem r11 = new com.mycompany.app.db.book.DbTabState$StateItem
            r11.<init>()
            boolean r3 = android.text.TextUtils.isEmpty(r1)
            if (r3 == 0) goto L6d
        L6b:
            r3 = r0
            goto L82
        L6d:
            r3 = 2
            byte[] r1 = android.util.Base64.decode(r1, r3)     // Catch: java.lang.Throwable -> L6b
            if (r1 == 0) goto L6b
            int r3 = r1.length     // Catch: java.lang.Throwable -> L6b
            if (r3 != 0) goto L78
            goto L6b
        L78:
            android.os.Bundle r3 = new android.os.Bundle     // Catch: java.lang.Throwable -> L6b
            r3.<init>()     // Catch: java.lang.Throwable -> L6b
            java.lang.String r4 = "WEBVIEW_CHROMIUM_STATE"
            r3.putByteArray(r4, r1)     // Catch: java.lang.Throwable -> L6b
        L82:
            r11.f12970a = r3
            int r1 = com.mycompany.app.web.WebNestFrame.v0
            boolean r1 = com.mycompany.app.pref.PrefZtwo.E
            if (r1 != 0) goto L8b
            goto Lc2
        L8b:
            boolean r1 = android.text.TextUtils.isEmpty(r2)
            if (r1 == 0) goto L92
            goto Lc2
        L92:
            java.lang.String r1 = "!@!"
            java.lang.String[] r1 = r2.split(r1)
            if (r1 == 0) goto Lc2
            int r2 = r1.length
            if (r2 != 0) goto L9e
            goto Lc2
        L9e:
            int r2 = r1.length
        L9f:
            if (r10 >= r2) goto Lc2
            r3 = r1[r10]
            java.lang.String r3 = com.mycompany.app.main.MainUtil.Y2(r9, r3)
            boolean r4 = android.text.TextUtils.isEmpty(r3)
            if (r4 == 0) goto Lae
            goto Lbf
        Lae:
            com.mycompany.app.web.WebNestFrame$PageItem r4 = new com.mycompany.app.web.WebNestFrame$PageItem
            r4.<init>()
            r4.e = r3
            if (r0 != 0) goto Lbc
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
        Lbc:
            r0.add(r4)
        Lbf:
            int r10 = r10 + 1
            goto L9f
        Lc2:
            r11.b = r0
            return r11
        Lc5:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbTabState.d(android.content.Context, long):com.mycompany.app.db.book.DbTabState$StateItem");
    }

    public static void e(Context context, String str, String[] strArr) {
        if (context != null) {
            DbUtil.a(b(context).getWritableDatabase(), "DbTabState_table", str, strArr);
        }
    }

    public static void f(Context context, long j, String str, Bundle bundle, String str2) {
        if (context != null && j > 0) {
            String[] strArr = {Long.toString(j)};
            SQLiteDatabase writableDatabase = b(context).getWritableDatabase();
            String str3 = null;
            int d = DbUtil.d(writableDatabase, "DbTabState_table", null, "_uid=?", strArr);
            if (d != 0) {
                if (bundle != null) {
                    try {
                        byte[] byteArray = bundle.getByteArray("WEBVIEW_CHROMIUM_STATE");
                        if (byteArray != null && byteArray.length != 0) {
                            str3 = Base64.encodeToString(byteArray, 2);
                        }
                    } catch (Exception | OutOfMemoryError unused) {
                    }
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("_secret", Integer.valueOf(PrefSync.k ? 1 : 0));
                contentValues.put("_uid", Long.valueOf(j));
                contentValues.put("_path", str);
                contentValues.put("_state", str3);
                contentValues.put("_pages", str2);
                if (d == 1) {
                    DbUtil.h(writableDatabase, "DbTabState_table", contentValues, "_uid=?", strArr);
                } else {
                    DbUtil.e(writableDatabase, "DbTabState_table", contentValues);
                }
            }
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbTabState_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _uid INTEGER, _path TEXT, _state TEXT, _pages TEXT, _ads TEXT, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbTabState_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbTabState_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _uid INTEGER, _path TEXT, _state TEXT, _pages TEXT, _ads TEXT, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
