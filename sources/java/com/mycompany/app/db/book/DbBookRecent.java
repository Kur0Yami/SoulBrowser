package com.mycompany.app.db.book;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.mycompany.app.data.book.DataBookRecent;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.pref.PrefZtwo;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class DbBookRecent extends SQLiteOpenHelper {

    /* renamed from: c, reason: collision with root package name */
    public static DbBookRecent f12947c;

    /* JADX WARN: Removed duplicated region for block: B:21:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005a A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r14, boolean r15) {
        /*
            if (r14 != 0) goto L3
            goto L5a
        L3:
            int r0 = com.mycompany.app.pref.PrefZtwo.Z
            r1 = -1
            if (r0 != r1) goto L9
            goto L5a
        L9:
            if (r0 != 0) goto Lf
            j(r14, r15)
            return
        Lf:
            java.lang.String r1 = "_time"
            java.lang.String[] r4 = new java.lang.String[]{r1}
            java.lang.String r8 = "0"
            java.lang.String r9 = "1"
            if (r15 == 0) goto L1d
            r2 = r9
            goto L1e
        L1d:
            r2 = r8
        L1e:
            java.lang.String[] r6 = new java.lang.String[]{r2}
            java.lang.String r7 = "_time DESC"
            r10 = 1
            r11 = 0
            r13 = 0
            com.mycompany.app.db.book.DbBookRecent r2 = d(r14)     // Catch: java.lang.Exception -> L50
            android.database.sqlite.SQLiteDatabase r2 = r2.getWritableDatabase()     // Catch: java.lang.Exception -> L50
            java.lang.String r3 = "DbBookRecent_table"
            java.lang.String r5 = "_secret=?"
            android.database.Cursor r13 = com.mycompany.app.db.DbUtil.g(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> L50
            if (r13 == 0) goto L50
            int r2 = r13.getCount()     // Catch: java.lang.Exception -> L50
            if (r2 <= r0) goto L50
            int r0 = r0 - r10
            boolean r0 = r13.moveToPosition(r0)     // Catch: java.lang.Exception -> L50
            if (r0 == 0) goto L50
            int r0 = r13.getColumnIndex(r1)     // Catch: java.lang.Exception -> L50
            long r0 = r13.getLong(r0)     // Catch: java.lang.Exception -> L50
            goto L51
        L50:
            r0 = r11
        L51:
            if (r13 == 0) goto L56
            r13.close()
        L56:
            int r2 = (r0 > r11 ? 1 : (r0 == r11 ? 0 : -1))
            if (r2 > 0) goto L5b
        L5a:
            return
        L5b:
            if (r15 == 0) goto L5e
            r8 = r9
        L5e:
            java.lang.String r15 = java.lang.Long.toString(r0)
            java.lang.String[] r15 = new java.lang.String[]{r8, r15}
            com.mycompany.app.db.book.DbBookRecent r0 = d(r14)
            android.database.sqlite.SQLiteDatabase r0 = r0.getWritableDatabase()
            java.lang.String r1 = "DbBookRecent_table"
            java.lang.String r2 = "_secret=? AND _time<?"
            com.mycompany.app.db.DbUtil.a(r0, r1, r2, r15)
            com.mycompany.app.data.book.DataBookRecent r14 = com.mycompany.app.data.book.DataBookRecent.a(r14)
            r14.b = r10
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookRecent.a(android.content.Context, boolean):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0089, code lost:
    
        r13.close();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0093 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.io.BufferedWriter] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File b(android.content.Context r13, java.lang.String r14) {
        /*
            java.lang.String r0 = "_time"
            java.lang.String r1 = "_title"
            java.lang.String r2 = "_secret"
            r3 = 0
            if (r13 == 0) goto Lad
            boolean r4 = android.text.TextUtils.isEmpty(r14)
            if (r4 == 0) goto L11
            goto Lad
        L11:
            r4 = 0
            com.mycompany.app.db.book.DbBookRecent r13 = d(r13)     // Catch: java.lang.Exception -> L84
            android.database.sqlite.SQLiteDatabase r5 = r13.getWritableDatabase()     // Catch: java.lang.Exception -> L84
            java.lang.String r6 = "DbBookRecent_table"
            r9 = 0
            r10 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r13 = com.mycompany.app.db.DbUtil.g(r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Exception -> L84
            if (r13 == 0) goto L81
            boolean r5 = r13.moveToFirst()     // Catch: java.lang.Exception -> L81
            if (r5 == 0) goto L81
            int r5 = r13.getColumnIndex(r2)     // Catch: java.lang.Exception -> L81
            int r6 = r13.getColumnIndex(r1)     // Catch: java.lang.Exception -> L81
            int r7 = r13.getColumnIndex(r0)     // Catch: java.lang.Exception -> L81
            r8 = r3
            r9 = r8
        L3a:
            if (r8 != 0) goto L50
            java.io.OutputStream r9 = com.mycompany.app.main.MainUtil.c1(r14, r4)     // Catch: java.lang.Exception -> L4d
            java.io.BufferedWriter r10 = new java.io.BufferedWriter     // Catch: java.lang.Exception -> L4d
            java.io.OutputStreamWriter r11 = new java.io.OutputStreamWriter     // Catch: java.lang.Exception -> L4d
            java.nio.charset.Charset r12 = java.nio.charset.StandardCharsets.UTF_8     // Catch: java.lang.Exception -> L4d
            r11.<init>(r9, r12)     // Catch: java.lang.Exception -> L4d
            r10.<init>(r11)     // Catch: java.lang.Exception -> L4d
            r8 = r10
        L4d:
            if (r8 != 0) goto L50
            goto L87
        L50:
            boolean r10 = com.mycompany.app.main.MainUtil.a0(r8)     // Catch: java.lang.Exception -> L87
            if (r10 != 0) goto L57
            goto L87
        L57:
            int r10 = r13.getInt(r5)     // Catch: java.lang.Exception -> L87
            boolean r10 = com.mycompany.app.main.MainUtil.Z(r8, r2, r10)     // Catch: java.lang.Exception -> L87
            if (r10 != 0) goto L62
            goto L87
        L62:
            java.lang.String r10 = r13.getString(r6)     // Catch: java.lang.Exception -> L87
            boolean r10 = com.mycompany.app.main.MainUtil.c0(r8, r1, r10)     // Catch: java.lang.Exception -> L87
            if (r10 != 0) goto L6d
            goto L87
        L6d:
            long r10 = r13.getLong(r7)     // Catch: java.lang.Exception -> L87
            boolean r10 = com.mycompany.app.main.MainUtil.b0(r8, r0, r10)     // Catch: java.lang.Exception -> L87
            if (r10 != 0) goto L78
            goto L87
        L78:
            r10 = 1
            boolean r11 = r13.moveToNext()     // Catch: java.lang.Exception -> L7f
            if (r11 != 0) goto L3a
        L7f:
            r4 = r10
            goto L87
        L81:
            r8 = r3
        L82:
            r9 = r8
            goto L87
        L84:
            r13 = r3
            r8 = r13
            goto L82
        L87:
            if (r13 == 0) goto L8c
            r13.close()
        L8c:
            if (r8 == 0) goto L91
            r8.close()     // Catch: java.lang.Exception -> L91
        L91:
            if (r9 == 0) goto L96
            r9.close()     // Catch: java.lang.Exception -> L96
        L96:
            if (r4 != 0) goto La7
            java.io.File r13 = new java.io.File
            r13.<init>(r14)
            boolean r14 = r13.exists()
            if (r14 == 0) goto La6
            r13.delete()
        La6:
            return r3
        La7:
            java.io.File r13 = new java.io.File
            r13.<init>(r14)
            return r13
        Lad:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.book.DbBookRecent.b(android.content.Context, java.lang.String):java.io.File");
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.db.book.DbBookRecent, android.database.sqlite.SQLiteOpenHelper] */
    public static DbBookRecent d(Context context) {
        if (f12947c == null) {
            synchronized (DbBookRecent.class) {
                try {
                    if (f12947c == null) {
                        f12947c = new SQLiteOpenHelper(MainUtil.R(context), "DbBookRecent.db", (SQLiteDatabase.CursorFactory) null, 1);
                    }
                } finally {
                }
            }
        }
        return f12947c;
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [com.mycompany.app.web.WebSearchAdapter$SearchItem, java.lang.Object] */
    public static ArrayList e(Context context) {
        String str;
        Cursor cursor = null;
        if (context == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        String[] strArr = {"_id", "_title"};
        if (PrefSync.k) {
            str = "1";
        } else {
            str = "0";
        }
        try {
            cursor = DbUtil.g(d(context).getWritableDatabase(), "DbBookRecent_table", strArr, "_secret=?", new String[]{str}, "_time DESC");
            if (cursor != null && cursor.moveToFirst()) {
                int columnIndex = cursor.getColumnIndex("_id");
                int columnIndex2 = cursor.getColumnIndex("_title");
                int i = PrefZtwo.Z;
                if (i == -1) {
                    i = Integer.MAX_VALUE;
                }
                int i2 = 0;
                do {
                    ?? obj = new Object();
                    obj.f19420a = 38;
                    obj.d = cursor.getLong(columnIndex);
                    obj.f = cursor.getString(columnIndex2);
                    arrayList.add(obj);
                    i2++;
                    if (i2 >= i) {
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

    public static void f(Context context, long j) {
        if (context != null && j > 0) {
            DbUtil.b(d(context).getWritableDatabase(), "DbBookRecent_table", j);
            DataBookRecent.a(context).b = true;
        }
    }

    public static void i(Context context) {
        if (context == null) {
            return;
        }
        DbUtil.a(d(context).getWritableDatabase(), "DbBookRecent_table", null, null);
        DataBookRecent.a(context).b = true;
    }

    public static void j(Context context, boolean z) {
        String str;
        if (context == null) {
            return;
        }
        if (z) {
            str = "1";
        } else {
            str = "0";
        }
        DbUtil.a(d(context).getWritableDatabase(), "DbBookRecent_table", "_secret=?", new String[]{str});
        DataBookRecent.a(context).b = true;
    }

    public static void k(Context context, final String str) {
        final Context R = MainUtil.R(context);
        if (R == null) {
            return;
        }
        MainApp.J(R, new Runnable() { // from class: com.mycompany.app.db.book.DbBookRecent.1
            @Override // java.lang.Runnable
            public final void run() {
                String str2;
                if (DbBookRecent.l()) {
                    String str3 = str;
                    if (!TextUtils.isEmpty(str3)) {
                        if (PrefSync.k) {
                            str2 = "1";
                        } else {
                            str2 = "0";
                        }
                        String[] strArr = {str2, str3};
                        Context context2 = R;
                        SQLiteDatabase writableDatabase = DbBookRecent.d(context2).getWritableDatabase();
                        int d = DbUtil.d(writableDatabase, "DbBookRecent_table", null, "_secret=? AND _title=?", strArr);
                        if (d != 0) {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("_time", Long.valueOf(System.currentTimeMillis()));
                            if (d == 1) {
                                DbUtil.h(writableDatabase, "DbBookRecent_table", contentValues, "_secret=? AND _title=?", strArr);
                                DataBookRecent a2 = DataBookRecent.a(context2);
                                a2.f12913c = true;
                                a2.b = true;
                                return;
                            }
                            contentValues.put("_secret", Integer.valueOf(PrefSync.k ? 1 : 0));
                            contentValues.put("_title", str3);
                            DbUtil.e(writableDatabase, "DbBookRecent_table", contentValues);
                            DataBookRecent a3 = DataBookRecent.a(context2);
                            a3.f12913c = true;
                            a3.b = true;
                        }
                    }
                }
            }
        });
    }

    public static boolean l() {
        if (PrefZtwo.Z == 0) {
            return false;
        }
        if (PrefSync.k && !PrefZtwo.a0) {
            return false;
        }
        return true;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE DbBookRecent_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _title TEXT, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS DbBookRecent_table");
        sQLiteDatabase.execSQL("CREATE TABLE DbBookRecent_table (_id INTEGER PRIMARY KEY, _secret INTEGER, _title TEXT, _time INTEGER, _rsv1 TEXT, _rsv2 TEXT, _rsv3 TEXT, _rsv4 INTEGER, _rsv5 INTEGER, _rsv6 INTEGER);");
    }
}
