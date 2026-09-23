package com.mycompany.app.db;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

/* loaded from: classes3.dex */
public class DbUtil {
    public static int a(SQLiteDatabase sQLiteDatabase, String str, String str2, String[] strArr) {
        int i = 0;
        try {
            sQLiteDatabase.beginTransaction();
            i = sQLiteDatabase.delete(str, str2, strArr);
            sQLiteDatabase.setTransactionSuccessful();
        } catch (Exception unused) {
        }
        try {
            sQLiteDatabase.endTransaction();
        } catch (Exception unused2) {
        }
        return i;
    }

    public static void b(SQLiteDatabase sQLiteDatabase, String str, long j) {
        try {
            sQLiteDatabase.beginTransaction();
            sQLiteDatabase.delete(str, "_id=?", new String[]{Long.toString(j)});
            sQLiteDatabase.setTransactionSuccessful();
        } catch (Exception unused) {
        }
        try {
            sQLiteDatabase.endTransaction();
        } catch (Exception unused2) {
        }
    }

    public static int c(SQLiteDatabase sQLiteDatabase, String str, long j) {
        int i = 2;
        if (j <= 0) {
            return 2;
        }
        Cursor cursor = null;
        try {
            cursor = sQLiteDatabase.query(str, null, "_id=?", new String[]{Long.toString(j)}, null, null, null);
            if (cursor != null) {
                if (cursor.moveToFirst()) {
                    i = 1;
                }
            }
        } catch (Exception unused) {
            i = 0;
        }
        if (cursor != null) {
            try {
                cursor.close();
            } catch (Exception unused2) {
            }
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int d(android.database.sqlite.SQLiteDatabase r8, java.lang.String r9, java.lang.String[] r10, java.lang.String r11, java.lang.String[] r12) {
        /*
            r5 = 0
            r6 = 0
            r7 = 0
            r0 = r8
            r1 = r9
            r2 = r10
            r3 = r11
            r4 = r12
            android.database.Cursor r8 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> L18
            if (r8 == 0) goto L16
            boolean r9 = r8.moveToFirst()     // Catch: java.lang.Exception -> L19
            if (r9 == 0) goto L16
            r9 = 1
            goto L1a
        L16:
            r9 = 2
            goto L1a
        L18:
            r8 = 0
        L19:
            r9 = 0
        L1a:
            if (r8 == 0) goto L1f
            r8.close()     // Catch: java.lang.Exception -> L1f
        L1f:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.db.DbUtil.d(android.database.sqlite.SQLiteDatabase, java.lang.String, java.lang.String[], java.lang.String, java.lang.String[]):int");
    }

    public static long e(SQLiteDatabase sQLiteDatabase, String str, ContentValues contentValues) {
        long j = 0;
        try {
            sQLiteDatabase.beginTransaction();
            j = sQLiteDatabase.insert(str, null, contentValues);
            sQLiteDatabase.setTransactionSuccessful();
        } catch (Exception unused) {
        }
        try {
            sQLiteDatabase.endTransaction();
        } catch (Exception unused2) {
        }
        return j;
    }

    public static Cursor f(SQLiteDatabase sQLiteDatabase, String str, String[] strArr, long j) {
        try {
            return sQLiteDatabase.query(str, strArr, "_id=?", new String[]{Long.toString(j)}, null, null, null);
        } catch (Exception unused) {
            return null;
        }
    }

    public static Cursor g(SQLiteDatabase sQLiteDatabase, String str, String[] strArr, String str2, String[] strArr2, String str3) {
        try {
            return sQLiteDatabase.query(str, strArr, str2, strArr2, null, null, str3);
        } catch (Exception unused) {
            return null;
        }
    }

    public static int h(SQLiteDatabase sQLiteDatabase, String str, ContentValues contentValues, String str2, String[] strArr) {
        int i = 0;
        try {
            sQLiteDatabase.beginTransaction();
            i = sQLiteDatabase.update(str, contentValues, str2, strArr);
            sQLiteDatabase.setTransactionSuccessful();
        } catch (Exception unused) {
        }
        try {
            sQLiteDatabase.endTransaction();
        } catch (Exception unused2) {
        }
        return i;
    }

    public static void i(SQLiteDatabase sQLiteDatabase, String str, ContentValues contentValues, long j) {
        try {
            sQLiteDatabase.beginTransaction();
            sQLiteDatabase.update(str, contentValues, "_id=?", new String[]{Long.toString(j)});
            sQLiteDatabase.setTransactionSuccessful();
        } catch (Exception unused) {
        }
        try {
            sQLiteDatabase.endTransaction();
        } catch (Exception unused2) {
        }
    }
}
