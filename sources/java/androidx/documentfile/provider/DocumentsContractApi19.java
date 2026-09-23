package androidx.documentfile.provider;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.support.v4.media.a;
import android.util.Log;

/* loaded from: classes.dex */
class DocumentsContractApi19 {
    public static void a(Cursor cursor) {
        if (cursor != null) {
            try {
                a.x(cursor);
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }

    public static long b(Context context, Uri uri, String str) {
        ContentResolver contentResolver = context.getContentResolver();
        Cursor cursor = null;
        try {
            try {
                cursor = contentResolver.query(uri, new String[]{str}, null, null, null);
                if (cursor.moveToFirst() && !cursor.isNull(0)) {
                    long j = cursor.getLong(0);
                    a(cursor);
                    return j;
                }
                a(cursor);
                return 0L;
            } catch (Exception e) {
                Log.w("DocumentFile", "Failed query: " + e);
                a(cursor);
                return 0L;
            }
        } catch (Throwable th) {
            a(cursor);
            throw th;
        }
    }

    public static String c(Context context, Uri uri, String str) {
        Cursor cursor;
        Throwable th;
        Exception exc;
        try {
            cursor = context.getContentResolver().query(uri, new String[]{str}, null, null, null);
            try {
                try {
                    if (cursor.moveToFirst() && !cursor.isNull(0)) {
                        String string = cursor.getString(0);
                        a(cursor);
                        return string;
                    }
                    a(cursor);
                    return null;
                } catch (Exception e) {
                    exc = e;
                    Log.w("DocumentFile", "Failed query: " + exc);
                    a(cursor);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                a(cursor);
                throw th;
            }
        } catch (Exception e2) {
            exc = e2;
            cursor = null;
        } catch (Throwable th3) {
            cursor = null;
            th = th3;
            a(cursor);
            throw th;
        }
    }
}
