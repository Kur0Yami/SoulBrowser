package com.mycompany.app.down;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainDownSvc;
import com.mycompany.app.main.MainUtil;
import java.util.ArrayList;
import java.util.Comparator;

/* loaded from: classes3.dex */
public class DownParseList {

    /* renamed from: a, reason: collision with root package name */
    public boolean f15571a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f15572c;
    public boolean d;
    public boolean e;

    /* loaded from: classes3.dex */
    public static class SortM3u8 implements Comparator<MainDownSvc.M3u8Item> {
        @Override // java.util.Comparator
        public final int compare(MainDownSvc.M3u8Item m3u8Item, MainDownSvc.M3u8Item m3u8Item2) {
            int i;
            int i2;
            MainDownSvc.M3u8Item m3u8Item3 = m3u8Item;
            MainDownSvc.M3u8Item m3u8Item4 = m3u8Item2;
            if (m3u8Item3 != null || m3u8Item4 != null) {
                if (m3u8Item3 != null) {
                    if (m3u8Item4 == null || (i = m3u8Item3.e) < (i2 = m3u8Item4.e)) {
                        return -1;
                    }
                    if (i > i2) {
                        return 1;
                    }
                    return 0;
                }
                return 1;
            }
            return 0;
        }
    }

    public static int d(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        int G6 = MainUtil.G6(str.replace("x", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
        if (str2.length() > str.length()) {
            String substring = str2.substring(str.length());
            if (!TextUtils.isEmpty(substring)) {
                return MainUtil.G6(substring.replace(" (", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).replace(")", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).trim()) + G6;
            }
        }
        return G6;
    }

    public static String e(String str, String str2) {
        int indexOf;
        int length;
        String substring;
        if (TextUtils.isEmpty(str) || (indexOf = str.indexOf(str2)) == -1 || (length = str2.length() + indexOf) >= str.length()) {
            return null;
        }
        int indexOf2 = str.indexOf(44, length);
        if (indexOf2 > length && indexOf2 <= str.length()) {
            substring = str.substring(length, indexOf2);
        } else {
            substring = str.substring(length);
        }
        return MainUtil.X6(substring);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x01c9  */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.Object, com.mycompany.app.main.MainDownSvc$M3u8Item] */
    /* JADX WARN: Type inference failed for: r14v6, types: [java.lang.Object, java.util.Comparator] */
    /* JADX WARN: Type inference failed for: r8v17, types: [java.lang.Object, com.mycompany.app.main.MainDownSvc$M3u8Item] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.ArrayList a(android.content.Context r13, java.lang.String r14, java.lang.String r15) {
        /*
            Method dump skipped, instructions count: 514
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.down.DownParseList.a(android.content.Context, java.lang.String, java.lang.String):java.util.ArrayList");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00aa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.ArrayList b(android.content.Context r8, java.lang.String r9, java.lang.String r10) {
        /*
            r7 = this;
            r1 = 0
            r5 = 1
            r0 = 0
            r2 = r8
            r3 = r9
            r4 = r10
            java.net.HttpURLConnection r8 = com.mycompany.app.main.MainUtil.S3(r0, r1, r2, r3, r4, r5)
            r9 = 0
            if (r8 != 0) goto Le
            return r9
        Le:
            r10 = 1
            r8.setDoInput(r10)     // Catch: java.lang.Exception -> L21 java.lang.OutOfMemoryError -> L27
            r8.connect()     // Catch: java.lang.Exception -> L21 java.lang.OutOfMemoryError -> L27
            boolean r0 = r7.f15572c     // Catch: java.lang.Exception -> L21 java.lang.OutOfMemoryError -> L27
            if (r0 == 0) goto L2d
            boolean r0 = com.mycompany.app.main.MainUtil.R5(r8)     // Catch: java.lang.Exception -> L21 java.lang.OutOfMemoryError -> L27
            if (r0 == 0) goto L2d
            r7.d = r10     // Catch: java.lang.Exception -> L21 java.lang.OutOfMemoryError -> L27
        L21:
            r10 = r9
            r1 = r10
            r3 = r1
            r4 = r3
            goto L99
        L27:
            r10 = r9
            r1 = r10
            r3 = r1
            r4 = r3
            goto L96
        L2d:
            java.io.InputStream r0 = r8.getInputStream()     // Catch: java.lang.Exception -> L21 java.lang.OutOfMemoryError -> L27
            r7.b = r10     // Catch: java.lang.Exception -> L53 java.lang.OutOfMemoryError -> L56
            java.lang.String r10 = "gzip"
            java.lang.String r1 = r8.getContentEncoding()     // Catch: java.lang.Exception -> L53 java.lang.OutOfMemoryError -> L56
            boolean r10 = r10.equals(r1)     // Catch: java.lang.Exception -> L53 java.lang.OutOfMemoryError -> L56
            if (r10 == 0) goto L59
            java.util.zip.GZIPInputStream r10 = new java.util.zip.GZIPInputStream     // Catch: java.lang.Exception -> L53 java.lang.OutOfMemoryError -> L56
            r10.<init>(r0)     // Catch: java.lang.Exception -> L53 java.lang.OutOfMemoryError -> L56
            java.io.InputStreamReader r1 = new java.io.InputStreamReader     // Catch: java.lang.Exception -> L4a java.lang.OutOfMemoryError -> L4e
            r1.<init>(r10)     // Catch: java.lang.Exception -> L4a java.lang.OutOfMemoryError -> L4e
            goto L5f
        L4a:
            r1 = r9
        L4b:
            r3 = r1
        L4c:
            r4 = r3
            goto L70
        L4e:
            r1 = r9
        L4f:
            r3 = r1
        L50:
            r4 = r3
        L51:
            r9 = r0
            goto L96
        L53:
            r10 = r9
            r1 = r10
            goto L4b
        L56:
            r10 = r9
            r1 = r10
            goto L4f
        L59:
            java.io.InputStreamReader r1 = new java.io.InputStreamReader     // Catch: java.lang.Exception -> L53 java.lang.OutOfMemoryError -> L56
            r1.<init>(r0)     // Catch: java.lang.Exception -> L53 java.lang.OutOfMemoryError -> L56
            r10 = r9
        L5f:
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.lang.Exception -> L92 java.lang.OutOfMemoryError -> L94
            r3.<init>(r1)     // Catch: java.lang.Exception -> L92 java.lang.OutOfMemoryError -> L94
            r4 = r9
        L65:
            java.lang.String r5 = r3.readLine()     // Catch: java.lang.OutOfMemoryError -> L51 java.lang.Exception -> L70
            if (r5 == 0) goto L70
            boolean r6 = r7.f15571a     // Catch: java.lang.OutOfMemoryError -> L51 java.lang.Exception -> L70
            if (r6 != 0) goto L72
        L6f:
            r4 = r9
        L70:
            r9 = r0
            goto L99
        L72:
            java.lang.String r5 = r5.trim()     // Catch: java.lang.OutOfMemoryError -> L51 java.lang.Exception -> L70
            boolean r6 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.OutOfMemoryError -> L51 java.lang.Exception -> L70
            if (r6 == 0) goto L7d
            goto L65
        L7d:
            java.lang.String r6 = "#EXTINF"
            boolean r6 = r5.startsWith(r6)     // Catch: java.lang.OutOfMemoryError -> L51 java.lang.Exception -> L70
            if (r6 == 0) goto L86
            goto L6f
        L86:
            if (r4 != 0) goto L8e
            java.util.ArrayList r6 = new java.util.ArrayList     // Catch: java.lang.OutOfMemoryError -> L51 java.lang.Exception -> L70
            r6.<init>()     // Catch: java.lang.OutOfMemoryError -> L51 java.lang.Exception -> L70
            r4 = r6
        L8e:
            r4.add(r5)     // Catch: java.lang.OutOfMemoryError -> L51 java.lang.Exception -> L70
            goto L65
        L92:
            r3 = r9
            goto L4c
        L94:
            r3 = r9
            goto L50
        L96:
            com.mycompany.app.main.MainUtil.D6(r2)
        L99:
            if (r3 == 0) goto L9e
            r3.close()     // Catch: java.lang.Exception -> L9e
        L9e:
            if (r1 == 0) goto La3
            r1.close()     // Catch: java.lang.Exception -> La3
        La3:
            if (r10 == 0) goto La8
            r10.close()     // Catch: java.lang.Exception -> La8
        La8:
            if (r9 == 0) goto Lad
            r9.close()     // Catch: java.lang.Exception -> Lad
        Lad:
            r8.disconnect()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.down.DownParseList.b(android.content.Context, java.lang.String, java.lang.String):java.util.ArrayList");
    }

    public final ArrayList c(Context context, String str, String str2) {
        boolean startsWith;
        if (TextUtils.isEmpty(str)) {
            startsWith = false;
        } else {
            startsWith = str.startsWith("m3fake:");
        }
        if (startsWith) {
            this.f15572c = true;
        }
        String M0 = MainUtil.M0(str);
        if (!TextUtils.isEmpty(M0)) {
            this.f15571a = true;
            this.b = false;
            this.e = false;
            ArrayList a2 = a(context, M0, str2);
            if (!this.d) {
                if (!this.b && !TextUtils.isEmpty(str2)) {
                    if (this.f15571a) {
                        boolean z = MainConst.f16452a;
                        ArrayList a3 = a(context, M0, null);
                        if (!this.d) {
                            this.e = this.b;
                            return a3;
                        }
                    }
                } else {
                    return a2;
                }
            }
        }
        return null;
    }
}
