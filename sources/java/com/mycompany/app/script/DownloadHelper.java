package com.mycompany.app.script;

import android.text.TextUtils;
import android.webkit.URLUtil;
import java.net.URL;

/* loaded from: classes3.dex */
public class DownloadHelper {

    /* loaded from: classes3.dex */
    public static final class DownloadData {

        /* renamed from: a, reason: collision with root package name */
        public byte[] f17545a;
        public String b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00bd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r4v13, types: [java.lang.Object, com.mycompany.app.script.DownloadHelper$DownloadData] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.mycompany.app.script.DownloadHelper.DownloadData a(java.lang.String r9) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r9)
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            r0 = -1
            r2 = 4096(0x1000, float:5.74E-42)
            r3 = 0
            java.net.URL r4 = new java.net.URL     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L87
            r4.<init>(r9)     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L87
            java.net.URLConnection r9 = r4.openConnection()     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L87
            java.net.HttpURLConnection r9 = (java.net.HttpURLConnection) r9     // Catch: java.lang.Throwable -> L85 java.lang.Exception -> L87
            java.lang.String r4 = "GET"
            r9.setRequestMethod(r4)     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            r9.setDoOutput(r3)     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            r4 = 1
            r9.setDoInput(r4)     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            r9.setUseCaches(r3)     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            r4 = 5000(0x1388, float:7.006E-42)
            r9.setReadTimeout(r4)     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            r9.connect()     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            int r4 = r9.getResponseCode()     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            r5 = 200(0xc8, float:2.8E-43)
            if (r4 != r5) goto L6a
            java.io.InputStream r4 = r9.getInputStream()     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            java.io.ByteArrayOutputStream r5 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            r5.<init>()     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            byte[] r6 = new byte[r2]     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            java.lang.String r7 = r9.getContentEncoding()     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
        L45:
            int r8 = r4.read(r6)     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            if (r8 != r0) goto L66
            byte[] r5 = r5.toByteArray()     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            r4.close()     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            com.mycompany.app.script.DownloadHelper$DownloadData r4 = new com.mycompany.app.script.DownloadHelper$DownloadData     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            r4.<init>()     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            r4.f17545a = r5     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            r4.b = r7     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            r9.disconnect()     // Catch: java.lang.Exception -> L5e
        L5e:
            r1 = r4
            goto Lba
        L60:
            r1 = r9
            goto Lbb
        L62:
            r0 = move-exception
            goto L60
        L64:
            r4 = move-exception
            goto L89
        L66:
            r5.write(r6, r3, r8)     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            goto L45
        L6a:
            java.lang.Exception r4 = new java.lang.Exception     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            r5.<init>()     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            java.lang.String r6 = "HTTP Response: "
            r5.append(r6)     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            int r6 = r9.getResponseCode()     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            r5.append(r6)     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
            throw r4     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> L64
        L85:
            r0 = move-exception
            goto Lbb
        L87:
            r4 = move-exception
            r9 = r1
        L89:
            boolean r4 = r4 instanceof java.io.IOException     // Catch: java.lang.Throwable -> L62
            if (r4 == 0) goto Lb5
            if (r9 == 0) goto Lb5
            java.io.InputStream r4 = r9.getErrorStream()     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> Laf
            if (r4 == 0) goto Laf
            com.mycompany.app.script.UnicodeReader r5 = new com.mycompany.app.script.UnicodeReader     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> Laf
            r5.<init>(r4, r1)     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> Laf
            char[] r4 = new char[r2]     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> Lb0
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> Lb0
            r6.<init>()     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> Lb0
        La1:
            java.io.InputStreamReader r7 = r5.f17552c     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> Lb0
            int r7 = r7.read(r4, r3, r2)     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> Lb0
            if (r7 == r0) goto Lb0
            if (r7 <= 0) goto La1
            r6.append(r4, r3, r7)     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> Lb0
            goto La1
        Laf:
            r5 = r1
        Lb0:
            if (r5 == 0) goto Lb5
            r5.close()     // Catch: java.lang.Throwable -> L62 java.lang.Exception -> Lb5
        Lb5:
            if (r9 == 0) goto Lba
            r9.disconnect()     // Catch: java.lang.Exception -> Lba
        Lba:
            return r1
        Lbb:
            if (r1 == 0) goto Lc0
            r1.disconnect()     // Catch: java.lang.Exception -> Lc0
        Lc0:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.script.DownloadHelper.a(java.lang.String):com.mycompany.app.script.DownloadHelper$DownloadData");
    }

    public static String b(String str, String str2) {
        URL url;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            if (URLUtil.isNetworkUrl(str2)) {
                url = new URL(str2);
            } else {
                url = null;
            }
            return new URL(url, str).toURI().toString();
        } catch (Exception unused) {
            return null;
        }
    }
}
