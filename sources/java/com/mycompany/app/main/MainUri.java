package com.mycompany.app.main;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.support.v4.media.a;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import androidx.documentfile.provider.DocumentFile;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.pref.PrefPath;
import com.mycompany.app.soulbrowser.R;
import java.util.ArrayList;
import java.util.Set;

/* loaded from: classes3.dex */
public class MainUri {

    /* loaded from: classes3.dex */
    public static class NumItem {

        /* renamed from: a, reason: collision with root package name */
        public String f16983a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public String f16984c;
        public String d;
        public long e;
        public int f;
    }

    /* loaded from: classes3.dex */
    public static class UriItem {

        /* renamed from: a, reason: collision with root package name */
        public int f16985a;
        public Uri b;

        /* renamed from: c, reason: collision with root package name */
        public String f16986c;
        public String d;
        public String e;
        public String f;
        public long g;
        public long h;
    }

    public static String a(Uri uri) {
        Uri buildDocumentUriUsingTree;
        try {
            String treeDocumentId = DocumentsContract.getTreeDocumentId(uri);
            if (!TextUtils.isEmpty(treeDocumentId) && (buildDocumentUriUsingTree = DocumentsContract.buildDocumentUriUsingTree(uri, treeDocumentId)) != null) {
                return buildDocumentUriUsingTree.toString();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0068 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0063 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean b(android.content.Context r4, java.lang.String r5, java.lang.String r6, boolean r7, boolean r8) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r5)
            r1 = 0
            if (r0 != 0) goto L6b
            boolean r0 = android.text.TextUtils.isEmpty(r6)
            if (r0 == 0) goto Le
            goto L6b
        Le:
            r0 = 0
            if (r7 == 0) goto L20
            android.content.ContentResolver r2 = r4.getContentResolver()     // Catch: java.lang.Exception -> L1e
            android.net.Uri r3 = android.net.Uri.parse(r5)     // Catch: java.lang.Exception -> L1e
            java.io.InputStream r2 = r2.openInputStream(r3)     // Catch: java.lang.Exception -> L1e
            goto L24
        L1e:
            r4 = r0
            goto L60
        L20:
            java.io.InputStream r2 = com.mycompany.app.main.MainUtil.a1(r5)     // Catch: java.lang.Exception -> L1e
        L24:
            if (r8 == 0) goto L36
            android.content.ContentResolver r4 = r4.getContentResolver()     // Catch: java.lang.Exception -> L33
            android.net.Uri r6 = android.net.Uri.parse(r6)     // Catch: java.lang.Exception -> L33
            java.io.OutputStream r4 = r4.openOutputStream(r6)     // Catch: java.lang.Exception -> L33
            goto L3a
        L33:
            r4 = r0
        L34:
            r0 = r2
            goto L60
        L36:
            java.io.OutputStream r4 = com.mycompany.app.main.MainUtil.c1(r6, r1)     // Catch: java.lang.Exception -> L33
        L3a:
            if (r7 != 0) goto L4b
            if (r8 == 0) goto L4b
            java.io.File r6 = new java.io.File     // Catch: java.lang.Exception -> L34
            r6.<init>(r5)     // Catch: java.lang.Exception -> L34
            long r5 = r6.length()     // Catch: java.lang.Exception -> L34
            byte[] r0 = d(r5)     // Catch: java.lang.Exception -> L34
        L4b:
            if (r0 == 0) goto L4f
            int r5 = r0.length     // Catch: java.lang.Exception -> L34
            goto L53
        L4f:
            r5 = 8192(0x2000, float:1.148E-41)
            byte[] r0 = new byte[r5]     // Catch: java.lang.Exception -> L34
        L53:
            int r6 = r2.read(r0, r1, r5)     // Catch: java.lang.Exception -> L34
            r7 = -1
            if (r6 == r7) goto L5e
            r4.write(r0, r1, r6)     // Catch: java.lang.Exception -> L34
            goto L53
        L5e:
            r1 = 1
            goto L61
        L60:
            r2 = r0
        L61:
            if (r4 == 0) goto L66
            r4.close()     // Catch: java.lang.Exception -> L66
        L66:
            if (r2 == 0) goto L6b
            r2.close()     // Catch: java.lang.Exception -> L6b
        L6b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUri.b(android.content.Context, java.lang.String, java.lang.String, boolean, boolean):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003c A[Catch: Exception -> 0x002c, TRY_LEAVE, TryCatch #0 {Exception -> 0x002c, blocks: (B:11:0x0017, B:13:0x0025, B:16:0x0032, B:18:0x003c), top: B:10:0x0017 }] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [android.net.Uri] */
    /* JADX WARN: Type inference failed for: r0v6, types: [android.net.Uri] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v9, types: [android.net.Uri] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.mycompany.app.main.MainUri.UriItem c(android.content.Context r4, java.lang.String r5, java.lang.String r6, java.lang.String r7) {
        /*
            boolean r0 = q(r5)
            if (r0 == 0) goto L50
            r6 = 0
            if (r4 == 0) goto L4f
            boolean r0 = android.text.TextUtils.isEmpty(r5)
            if (r0 == 0) goto L10
            goto L4f
        L10:
            android.net.Uri r0 = android.net.Uri.parse(r5)     // Catch: java.lang.Exception -> L42
            if (r0 != 0) goto L17
            goto L4f
        L17:
            java.lang.String r1 = com.mycompany.app.main.MainUtil.V0(r7)     // Catch: java.lang.Exception -> L2c
            java.lang.String r6 = com.mycompany.app.main.MainUtil.t2(r1)     // Catch: java.lang.Exception -> L2c
            boolean r2 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Exception -> L2c
            if (r2 != 0) goto L30
            boolean r1 = com.mycompany.app.compress.Compress.H(r1)     // Catch: java.lang.Exception -> L2c
            if (r1 == 0) goto L32
            goto L30
        L2c:
            r3 = r0
            r0 = r6
            r6 = r3
            goto L43
        L30:
            java.lang.String r6 = "application/octet-stream"
        L32:
            android.content.ContentResolver r1 = r4.getContentResolver()     // Catch: java.lang.Exception -> L2c
            android.net.Uri r0 = android.provider.DocumentsContract.createDocument(r1, r0, r6, r7)     // Catch: java.lang.Exception -> L2c
            if (r0 == 0) goto L46
            r1 = 1
            com.mycompany.app.main.MainUri$UriItem r4 = com.mycompany.app.main.MainUriDoc.d(r4, r0, r5, r1)     // Catch: java.lang.Exception -> L2c
            return r4
        L42:
            r0 = r6
        L43:
            r3 = r0
            r0 = r6
            r6 = r3
        L46:
            com.mycompany.app.main.MainUri$NumItem r7 = g(r7)
            com.mycompany.app.main.MainUri$UriItem r4 = com.mycompany.app.main.MainUriDoc.c(r4, r0, r5, r6, r7)
            return r4
        L4f:
            return r6
        L50:
            com.mycompany.app.main.MainUri$UriItem r4 = com.mycompany.app.main.MainUriVol.d(r4, r5, r6, r7)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUri.c(android.content.Context, java.lang.String, java.lang.String, java.lang.String):com.mycompany.app.main.MainUri$UriItem");
    }

    public static byte[] d(long j) {
        int i;
        if (j <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
            return new byte[8192];
        }
        if (j < 40960) {
            i = (int) j;
        } else {
            i = 8192;
        }
        try {
            return new byte[i];
        } catch (Exception | OutOfMemoryError unused) {
            if (i > 8192) {
                try {
                    return new byte[8192];
                } catch (Exception | OutOfMemoryError unused2) {
                    return new byte[8192];
                }
            }
            return new byte[8192];
        }
    }

    public static String e() {
        String str = PrefPath.r;
        if (TextUtils.isEmpty(str) && Build.VERSION.SDK_INT >= 29) {
            PrefPath.r = "external_primary";
            return "external_primary";
        }
        return str;
    }

    public static DocumentFile f(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                return DocumentFile.b(context, Uri.parse(str));
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, com.mycompany.app.main.MainUri$NumItem] */
    public static NumItem g(String str) {
        String str2;
        int lastIndexOf;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int lastIndexOf2 = str.lastIndexOf(46);
        int i = 0;
        String str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (lastIndexOf2 != -1) {
            str2 = str.substring(0, lastIndexOf2);
            if (lastIndexOf2 < str.length()) {
                str3 = str.substring(lastIndexOf2);
            }
        } else {
            str2 = str;
        }
        if (str2.endsWith(")") && (lastIndexOf = str2.lastIndexOf(" (")) != -1 && lastIndexOf < str2.length() - 3) {
            try {
                int parseInt = Integer.parseInt(str2.substring(lastIndexOf + 2, str2.length() - 1));
                try {
                    str2 = str.substring(0, lastIndexOf);
                } catch (Exception unused) {
                }
                i = parseInt;
            } catch (Exception unused2) {
            }
        }
        StringBuilder v = a.v(str2, " (");
        ?? obj = new Object();
        obj.f16983a = str2;
        obj.b = str3;
        obj.f16984c = v.toString();
        obj.d = ")" + str3;
        obj.e = (long) (i + 1);
        return obj;
    }

    public static String h(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (q(str)) {
            return k(context, str);
        }
        return o(context, str);
    }

    public static String i(Context context, String str) {
        ParcelFileDescriptor parcelFileDescriptor;
        String str2 = null;
        try {
            parcelFileDescriptor = context.getContentResolver().openFileDescriptor(Uri.parse(str), "r");
            try {
                str2 = "/proc/self/fd/" + parcelFileDescriptor.detachFd();
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            parcelFileDescriptor = null;
        }
        if (parcelFileDescriptor != null) {
            try {
                parcelFileDescriptor.close();
            } catch (Exception unused3) {
            }
        }
        return str2;
    }

    public static UriItem j(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (p(str)) {
            return MainUriVol.e(context, Uri.parse(str), str2, null, false);
        }
        return MainUriDoc.d(context, Uri.parse(str), str2, false);
    }

    public static String k(Context context, String str) {
        int i;
        int i2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.endsWith("%3A")) {
            if (str.endsWith("/tree/primary%3A/document/primary%3A")) {
                return context.getString(R.string.storage_device);
            }
            int lastIndexOf = str.lastIndexOf(47);
            if (lastIndexOf > 0 && lastIndexOf < str.length()) {
                String substring = str.substring(lastIndexOf);
                if (str.endsWith("/tree" + substring + "/document" + substring)) {
                    return context.getString(R.string.storage_sdcard);
                }
            }
        }
        DocumentFile f = f(context, str);
        if (f != null && f.a()) {
            return f.c();
        }
        int lastIndexOf2 = str.lastIndexOf("%2F");
        int lastIndexOf3 = str.lastIndexOf("%3A");
        int lastIndexOf4 = str.lastIndexOf(47);
        int max = Math.max(Math.max(lastIndexOf2, lastIndexOf3), lastIndexOf4);
        int i3 = 3;
        if (max == lastIndexOf4) {
            i = 1;
        } else {
            i = 3;
        }
        if (max >= 0) {
            int length = str.length();
            int i4 = i + max;
            if (i4 < length) {
                str = str.substring(i4);
            } else if (i4 == length) {
                if (max == lastIndexOf2) {
                    i2 = Math.max(lastIndexOf3, lastIndexOf4);
                } else if (max == lastIndexOf3) {
                    i2 = Math.max(lastIndexOf2, lastIndexOf4);
                } else if (max == lastIndexOf4) {
                    i2 = Math.max(lastIndexOf2, lastIndexOf3);
                } else {
                    i2 = 0;
                }
                if (i2 > 0) {
                    if (i2 == lastIndexOf4) {
                        i3 = 1;
                    }
                    int i5 = i2 + i3;
                    if (i5 < max) {
                        str = str.substring(i5, max);
                    }
                }
            }
        }
        return MainUtil.D0(str);
    }

    public static long l(Context context, String str) {
        long j;
        ParcelFileDescriptor parcelFileDescriptor = null;
        try {
            parcelFileDescriptor = context.getContentResolver().openFileDescriptor(Uri.parse(str), "r");
            j = parcelFileDescriptor.getStatSize();
        } catch (Exception unused) {
            j = 0;
        }
        if (parcelFileDescriptor != null) {
            try {
                parcelFileDescriptor.close();
            } catch (Exception unused2) {
            }
        }
        return j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0022, code lost:
    
        if (androidx.documentfile.provider.DocumentFile.b(r1, android.net.Uri.parse(r2)).d() != false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m(android.content.Context r1, java.lang.String r2, java.util.List r3) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r2)
            if (r0 == 0) goto L7
            goto L44
        L7:
            boolean r0 = q(r2)
            if (r0 == 0) goto L25
            if (r1 == 0) goto L44
            boolean r3 = android.text.TextUtils.isEmpty(r2)
            if (r3 == 0) goto L16
            goto L44
        L16:
            android.net.Uri r3 = android.net.Uri.parse(r2)     // Catch: java.lang.Exception -> L44
            androidx.documentfile.provider.DocumentFile r1 = androidx.documentfile.provider.DocumentFile.b(r1, r3)     // Catch: java.lang.Exception -> L44
            boolean r1 = r1.d()     // Catch: java.lang.Exception -> L44
            if (r1 == 0) goto L44
            goto L43
        L25:
            if (r3 == 0) goto L44
            int r1 = r3.size()
            if (r1 <= 0) goto L44
            java.util.Iterator r1 = r3.iterator()
        L31:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L44
            java.lang.Object r3 = r1.next()
            java.lang.String r3 = (java.lang.String) r3
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L31
        L43:
            return r2
        L44:
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 29
            if (r1 < r2) goto L4d
            java.lang.String r1 = "external_primary"
            return r1
        L4d:
            java.lang.String r1 = ""
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainUri.m(android.content.Context, java.lang.String, java.util.List):java.lang.String");
    }

    public static ArrayList n(Context context) {
        Set<String> externalVolumeNames;
        if (Build.VERSION.SDK_INT >= 29 && (externalVolumeNames = MediaStore.getExternalVolumeNames(context)) != null && externalVolumeNames.size() != 0) {
            ArrayList arrayList = new ArrayList();
            for (String str : externalVolumeNames) {
                if (!TextUtils.isEmpty(str)) {
                    if ("external_primary".equals(str)) {
                        arrayList.add(0, str);
                    } else {
                        arrayList.add(str);
                    }
                }
            }
            return arrayList;
        }
        return null;
    }

    public static String o(Context context, String str) {
        StringBuilder sb = new StringBuilder();
        if ("external_primary".equals(str)) {
            sb.append(context.getString(R.string.storage_device));
        } else {
            sb.append(context.getString(R.string.storage_sdcard));
        }
        sb.append("/");
        sb.append(Environment.DIRECTORY_DOWNLOADS);
        return sb.toString();
    }

    public static boolean p(String str) {
        if (Build.VERSION.SDK_INT < 29 || TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("content://media");
    }

    public static boolean q(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("content://");
    }

    public static boolean r(Context context, String str) {
        Uri parse;
        if (context != null && !TextUtils.isEmpty(str) && (parse = Uri.parse(str)) != null) {
            try {
                if (DocumentFile.b(context, parse).e()) {
                    return true;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static boolean s(Context context, String str, String str2, boolean z, boolean z2) {
        if (p(str)) {
            boolean b = b(context, str, str2, z, z2);
            if (b) {
                MainUtil.A(context, str);
            }
            return b;
        }
        boolean b2 = b(context, str, str2, z, z2);
        if (b2) {
            MainUtil.A(context, str);
        }
        return b2;
    }
}
