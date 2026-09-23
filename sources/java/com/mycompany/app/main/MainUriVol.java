package com.mycompany.app.main;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import androidx.documentfile.provider.DocumentFile;
import com.mycompany.app.main.MainUri;

/* loaded from: classes3.dex */
public class MainUriVol {
    /* JADX WARN: Removed duplicated region for block: B:19:0x0073 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0074 A[Catch: Exception -> 0x008c, TryCatch #1 {Exception -> 0x008c, blocks: (B:33:0x006e, B:21:0x0074, B:23:0x0083), top: B:32:0x006e }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(android.content.Context r11, android.net.Uri r12, android.content.ContentValues r13, com.mycompany.app.main.MainUri.NumItem r14) {
        /*
            r0 = 0
            if (r11 == 0) goto La0
            if (r12 == 0) goto La0
            if (r14 != 0) goto L9
            goto La0
        L9:
            r1 = 1
            r2 = 20
            int r3 = r14.f     // Catch: java.lang.Exception -> L30
            if (r3 <= r2) goto L32
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L30
            r3.<init>()     // Catch: java.lang.Exception -> L30
            java.lang.String r4 = r14.f16983a     // Catch: java.lang.Exception -> L30
            r3.append(r4)     // Catch: java.lang.Exception -> L30
            java.lang.String r4 = "_"
            r3.append(r4)     // Catch: java.lang.Exception -> L30
            long r4 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> L30
            r3.append(r4)     // Catch: java.lang.Exception -> L30
            java.lang.String r4 = r14.b     // Catch: java.lang.Exception -> L30
            r3.append(r4)     // Catch: java.lang.Exception -> L30
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Exception -> L30
            goto L4a
        L30:
            r6 = r12
            goto L8c
        L32:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L30
            r3.<init>()     // Catch: java.lang.Exception -> L30
            java.lang.String r4 = r14.f16984c     // Catch: java.lang.Exception -> L30
            r3.append(r4)     // Catch: java.lang.Exception -> L30
            long r4 = r14.e     // Catch: java.lang.Exception -> L30
            r3.append(r4)     // Catch: java.lang.Exception -> L30
            java.lang.String r4 = r14.d     // Catch: java.lang.Exception -> L30
            r3.append(r4)     // Catch: java.lang.Exception -> L30
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Exception -> L30
        L4a:
            r4 = 0
            java.lang.String r8 = "_display_name=? AND mime_type=?"
            java.lang.String r5 = "vnd.android.document/directory"
            java.lang.String[] r9 = new java.lang.String[]{r3, r5}     // Catch: java.lang.Exception -> L6a
            android.content.ContentResolver r5 = r11.getContentResolver()     // Catch: java.lang.Exception -> L6a
            r7 = 0
            r10 = 0
            r6 = r12
            android.database.Cursor r12 = r5.query(r6, r7, r8, r9, r10)     // Catch: java.lang.Exception -> L68
            if (r12 == 0) goto L6c
            boolean r5 = r12.moveToFirst()     // Catch: java.lang.Exception -> L6c
            if (r5 == 0) goto L6c
            r4 = r1
            goto L6c
        L68:
            r12 = r0
            goto L6c
        L6a:
            r6 = r12
            goto L68
        L6c:
            if (r12 == 0) goto L71
            r12.close()     // Catch: java.lang.Exception -> L8c
        L71:
            if (r4 == 0) goto L74
            return r3
        L74:
            java.lang.String r12 = "_display_name"
            r13.put(r12, r3)     // Catch: java.lang.Exception -> L8c
            android.content.ContentResolver r12 = r11.getContentResolver()     // Catch: java.lang.Exception -> L8c
            android.net.Uri r12 = r12.insert(r6, r13)     // Catch: java.lang.Exception -> L8c
            if (r12 == 0) goto L8c
            java.lang.String r12 = r12.toString()     // Catch: java.lang.Exception -> L8c
            java.lang.String r11 = com.mycompany.app.main.MainUri.k(r11, r12)     // Catch: java.lang.Exception -> L8c
            return r11
        L8c:
            int r12 = r14.f
            if (r12 <= r2) goto L91
            return r0
        L91:
            long r2 = r14.e
            r4 = 1
            long r2 = r2 + r4
            r14.e = r2
            int r12 = r12 + r1
            r14.f = r12
            java.lang.String r11 = a(r11, r6, r13, r14)
            return r11
        La0:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUriVol.a(android.content.Context, android.net.Uri, android.content.ContentValues, com.mycompany.app.main.MainUri$NumItem):java.lang.String");
    }

    public static String b(Context context, String str, String str2) {
        ContentValues contentValues;
        Uri uri;
        Cursor cursor;
        Uri uri2 = null;
        if (Build.VERSION.SDK_INT >= 29 && context != null && !TextUtils.isEmpty(str2)) {
            try {
                if (TextUtils.isEmpty(str)) {
                    str = "external_primary";
                }
                uri = MediaStore.Downloads.getContentUri(str);
            } catch (Exception unused) {
                contentValues = null;
            }
            if (uri != null) {
                boolean z = false;
                try {
                    cursor = context.getContentResolver().query(uri, null, "_display_name=? AND mime_type=?", new String[]{str2, "vnd.android.document/directory"}, null);
                    if (cursor != null) {
                        try {
                            if (cursor.moveToFirst()) {
                                z = true;
                            }
                        } catch (Exception unused2) {
                        }
                    }
                } catch (Exception unused3) {
                    cursor = null;
                }
                if (cursor != null) {
                    try {
                        cursor.close();
                    } catch (Exception unused4) {
                        contentValues = null;
                        uri2 = uri;
                        uri = uri2;
                        return a(context, uri, contentValues, MainUri.g(str2));
                    }
                }
                if (z) {
                    return str2;
                }
                contentValues = new ContentValues();
                try {
                    contentValues.put("_display_name", str2);
                    contentValues.put("mime_type", "vnd.android.document/directory");
                    Uri insert = context.getContentResolver().insert(uri, contentValues);
                    if (insert != null) {
                        return MainUri.k(context, insert.toString());
                    }
                } catch (Exception unused5) {
                    uri2 = uri;
                    uri = uri2;
                    return a(context, uri, contentValues, MainUri.g(str2));
                }
                return a(context, uri, contentValues, MainUri.g(str2));
            }
        }
        return null;
    }

    public static MainUri.UriItem c(Context context, Uri uri, ContentValues contentValues, String str, String str2, MainUri.NumItem numItem) {
        Uri insert;
        if (context == null || uri == null || numItem == null) {
            return null;
        }
        try {
            if (numItem.f > 20) {
                contentValues.put("_display_name", numItem.f16983a + "_" + System.currentTimeMillis() + numItem.b);
                insert = context.getContentResolver().insert(uri, contentValues);
            } else {
                contentValues.put("_display_name", numItem.f16984c + numItem.e + numItem.d);
                insert = context.getContentResolver().insert(uri, contentValues);
            }
            if (insert != null) {
                return e(context, insert, str, str2, true);
            }
        } catch (Exception unused) {
        }
        int i = numItem.f;
        if (i > 20) {
            return null;
        }
        numItem.e++;
        numItem.f = i + 1;
        return c(context, uri, contentValues, str, str2, numItem);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:(2:15|16)|(8:18|(1:20)|21|22|23|(1:25)|26|(2:28|29)(4:31|32|33|34))|39|21|22|23|(0)|26|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x003a, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0082, code lost:
    
        r4 = r2;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0049 A[Catch: Exception -> 0x003a, TryCatch #1 {Exception -> 0x003a, blocks: (B:23:0x0043, B:25:0x0049, B:26:0x0064, B:28:0x0078), top: B:22:0x0043 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0078 A[Catch: Exception -> 0x003a, TRY_LEAVE, TryCatch #1 {Exception -> 0x003a, blocks: (B:23:0x0043, B:25:0x0049, B:26:0x0064, B:28:0x0078), top: B:22:0x0043 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.mycompany.app.main.MainUri.UriItem d(android.content.Context r9, java.lang.String r10, java.lang.String r11, java.lang.String r12) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 29
            r2 = 0
            if (r0 >= r1) goto L8
            return r2
        L8:
            if (r9 == 0) goto L8f
            boolean r0 = android.text.TextUtils.isEmpty(r12)
            if (r0 == 0) goto L12
            goto L8f
        L12:
            boolean r0 = android.text.TextUtils.isEmpty(r10)     // Catch: java.lang.Exception -> L1b
            if (r0 == 0) goto L1d
            java.lang.String r10 = "external_primary"
            goto L1d
        L1b:
            r1 = r2
            goto L82
        L1d:
            android.net.Uri r0 = android.provider.MediaStore.Downloads.getContentUri(r10)     // Catch: java.lang.Exception -> L1b
            if (r0 != 0) goto L24
            return r2
        L24:
            java.lang.String r1 = com.mycompany.app.main.MainUtil.V0(r12)     // Catch: java.lang.Exception -> L39
            java.lang.String r3 = com.mycompany.app.main.MainUtil.t2(r1)     // Catch: java.lang.Exception -> L39
            boolean r4 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Exception -> L39
            if (r4 != 0) goto L3c
            boolean r1 = com.mycompany.app.compress.Compress.H(r1)     // Catch: java.lang.Exception -> L39
            if (r1 == 0) goto L3e
            goto L3c
        L39:
            r1 = r2
        L3a:
            r2 = r0
            goto L82
        L3c:
            java.lang.String r3 = "application/octet-stream"
        L3e:
            android.content.ContentValues r1 = new android.content.ContentValues     // Catch: java.lang.Exception -> L39
            r1.<init>()     // Catch: java.lang.Exception -> L39
            boolean r2 = android.text.TextUtils.isEmpty(r11)     // Catch: java.lang.Exception -> L3a
            if (r2 != 0) goto L64
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L3a
            r2.<init>()     // Catch: java.lang.Exception -> L3a
            java.lang.String r4 = android.os.Environment.DIRECTORY_DOWNLOADS     // Catch: java.lang.Exception -> L3a
            r2.append(r4)     // Catch: java.lang.Exception -> L3a
            java.lang.String r4 = "/"
            r2.append(r4)     // Catch: java.lang.Exception -> L3a
            r2.append(r11)     // Catch: java.lang.Exception -> L3a
            java.lang.String r4 = "relative_path"
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L3a
            r1.put(r4, r2)     // Catch: java.lang.Exception -> L3a
        L64:
            java.lang.String r2 = "_display_name"
            r1.put(r2, r12)     // Catch: java.lang.Exception -> L3a
            java.lang.String r2 = "mime_type"
            r1.put(r2, r3)     // Catch: java.lang.Exception -> L3a
            android.content.ContentResolver r2 = r9.getContentResolver()     // Catch: java.lang.Exception -> L3a
            android.net.Uri r2 = r2.insert(r0, r1)     // Catch: java.lang.Exception -> L3a
            if (r2 == 0) goto L7e
            r3 = 1
            com.mycompany.app.main.MainUri$UriItem r9 = e(r9, r2, r10, r11, r3)     // Catch: java.lang.Exception -> L3a
            return r9
        L7e:
            r4 = r0
        L7f:
            r6 = r10
            r5 = r1
            goto L84
        L82:
            r4 = r2
            goto L7f
        L84:
            com.mycompany.app.main.MainUri$NumItem r8 = com.mycompany.app.main.MainUri.g(r12)
            r3 = r9
            r7 = r11
            com.mycompany.app.main.MainUri$UriItem r9 = c(r3, r4, r5, r6, r7, r8)
            return r9
        L8f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUriVol.d(android.content.Context, java.lang.String, java.lang.String, java.lang.String):com.mycompany.app.main.MainUri$UriItem");
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.mycompany.app.main.MainUri$UriItem] */
    public static MainUri.UriItem e(Context context, Uri uri, String str, String str2, boolean z) {
        if (context != null && uri != null) {
            try {
                ?? obj = new Object();
                obj.b = uri;
                obj.e = uri.toString();
                if (!TextUtils.isEmpty(str)) {
                    if (!TextUtils.isEmpty(str2)) {
                        obj.f16986c = str + "/" + Environment.DIRECTORY_DOWNLOADS + "/" + str2;
                        obj.d = str2;
                    } else {
                        obj.f16986c = str + "/" + Environment.DIRECTORY_DOWNLOADS;
                        obj.d = Environment.DIRECTORY_DOWNLOADS;
                    }
                }
                DocumentFile b = DocumentFile.b(context, uri);
                obj.f = b.c();
                if (z) {
                    obj.g = System.currentTimeMillis();
                    return obj;
                }
                obj.g = b.f();
                long g = b.g();
                obj.h = g;
                if (g == 0) {
                    obj.h = MainUri.l(context, obj.e);
                }
                return obj;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public static MainUri.UriItem f(Context context, Uri uri, MainUri.NumItem numItem, String str) {
        if (context == null || uri == null || numItem == null) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            if (numItem.f > 20) {
                contentValues.put("_display_name", numItem.f16983a + "_" + System.currentTimeMillis() + numItem.b);
            } else {
                contentValues.put("_display_name", numItem.f16984c + numItem.e + numItem.d);
            }
            if (TextUtils.isEmpty(str)) {
                str = "application/octet-stream";
            }
            contentValues.put("mime_type", str);
            if (context.getContentResolver().update(uri, contentValues, null, null) > 0) {
                return e(context, uri, null, null, false);
            }
        } catch (Exception unused) {
        }
        int i = numItem.f;
        if (i > 20) {
            return null;
        }
        numItem.e++;
        numItem.f = i + 1;
        return f(context, uri, numItem, str);
    }
}
