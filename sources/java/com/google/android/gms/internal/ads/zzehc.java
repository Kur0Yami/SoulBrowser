package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

/* loaded from: classes.dex */
public final class zzehc {
    public static int a(SQLiteDatabase sQLiteDatabase, int i) {
        int i2 = 0;
        if (i == 2) {
            return 0;
        }
        Cursor c2 = c(sQLiteDatabase, i);
        if (c2.getCount() > 0) {
            c2.moveToNext();
            i2 = c2.getInt(c2.getColumnIndexOrThrow("value"));
        }
        c2.close();
        return i2;
    }

    public static void b(SQLiteDatabase sQLiteDatabase, long j, byte[] bArr) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("timestamp", Long.valueOf(j));
        contentValues.put("serialized_proto_data", bArr);
        if (sQLiteDatabase.update("offline_signal_contents", contentValues, "timestamp = ?", new String[]{String.valueOf(j)}) == 0) {
            sQLiteDatabase.insert("offline_signal_contents", null, contentValues);
        }
    }

    public static Cursor c(SQLiteDatabase sQLiteDatabase, int i) {
        String[] strArr = {"value"};
        String[] strArr2 = new String[1];
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    strArr2[0] = "completed_requests";
                } else {
                    strArr2[0] = "last_successful_request_time";
                }
            } else {
                strArr2[0] = "total_requests";
            }
        } else {
            strArr2[0] = "failed_requests";
        }
        return sQLiteDatabase.query("offline_signal_statistics", strArr, "statistic_name = ?", strArr2, null, null, null);
    }

    public static void d(SQLiteDatabase sQLiteDatabase, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("value", (Integer) 0);
        sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = ?", new String[]{str});
    }

    public static void e(SQLiteDatabase sQLiteDatabase, String str) {
        ContentValues f = androidx.work.impl.workers.a.f("statistic_name", str);
        f.put("value", (Integer) 0);
        sQLiteDatabase.insert("offline_signal_statistics", null, f);
    }
}
