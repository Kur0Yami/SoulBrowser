package com.mycompany.app.main;

import android.content.Context;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.text.TextUtils;
import androidx.documentfile.provider.DocumentFile;
import com.mycompany.app.main.MainUri;

/* loaded from: classes3.dex */
public class MainUriDoc {
    public static String a(Context context, Uri uri, MainUri.NumItem numItem) {
        Uri createDocument;
        if (context == null || uri == null || numItem == null) {
            return null;
        }
        try {
            if (numItem.f > 20) {
                createDocument = DocumentsContract.createDocument(context.getContentResolver(), uri, "vnd.android.document/directory", numItem.f16983a + "_" + System.currentTimeMillis() + numItem.b);
            } else {
                createDocument = DocumentsContract.createDocument(context.getContentResolver(), uri, "vnd.android.document/directory", numItem.f16984c + numItem.e + numItem.d);
            }
            if (createDocument != null) {
                return createDocument.toString();
            }
        } catch (Exception unused) {
        }
        int i = numItem.f;
        if (i > 20) {
            return null;
        }
        numItem.e++;
        numItem.f = i + 1;
        return a(context, uri, numItem);
    }

    public static String b(Context context, String str, String str2) {
        Uri uri;
        Uri uri2 = null;
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                uri = Uri.parse(str);
            } catch (Exception unused) {
            }
            if (uri != null) {
                try {
                    Uri createDocument = DocumentsContract.createDocument(context.getContentResolver(), uri, "vnd.android.document/directory", str2);
                    if (createDocument != null) {
                        return createDocument.toString();
                    }
                } catch (Exception unused2) {
                    uri2 = uri;
                    uri = uri2;
                    return a(context, uri, MainUri.g(str2));
                }
                return a(context, uri, MainUri.g(str2));
            }
        }
        return null;
    }

    public static MainUri.UriItem c(Context context, Uri uri, String str, String str2, MainUri.NumItem numItem) {
        if (context == null || uri == null || numItem == null) {
            return null;
        }
        try {
            if (numItem.f > 20) {
                uri = DocumentsContract.createDocument(context.getContentResolver(), uri, str2, numItem.f16983a + "_" + System.currentTimeMillis() + numItem.b);
            } else {
                uri = DocumentsContract.createDocument(context.getContentResolver(), uri, str2, numItem.f16984c + numItem.e + numItem.d);
            }
            if (uri != null) {
                return d(context, uri, str, true);
            }
        } catch (Exception unused) {
        }
        int i = numItem.f;
        if (i > 20) {
            return null;
        }
        numItem.e++;
        numItem.f = i + 1;
        return c(context, uri, str, str2, numItem);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.mycompany.app.main.MainUri$UriItem] */
    public static MainUri.UriItem d(Context context, Uri uri, String str, boolean z) {
        if (context != null && uri != null) {
            try {
                ?? obj = new Object();
                obj.b = uri;
                obj.e = uri.toString();
                if (!TextUtils.isEmpty(str)) {
                    obj.f16986c = str;
                    obj.d = MainUri.k(context, str);
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

    public static MainUri.UriItem e(Context context, Uri uri, MainUri.NumItem numItem) {
        if (context == null || uri == null || numItem == null) {
            return null;
        }
        try {
            if (numItem.f > 20) {
                uri = DocumentsContract.renameDocument(context.getContentResolver(), uri, numItem.f16983a + "_" + System.currentTimeMillis() + numItem.b);
            } else {
                uri = DocumentsContract.renameDocument(context.getContentResolver(), uri, numItem.f16984c + numItem.e + numItem.d);
            }
            if (uri != null) {
                return d(context, uri, null, false);
            }
        } catch (Exception unused) {
        }
        int i = numItem.f;
        if (i > 20) {
            return null;
        }
        numItem.e++;
        numItem.f = i + 1;
        return e(context, uri, numItem);
    }
}
