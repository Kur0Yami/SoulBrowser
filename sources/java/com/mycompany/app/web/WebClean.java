package com.mycompany.app.web;

import android.app.NotificationManager;
import android.content.Context;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.util.SparseArray;
import android.webkit.URLUtil;
import android.webkit.WebView;
import androidx.core.app.NotificationCompat;
import com.mycompany.app.db.book.DbAdsCmd;
import com.mycompany.app.dialog.DialogSetFilter;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainFilterDown;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.text.Typography;

/* loaded from: classes3.dex */
public class WebClean {
    public ArrayList A;
    public ArrayList A0;
    public ArrayList B;
    public ArrayList B0;
    public ArrayList C;
    public ArrayList C0;
    public ArrayList D;
    public ArrayList D0;
    public HashMap E;
    public ArrayList E0;
    public HashMap F;
    public ArrayList F0;
    public String G;
    public SparseArray G0;
    public boolean H;
    public SparseArray H0;
    public boolean I;
    public SparseArray I0;
    public List J;
    public SparseArray J0;
    public String K;
    public SparseArray K0;
    public ArrayList L;
    public SparseArray L0;
    public List M;
    public SparseArray M0;
    public boolean N;
    public SparseArray N0;
    public String O;
    public SparseArray O0;
    public String P;
    public SparseArray P0;
    public ArrayList Q;
    public SparseArray Q0;
    public ArrayList R;
    public SparseArray R0;
    public ArrayList S;
    public SparseArray S0;
    public ArrayList T;
    public SparseArray T0;
    public HashMap U;
    public SparseArray U0;
    public HashMap V;
    public SparseArray V0;
    public ArrayList W;
    public ArrayList W0;
    public ArrayList X;
    public ArrayList X0;
    public SparseArray Y;
    public ArrayList Y0;
    public SparseArray Z;
    public ArrayList Z0;

    /* renamed from: a, reason: collision with root package name */
    public WebCleanListener f19058a;
    public ArrayList a0;
    public ArrayList a1;
    public boolean b;
    public ArrayList b0;
    public ArrayList b1;

    /* renamed from: c, reason: collision with root package name */
    public boolean f19059c;
    public ArrayList c0;
    public ArrayList c1;
    public boolean d;
    public ArrayList d0;
    public ArrayList d1;
    public boolean e;
    public ArrayList e0;
    public ArrayList e1;
    public String f;
    public ArrayList f0;
    public ArrayList f1;
    public String g;
    public ArrayList g0;
    public ArrayList g1;
    public NotificationCompat.Builder h;
    public ArrayList h0;
    public ArrayList h1;
    public long i;
    public SparseArray i0;
    public ArrayList i1;
    public boolean j;
    public SparseArray j0;
    public ArrayList j1;
    public String k;
    public SparseArray k0;
    public String k1;
    public String l;
    public SparseArray l0;
    public String l1;
    public String m;
    public SparseArray m0;
    public String m1;
    public List n;
    public SparseArray n0;
    public String n1;
    public boolean o;
    public SparseArray o0;
    public boolean p;
    public SparseArray p0;
    public ArrayList q;
    public SparseArray q0;
    public List r;
    public SparseArray r0;
    public ArrayList s;
    public SparseArray s0;
    public ArrayList t;
    public SparseArray t0;
    public ArrayList u;
    public SparseArray u0;
    public ArrayList v;
    public SparseArray v0;
    public ArrayList w;
    public SparseArray w0;
    public ArrayList x;
    public SparseArray x0;
    public ArrayList y;
    public ArrayList y0;
    public ArrayList z;
    public ArrayList z0;

    /* loaded from: classes3.dex */
    public static class CmdItem {

        /* renamed from: a, reason: collision with root package name */
        public String f19061a;
        public List b;
    }

    /* loaded from: classes3.dex */
    public static class DftEleItem {

        /* renamed from: a, reason: collision with root package name */
        public String f19062a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public String f19063c;
    }

    /* loaded from: classes3.dex */
    public static class DftResItem {

        /* renamed from: a, reason: collision with root package name */
        public String f19064a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public int f19065c;
        public String d;
        public String e;
        public int f;
    }

    /* loaded from: classes3.dex */
    public static class DftSvrItem {

        /* renamed from: a, reason: collision with root package name */
        public String f19066a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public int f19067c;
        public DftResItem d;
    }

    /* loaded from: classes3.dex */
    public static class DocItem {

        /* renamed from: a, reason: collision with root package name */
        public String f19068a;
        public ArrayList b;

        /* renamed from: c, reason: collision with root package name */
        public ArrayList f19069c;
        public boolean d;
    }

    /* loaded from: classes3.dex */
    public static class EleItem {

        /* renamed from: a, reason: collision with root package name */
        public String f19070a;
        public String b;
    }

    /* loaded from: classes3.dex */
    public static class ExpItem {

        /* renamed from: a, reason: collision with root package name */
        public ArrayList f19071a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public String f19072c;
        public String d;
        public int e;
        public String f;
        public String g;
        public int h;
    }

    /* loaded from: classes3.dex */
    public static class FunItem {

        /* renamed from: a, reason: collision with root package name */
        public String f19073a;
        public String b;
    }

    /* loaded from: classes3.dex */
    public static class NorItem {

        /* renamed from: a, reason: collision with root package name */
        public ArrayList f19074a;
        public String b;
    }

    /* loaded from: classes3.dex */
    public static class PosItem {

        /* renamed from: a, reason: collision with root package name */
        public final int f19075a;
        public final int b;

        public PosItem(int i, int i2) {
            this.f19075a = i;
            this.b = i2;
        }
    }

    /* loaded from: classes3.dex */
    public static class ResItem {

        /* renamed from: a, reason: collision with root package name */
        public boolean f19076a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f19077c;
        public boolean d;
        public boolean e;
        public boolean f;
        public ArrayList g;
        public ArrayList h;
        public ArrayList i;
    }

    /* loaded from: classes3.dex */
    public static class ScrItem {

        /* renamed from: a, reason: collision with root package name */
        public String f19078a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public ArrayList f19079c;
    }

    /* loaded from: classes3.dex */
    public interface WebCleanListener {
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0028, code lost:
    
        if (r2 == (-1)) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x002b, code lost:
    
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0045, code lost:
    
        if (r0 != false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0044, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004a A[LOOP:0: B:9:0x0048->B:10:0x004a, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int A(java.lang.String r8) {
        /*
            r0 = -1
            if (r8 != 0) goto L4
            goto La
        L4:
            int r1 = r8.length()
            if (r1 != 0) goto Lb
        La:
            return r0
        Lb:
            int r2 = r8.length()
            r3 = 0
            if (r2 != 0) goto L14
        L12:
            r2 = r3
            goto L48
        L14:
            r4 = 1
            r5 = 4
            r6 = 46
            if (r2 <= r5) goto L2d
            java.lang.String r7 = ".com"
            boolean r7 = r8.endsWith(r7)
            if (r7 == 0) goto L2d
            int r2 = r2 + (-5)
            int r2 = r8.lastIndexOf(r6, r2)
            if (r2 != r0) goto L2b
            goto L12
        L2b:
            int r2 = r2 + r4
            goto L48
        L2d:
            int r2 = r8.lastIndexOf(r6)
        L31:
            int r7 = r2 + (-1)
            if (r7 <= 0) goto L44
            int r7 = r8.lastIndexOf(r6, r7)
            if (r7 != r0) goto L3c
            goto L44
        L3c:
            int r2 = r2 - r7
            if (r2 <= r5) goto L42
            r0 = r3
            r2 = r7
            goto L45
        L42:
            r2 = r7
            goto L31
        L44:
            r0 = r4
        L45:
            if (r0 == 0) goto L2b
            goto L12
        L48:
            if (r2 >= r1) goto L52
            char r0 = r8.charAt(r2)
            int r3 = r3 + r0
            int r2 = r2 + 1
            goto L48
        L52:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebClean.A(java.lang.String):int");
    }

    public static String C(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        StringBuilder D = D(null, str);
        String D0 = MainUtil.D0(str);
        if (!TextUtils.isEmpty(D0) && !D0.equals(str)) {
            D = D(D, D0);
        }
        return D.toString();
    }

    public static StringBuilder D(StringBuilder sb, String str) {
        if (sb == null) {
            sb = new StringBuilder();
        } else {
            sb.append(",");
        }
        a.z(sb, "[src*=\"", str, "\"],[srcset*=\"", str);
        sb.append("\"]");
        if (MainUtil.r(38, str)) {
            String replace = str.replace("&", "&amp;");
            sb.append(",[src*=\"");
            sb.append(replace);
            a.y(sb, "\"],[srcset*=\"", replace, "\"]");
        }
        return sb;
    }

    public static String E(Context context, String str) {
        if (context == null) {
            return null;
        }
        StringBuilder w = a.w("<!DOCTYPE html><html><head><meta charset=\"utf-8\"/><meta name='viewport' content='width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=5.0,user-scalable=yes'/><style>body{padding:0 16px;background:white;}p{font-size:14px;line-height:1.6;word-wrap:break-word;display:-webkit-box;-webkit-line-clamp:5;-webkit-box-orient:vertical;overflow:hidden;text-overflow:ellipsis;}#btn2{margin:13px auto;width:100%;height:40px;border:none;border-radius:8px;font-size:14px;color:black;background:#f8f8f8;}</style></head><body><h2>Link Blocked</h2><p>", str, "<br></p><button id='btn2'onclick='alert(\"sb:link_setting\")'>");
        w.append(context.getString(R.string.setting));
        w.append("</button></body></html>");
        return w.toString();
    }

    public static String H(int i, int i2, String str) {
        int a5 = MainUtil.a5(str, ' ', i, i2);
        if (a5 > i && a5 < i2) {
            return str.substring(i, a5);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0064 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0059 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0054 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.webkit.WebResourceResponse I(android.content.Context r11, android.webkit.WebResourceRequest r12, java.lang.String r13, int r14) {
        /*
            boolean r12 = r12.isForMainFrame()
            r0 = 0
            if (r12 == 0) goto Lbc
            r12 = 1
            java.lang.String r1 = "UTF-8"
            java.lang.String r2 = "text/html"
            if (r14 != r12) goto L70
            boolean r12 = android.text.TextUtils.isEmpty(r13)
            if (r12 == 0) goto L16
            goto Lbc
        L16:
            java.lang.String r9 = com.mycompany.app.main.MainUtil.J0()
            r8 = 0
            r10 = 0
            r5 = 0
            r6 = -1
            r7 = -1
            r3 = r11
            r4 = r13
            java.net.HttpURLConnection r11 = com.mycompany.app.main.MainUtil.T3(r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Exception -> L4a java.lang.OutOfMemoryError -> L4f
            java.io.InputStream r12 = r11.getInputStream()     // Catch: java.lang.Exception -> L45 java.lang.OutOfMemoryError -> L48
            java.io.ByteArrayOutputStream r13 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L43
            r13.<init>()     // Catch: java.lang.Throwable -> L43
            r14 = 1024(0x400, float:1.435E-42)
            byte[] r3 = new byte[r14]     // Catch: java.lang.Throwable -> L4d
        L32:
            r4 = 0
            int r5 = r12.read(r3, r4, r14)     // Catch: java.lang.Throwable -> L4d
            r6 = -1
            if (r5 == r6) goto L3e
            r13.write(r3, r4, r5)     // Catch: java.lang.Throwable -> L4d
            goto L32
        L3e:
            byte[] r14 = r13.toByteArray()     // Catch: java.lang.Throwable -> L4d
            goto L52
        L43:
            r13 = r0
            goto L4d
        L45:
            r12 = r0
        L46:
            r13 = r12
            goto L4d
        L48:
            r12 = r0
            goto L46
        L4a:
            r11 = r0
            r12 = r11
            goto L46
        L4d:
            r14 = r0
            goto L52
        L4f:
            r11 = r0
            r12 = r11
            goto L46
        L52:
            if (r13 == 0) goto L57
            r13.close()     // Catch: java.lang.Exception -> L57
        L57:
            if (r12 == 0) goto L5c
            r12.close()     // Catch: java.lang.Exception -> L5c
        L5c:
            if (r11 == 0) goto L61
            r11.disconnect()
        L61:
            if (r14 != 0) goto L64
            goto L6f
        L64:
            android.webkit.WebResourceResponse r11 = new android.webkit.WebResourceResponse     // Catch: java.lang.Throwable -> L6f
            java.io.ByteArrayInputStream r12 = new java.io.ByteArrayInputStream     // Catch: java.lang.Throwable -> L6f
            r12.<init>(r14)     // Catch: java.lang.Throwable -> L6f
            r11.<init>(r2, r1, r12)     // Catch: java.lang.Throwable -> L6f
            r0 = r11
        L6f:
            return r0
        L70:
            r4 = r13
            r11 = 2
            if (r14 != r11) goto Lbc
            boolean r11 = android.text.TextUtils.isEmpty(r4)
            if (r11 == 0) goto L7b
            goto Lbc
        L7b:
            java.lang.String r11 = com.mycompany.app.main.MainUtil.J0()
            org.jsoup.Connection r12 = org.jsoup.Jsoup.connect(r4)     // Catch: java.lang.Throwable -> Lbc
            org.jsoup.Connection r12 = r12.referrer(r4)     // Catch: java.lang.Throwable -> Lbc
            org.jsoup.Connection r11 = r12.userAgent(r11)     // Catch: java.lang.Throwable -> Lbc
            org.jsoup.nodes.Document r11 = r11.get()     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r12 = com.mycompany.app.main.MainUtil.L2()     // Catch: java.lang.Throwable -> Lbc
            boolean r13 = android.text.TextUtils.isEmpty(r12)     // Catch: java.lang.Throwable -> Lbc
            if (r13 != 0) goto La2
            org.jsoup.nodes.Element r12 = r11.selectFirst(r12)     // Catch: java.lang.Throwable -> Lbc
            if (r12 == 0) goto La2
            r12.remove()     // Catch: java.lang.Throwable -> Lbc
        La2:
            java.lang.String r11 = r11.html()     // Catch: java.lang.Throwable -> Lbc
            boolean r12 = android.text.TextUtils.isEmpty(r11)     // Catch: java.lang.Throwable -> Lbc
            if (r12 == 0) goto Lad
            goto Lbc
        Lad:
            android.webkit.WebResourceResponse r12 = new android.webkit.WebResourceResponse     // Catch: java.lang.Throwable -> Lbc
            java.io.ByteArrayInputStream r13 = new java.io.ByteArrayInputStream     // Catch: java.lang.Throwable -> Lbc
            byte[] r11 = r11.getBytes()     // Catch: java.lang.Throwable -> Lbc
            r13.<init>(r11)     // Catch: java.lang.Throwable -> Lbc
            r12.<init>(r2, r1, r13)     // Catch: java.lang.Throwable -> Lbc
            return r12
        Lbc:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebClean.I(android.content.Context, android.webkit.WebResourceRequest, java.lang.String, int):android.webkit.WebResourceResponse");
    }

    public static boolean K(String str, List list) {
        if (list != null && !list.isEmpty() && !TextUtils.isEmpty(str)) {
            try {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    String str2 = (String) it.next();
                    if (str2 != null && str.equals(str2)) {
                        return true;
                    }
                }
                return false;
            } catch (Exception unused) {
                return false;
            }
        }
        return false;
    }

    public static boolean N(int i, String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (i == 1) {
                return str.startsWith(str2);
            }
            if (i == 2) {
                return str.endsWith(str2);
            }
            if (i == 3) {
                return str.contains(str2);
            }
            if (i == 4) {
                return str.equals(str2);
            }
            return false;
        }
        return false;
    }

    public static boolean V(String str) {
        boolean startsWith;
        if (URLUtil.isNetworkUrl(str)) {
            String[][] strArr = DialogSetFilter.p0;
            if (TextUtils.isEmpty(str)) {
                startsWith = false;
            } else {
                startsWith = str.startsWith("https://raw.githubusercontent.com/AdguardTeam/");
            }
            if (startsWith) {
                for (int i = 0; i < 18; i++) {
                    if (str.equals(DialogSetFilter.C(i))) {
                        return true;
                    }
                }
            } else {
                for (int i2 = 0; i2 < 44; i2++) {
                    if (str.equals(DialogSetFilter.p0[i2][1])) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static boolean X(String str) {
        int i;
        int indexOf;
        if (str.startsWith("https://")) {
            i = 8;
        } else {
            if (str.startsWith("http://")) {
                i = 7;
            }
            return true;
        }
        int length = str.length();
        if (i >= length || (indexOf = str.indexOf(47, i)) <= i || indexOf >= length - 2) {
            return true;
        }
        return false;
    }

    public static boolean Y(String str) {
        if (!str.contains("cdn") && !str.contains("clean") && !str.contains("coin") && !str.contains("ddos") && !str.contains("link") && !str.contains("mart") && !str.contains("shop") && !str.contains("store") && !str.contains("syndicat") && !str.contains("track")) {
            int indexOf = str.indexOf("ad");
            if (indexOf != -1) {
                int length = str.length();
                do {
                    int i = indexOf - 1;
                    if (i >= 0 && i < str.length()) {
                        char charAt = str.charAt(i);
                        if ((charAt >= '0' && charAt <= '9') || ((charAt >= 'a' && charAt <= 'z') || (charAt >= 'A' && charAt <= 'Z'))) {
                            int i2 = indexOf + 2;
                            if (i2 < length) {
                                indexOf = str.indexOf("ad", i2);
                            } else {
                                return false;
                            }
                        } else {
                            return true;
                        }
                    } else {
                        return true;
                    }
                } while (indexOf != -1);
                return false;
            }
            return false;
        }
        return true;
    }

    public static boolean Z(String str) {
        int i;
        int length = str.length();
        if (length != 0) {
            if (length <= 800 && !str.startsWith("http://")) {
                String lowerCase = str.toLowerCase(Locale.US);
                if (!lowerCase.contains("camp") && !lowerCase.contains("click") && !lowerCase.contains("promo") && !lowerCase.contains("redir")) {
                    int indexOf = lowerCase.indexOf(63);
                    if (indexOf > 0 && (i = indexOf + 1) < length) {
                        if ((lowerCase.lastIndexOf(".php", indexOf) == -1 && (lowerCase.indexOf("=http", i) != -1 || lowerCase.indexOf(63, i) != -1)) || lowerCase.lastIndexOf("/prod/", indexOf) != -1 || lowerCase.indexOf("id=", i) != -1 || lowerCase.indexOf("key=", i) != -1 || lowerCase.indexOf("lik=", i) != -1 || lowerCase.indexOf("refer=", i) != -1 || lowerCase.indexOf("source=", i) != -1) {
                            return true;
                        }
                        return false;
                    }
                    return false;
                }
                return true;
            }
            return true;
        }
        return false;
    }

    public static boolean a0(String str, String str2) {
        if (!"naver.com".equals(str2) || TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("https://m.naver.com/shorts");
    }

    public static boolean b0(String str) {
        int i;
        if (str == null) {
            return false;
        }
        int indexOf = str.indexOf(58);
        while (indexOf != -1 && (i = indexOf + 1) < str.length() - 1) {
            if (str.startsWith("-abp-", i) || str.startsWith("contains", i) || str.startsWith("has", i) || str.startsWith("if", i) || str.startsWith("if-not", i) || str.startsWith("matches-css", i) || str.startsWith("matches-css-after", i) || str.startsWith("matches-css-before", i) || str.startsWith("nth-ancestor", i) || str.startsWith("properties", i) || str.startsWith("remove", i) || str.startsWith("style", i) || str.startsWith("subject", i) || str.startsWith("upward", i) || str.startsWith("xpath", i)) {
                return true;
            }
            indexOf = str.indexOf(58, i);
        }
        return false;
    }

    public static boolean c0(int i, String str) {
        if (str != null && i >= 0 && i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt < '0' || charAt > '9') {
                if (charAt < 'a' || charAt > 'z') {
                    if ((charAt >= 'A' && charAt <= 'Z') || charAt == '-' || charAt == '_') {
                        return true;
                    }
                    return false;
                }
                return true;
            }
            return true;
        }
        return false;
    }

    public static boolean d0(Context context, String str, String str2) {
        boolean z = false;
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        if (new File(str2).length() > 0) {
            return true;
        }
        MainFilterDown mainFilterDown = new MainFilterDown(null);
        String z1 = MainUtil.z1(str);
        if (!TextUtils.isEmpty(z1)) {
            z = mainFilterDown.b(context, z1, str);
        }
        if (!z) {
            return mainFilterDown.b(context, str, str);
        }
        return z;
    }

    public static boolean e0(String str) {
        if (str == null || TextUtils.isEmpty(str) || p('[', str) != p(']', str) || p(Typography.quote, str.replace('\'', Typography.quote)) % 2 != 0 || str.contains("+js") || b0(str)) {
            return false;
        }
        return true;
    }

    public static int p(char c2, String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        int length = str.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.charAt(i2) == c2) {
                i++;
            }
        }
        return i;
    }

    public static String r(String str) {
        int length;
        int i;
        int i2;
        if (str == null || (length = str.length()) == 0) {
            return null;
        }
        if (str.startsWith("https://")) {
            i = 8;
        } else if (str.startsWith("http://")) {
            i = 7;
        } else {
            return str;
        }
        if (i < length) {
            int indexOf = str.indexOf(47, i);
            if (indexOf >= i && (i2 = indexOf + 1) < length) {
                return str.substring(i2);
            }
            return str.substring(i);
        }
        return str;
    }

    public static int s(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (str.startsWith("//sg")) {
                return 1;
            }
            if (str.startsWith("//rg")) {
                return 2;
            }
            if (str.startsWith("//wg")) {
                return 3;
            }
            if (str.startsWith("//wk")) {
                return 4;
            }
            if (str.startsWith("//es")) {
                return 5;
            }
            if (str.startsWith("//eg")) {
                return 6;
            }
            if (str.startsWith("//ek")) {
                return 7;
            }
            return 0;
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a9, code lost:
    
        if (android.text.TextUtils.isEmpty(r5) != false) goto L54;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList s0(java.lang.String r5, int r6, boolean r7) {
        /*
            r0 = 0
            java.lang.String r5 = r5.substring(r0, r6)
            boolean r6 = android.text.TextUtils.isEmpty(r5)
            r1 = 0
            if (r6 == 0) goto Le
            goto Lab
        Le:
            java.lang.String r6 = ","
            if (r7 != 0) goto L51
            java.lang.String[] r6 = r5.split(r6)
            if (r6 == 0) goto L3d
            int r5 = r6.length
        L19:
            if (r0 >= r5) goto L3c
            r7 = r6[r0]
            if (r7 != 0) goto L20
            goto L39
        L20:
            java.lang.String r7 = r7.trim()
            java.lang.String r7 = com.mycompany.app.main.MainUtil.n1(r7)
            boolean r2 = android.text.TextUtils.isEmpty(r7)
            if (r2 == 0) goto L2f
            goto L39
        L2f:
            if (r1 != 0) goto L36
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
        L36:
            r1.add(r7)
        L39:
            int r0 = r0 + 1
            goto L19
        L3c:
            return r1
        L3d:
            java.lang.String r5 = com.mycompany.app.main.MainUtil.n1(r5)
            boolean r6 = android.text.TextUtils.isEmpty(r5)
            if (r6 == 0) goto L48
            goto Lab
        L48:
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            r6.add(r5)
            return r6
        L51:
            java.lang.String[] r6 = r5.split(r6)
            java.lang.String r7 = "~"
            r2 = 1
            if (r6 == 0) goto L90
            int r5 = r6.length
        L5b:
            if (r0 >= r5) goto L8f
            r3 = r6[r0]
            if (r3 != 0) goto L62
            goto L8c
        L62:
            java.lang.String r3 = r3.trim()
            java.lang.String r3 = com.mycompany.app.main.MainUtil.n1(r3)
            boolean r4 = android.text.TextUtils.isEmpty(r3)
            if (r4 == 0) goto L71
            goto L8c
        L71:
            boolean r4 = r3.startsWith(r7)
            if (r4 == 0) goto L82
            java.lang.String r3 = r3.substring(r2)
            boolean r4 = android.text.TextUtils.isEmpty(r3)
            if (r4 == 0) goto L82
            goto L8c
        L82:
            if (r1 != 0) goto L89
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
        L89:
            r1.add(r3)
        L8c:
            int r0 = r0 + 1
            goto L5b
        L8f:
            return r1
        L90:
            java.lang.String r5 = com.mycompany.app.main.MainUtil.n1(r5)
            boolean r6 = android.text.TextUtils.isEmpty(r5)
            if (r6 == 0) goto L9b
            goto Lab
        L9b:
            boolean r6 = r5.startsWith(r7)
            if (r6 == 0) goto Lac
            java.lang.String r5 = r5.substring(r2)
            boolean r6 = android.text.TextUtils.isEmpty(r5)
            if (r6 == 0) goto Lac
        Lab:
            return r1
        Lac:
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            r6.add(r5)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebClean.s0(java.lang.String, int, boolean):java.util.ArrayList");
    }

    public static StringBuilder y0(StringBuilder sb, String str) {
        if (TextUtils.isEmpty(str)) {
            return sb;
        }
        if (sb == null) {
            sb = new StringBuilder();
        }
        a.y(sb, "myRemImg('", str, "');");
        return sb;
    }

    public static void z0(WebView webView, String str) {
        String sb;
        if (webView != null) {
            String C = C(r(str));
            if (TextUtils.isEmpty(C)) {
                return;
            }
            if (TextUtils.isEmpty(C)) {
                sb = null;
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("function myRemImg(cmd){var ele=document.querySelector(cmd);if(!ele)return;var par=ele.parentNode;if(par){var pa2=par.parentNode;while(pa2&&(pa2.tagName!='HTML')&&(pa2.tagName!='BODY')&&(pa2.childElementCount==1)){ele=par;par=pa2;pa2=pa2.parentNode;}if(pa2&&(pa2.tagName!='HTML')&&(pa2.tagName!='BODY')){ele=par;par=pa2;}par.removeChild(ele);}else{ele.style.display='none';}}(function(){if(document.head){var ele=document.createElement('style');ele.innerText='");
                sb2.append(C);
                sb2.append("{display:none !important;}';document.head.appendChild(ele);}");
                StringBuilder y0 = y0(sb2, C);
                y0.append("})();");
                sb = y0.toString();
            }
            MainUtil.I(webView, sb, true);
        }
    }

    public final void A0(String str) {
        WebCleanListener webCleanListener;
        try {
            ArrayList arrayList = this.w;
            StringBuilder sb = null;
            this.w = null;
            if (arrayList != null && !arrayList.isEmpty()) {
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    String str2 = (String) obj;
                    if (!TextUtils.isEmpty(str2)) {
                        if (sb == null) {
                            sb = new StringBuilder();
                        } else {
                            sb.append(",");
                        }
                        sb.append(str2);
                    }
                }
                if (sb != null) {
                    String g0 = g0(str, sb.toString(), false);
                    if (!TextUtils.isEmpty(g0) && (webCleanListener = this.f19058a) != null) {
                        WebViewActivity webViewActivity = WebViewActivity.this;
                        if (webViewActivity.I2 != null && MainUtil.q5(str, MainUtil.q0(webViewActivity.B8))) {
                            MainUtil.I(webViewActivity.I2, g0, true);
                            webViewActivity.ea(1, false);
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    public final String B() {
        ArrayList arrayList;
        if (!this.N && !this.p && !TextUtils.isEmpty(this.n1) && (arrayList = this.c1) != null) {
            int size = arrayList.size();
            int i = 0;
            String str = null;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                String str2 = (String) obj;
                if (!this.N && !this.p && !TextUtils.isEmpty(this.n1) && this.c1 != null) {
                    if (!TextUtils.isEmpty(str2)) {
                        str = w(this.l1, this.n1, str2, null, null, false);
                        if (!TextUtils.isEmpty(str)) {
                            break;
                        }
                    }
                }
            }
            return str;
        }
        return null;
    }

    public final void B0(Context context, int i, int i2) {
        NotificationCompat.Builder builder;
        if (context != null && (builder = this.h) != null && i2 < i) {
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - this.i >= 1000) {
                this.i = currentTimeMillis;
                NotificationManager q = MainApp.q(context);
                if (q == null) {
                    return;
                }
                builder.f = NotificationCompat.Builder.c(i2 + " / " + i);
                builder.f(i, i2, false);
                q.notify(2147483638, builder.b());
            }
        }
    }

    public final List F(int i, String str) {
        int b5;
        char charAt;
        if (str != null && i != 0) {
            try {
                int indexOf = str.indexOf(60);
                int i2 = 0;
                while (i2 <= indexOf) {
                    int i3 = indexOf + 1;
                    if (i3 >= i) {
                        break;
                    }
                    if (!this.p) {
                        if (str.startsWith("/", i3) || (charAt = str.charAt(i3)) < 'a' || charAt > 'z') {
                            i3 = -1;
                        }
                        int i4 = indexOf + 2;
                        int indexOf2 = str.indexOf(60, i4);
                        if (i3 != -1) {
                            int indexOf3 = str.indexOf(62, i4);
                            if (indexOf2 != -1 || indexOf3 != -1) {
                                if (indexOf2 != -1) {
                                    if (indexOf3 == -1) {
                                        indexOf3 = indexOf2;
                                    } else {
                                        indexOf3 = Math.min(indexOf2, indexOf3);
                                    }
                                }
                                if (i3 < indexOf3 && indexOf3 < i && i3 < (b5 = MainUtil.b5(str, i3, indexOf3, "=\"")) && b5 < indexOf3) {
                                    if (this.q == null) {
                                        this.q = new ArrayList();
                                    }
                                    this.q.add(new PosItem(i3, indexOf3));
                                }
                            }
                        }
                        i2 = i4;
                        indexOf = indexOf2;
                    } else {
                        return null;
                    }
                }
                ArrayList arrayList = this.q;
                if (arrayList != null && !arrayList.isEmpty()) {
                    return this.q;
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public final List G(SparseArray sparseArray, int i) {
        if (!this.N) {
            try {
                return (List) sparseArray.get(i);
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public final String J(String str) {
        if (!MainUtil.q5(this.f, str)) {
            this.f = str;
            this.g = MainUtil.q0(str);
        }
        return this.g;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0050 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean L(java.lang.String r7, java.lang.String r8, java.util.ArrayList r9) {
        /*
            r6 = this;
            r0 = 0
            if (r9 == 0) goto L70
            boolean r1 = r9.isEmpty()
            if (r1 == 0) goto Lb
            goto L70
        Lb:
            int r1 = r9.size()
            r2 = r0
        L10:
            if (r2 >= r1) goto L70
            java.lang.Object r3 = r9.get(r2)
            int r2 = r2 + 1
            com.mycompany.app.web.WebClean$DftResItem r3 = (com.mycompany.app.web.WebClean.DftResItem) r3
            boolean r4 = r6.N
            if (r4 == 0) goto L1f
            goto L70
        L1f:
            if (r3 != 0) goto L22
            goto L10
        L22:
            java.lang.String r4 = r3.f19064a
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 != 0) goto L35
            java.lang.String r4 = r3.f19064a
            int r5 = r3.f19065c
            boolean r4 = N(r5, r7, r4)
            if (r4 != 0) goto L48
            goto L10
        L35:
            java.lang.String r4 = r3.b
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 != 0) goto L10
            java.lang.String r4 = r3.b
            int r5 = r3.f19065c
            boolean r4 = N(r5, r8, r4)
            if (r4 != 0) goto L48
            goto L10
        L48:
            java.lang.String r4 = r3.d
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 != 0) goto L5b
            java.lang.String r4 = r3.d
            int r3 = r3.f
            boolean r3 = N(r3, r7, r4)
            if (r3 != 0) goto L6e
            goto L10
        L5b:
            java.lang.String r4 = r3.e
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 != 0) goto L6e
            java.lang.String r4 = r3.e
            int r3 = r3.f
            boolean r3 = N(r3, r8, r4)
            if (r3 != 0) goto L6e
            goto L10
        L6e:
            r7 = 1
            return r7
        L70:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebClean.L(java.lang.String, java.lang.String, java.util.ArrayList):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0087 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x007c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x009b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean M(java.lang.String r7, java.lang.String r8, java.lang.String r9, java.lang.String r10, java.util.ArrayList r11) {
        /*
            r6 = this;
            r0 = 0
            if (r11 == 0) goto L9d
            boolean r1 = r11.isEmpty()
            if (r1 == 0) goto Lb
            goto L9d
        Lb:
            int r1 = r11.size()
            r2 = r0
        L10:
            if (r2 >= r1) goto L9d
            java.lang.Object r3 = r11.get(r2)
            int r2 = r2 + 1
            com.mycompany.app.web.WebClean$DftSvrItem r3 = (com.mycompany.app.web.WebClean.DftSvrItem) r3
            boolean r4 = r6.N
            if (r4 == 0) goto L20
            goto L9d
        L20:
            if (r3 != 0) goto L23
            goto L10
        L23:
            java.lang.String r4 = r3.f19066a
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 != 0) goto L36
            java.lang.String r4 = r3.f19066a
            int r5 = r3.f19067c
            boolean r4 = N(r5, r8, r4)
            if (r4 != 0) goto L49
            goto L10
        L36:
            java.lang.String r4 = r3.b
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 != 0) goto L10
            java.lang.String r4 = r3.b
            int r5 = r3.f19067c
            boolean r4 = N(r5, r7, r4)
            if (r4 != 0) goto L49
            goto L10
        L49:
            com.mycompany.app.web.WebClean$DftResItem r3 = r3.d
            if (r3 != 0) goto L4e
            goto L9b
        L4e:
            java.lang.String r4 = r3.f19064a
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 != 0) goto L61
            java.lang.String r4 = r3.f19064a
            int r5 = r3.f19065c
            boolean r4 = N(r5, r9, r4)
            if (r4 != 0) goto L74
            goto L10
        L61:
            java.lang.String r4 = r3.b
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 != 0) goto L10
            java.lang.String r4 = r3.b
            int r5 = r3.f19065c
            boolean r4 = N(r5, r10, r4)
            if (r4 != 0) goto L74
            goto L10
        L74:
            java.lang.String r4 = r3.d
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 != 0) goto L87
            java.lang.String r4 = r3.d
            int r3 = r3.f
            boolean r3 = N(r3, r9, r4)
            if (r3 != 0) goto L9b
            goto L10
        L87:
            java.lang.String r4 = r3.e
            boolean r4 = android.text.TextUtils.isEmpty(r4)
            if (r4 != 0) goto L9b
            java.lang.String r4 = r3.e
            int r3 = r3.f
            boolean r3 = N(r3, r10, r4)
            if (r3 != 0) goto L9b
            goto L10
        L9b:
            r7 = 1
            return r7
        L9d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebClean.M(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.util.ArrayList):boolean");
    }

    public final boolean O(ArrayList arrayList, String str) {
        int length;
        int length2;
        if (arrayList != null && !arrayList.isEmpty() && (length = str.length()) != 0) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                String str2 = (String) obj;
                if (this.N) {
                    break;
                }
                if (str2 != null && (length2 = str2.length()) != 0) {
                    if (length > length2) {
                        if (str.contains(str2)) {
                            return true;
                        }
                    } else if (length < length2) {
                        if (str2.contains(str)) {
                            return true;
                        }
                    } else if (str.equals(str2)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean P(String str, List list) {
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                if (!this.N) {
                    if (str.endsWith(str2)) {
                        return true;
                    }
                } else {
                    return false;
                }
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0019, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0093, code lost:
    
        r11 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x00a6, code lost:
    
        if (r8 != (-1)) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x008e, code lost:
    
        if (r8 != (-1)) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0090, code lost:
    
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x00c1, code lost:
    
        if (r14 == false) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x00c5, code lost:
    
        if (r7.f == false) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x00d1, code lost:
    
        if (r7.e == false) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x00d7, code lost:
    
        if (c0(r8, r20) == false) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x00cb, code lost:
    
        if (r8 == r20.length()) goto L109;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean Q(java.lang.String r19, java.lang.String r20, boolean r21, java.util.ArrayList r22) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebClean.Q(java.lang.String, java.lang.String, boolean, java.util.ArrayList):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00f4 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean R(java.lang.String r17, java.lang.String r18, java.lang.String r19, int r20, boolean r21, java.util.List r22) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebClean.R(java.lang.String, java.lang.String, java.lang.String, int, boolean, java.util.List):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0132 A[Catch: Exception | OutOfMemoryError -> 0x02d8, TryCatch #0 {Exception | OutOfMemoryError -> 0x02d8, blocks: (B:12:0x0024, B:17:0x002c, B:21:0x0039, B:24:0x0046, B:26:0x0050, B:27:0x005d, B:29:0x0068, B:30:0x006c, B:31:0x0073, B:36:0x0089, B:38:0x008d, B:42:0x009d, B:44:0x00a1, B:49:0x00ad, B:51:0x00b1, B:56:0x00bd, B:60:0x00c5, B:62:0x00c9, B:67:0x00d5, B:71:0x00dd, B:73:0x00e1, B:78:0x00ed, B:82:0x00f5, B:84:0x00f9, B:89:0x0105, B:94:0x010f, B:96:0x0113, B:101:0x011f, B:105:0x012e, B:107:0x0132, B:112:0x013e, B:117:0x0149, B:119:0x014d, B:124:0x0159, B:128:0x0162, B:130:0x0166, B:135:0x0172, B:141:0x0183, B:143:0x0187, B:147:0x018f, B:149:0x0193, B:154:0x019d, B:160:0x01ad, B:162:0x01b3, B:165:0x01bb, B:168:0x01c3, B:170:0x01c7, B:174:0x01d1, B:176:0x01d6, B:179:0x01e4, B:181:0x01e8, B:185:0x01f2, B:187:0x01f6, B:192:0x0202, B:195:0x020a, B:197:0x020e, B:202:0x021a, B:207:0x0226, B:209:0x022a, B:214:0x0236, B:217:0x023e, B:219:0x0242, B:224:0x024e, B:228:0x0258, B:230:0x025c, B:235:0x0268, B:238:0x0275, B:240:0x0279, B:245:0x0284, B:250:0x0290, B:252:0x0294, B:257:0x029f, B:260:0x02a7, B:262:0x02ab, B:267:0x02b6, B:272:0x02c2, B:274:0x02c6, B:277:0x02cd, B:279:0x02d1, B:290:0x007d, B:294:0x006e, B:295:0x0053, B:297:0x005b), top: B:11:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0149 A[Catch: Exception | OutOfMemoryError -> 0x02d8, TryCatch #0 {Exception | OutOfMemoryError -> 0x02d8, blocks: (B:12:0x0024, B:17:0x002c, B:21:0x0039, B:24:0x0046, B:26:0x0050, B:27:0x005d, B:29:0x0068, B:30:0x006c, B:31:0x0073, B:36:0x0089, B:38:0x008d, B:42:0x009d, B:44:0x00a1, B:49:0x00ad, B:51:0x00b1, B:56:0x00bd, B:60:0x00c5, B:62:0x00c9, B:67:0x00d5, B:71:0x00dd, B:73:0x00e1, B:78:0x00ed, B:82:0x00f5, B:84:0x00f9, B:89:0x0105, B:94:0x010f, B:96:0x0113, B:101:0x011f, B:105:0x012e, B:107:0x0132, B:112:0x013e, B:117:0x0149, B:119:0x014d, B:124:0x0159, B:128:0x0162, B:130:0x0166, B:135:0x0172, B:141:0x0183, B:143:0x0187, B:147:0x018f, B:149:0x0193, B:154:0x019d, B:160:0x01ad, B:162:0x01b3, B:165:0x01bb, B:168:0x01c3, B:170:0x01c7, B:174:0x01d1, B:176:0x01d6, B:179:0x01e4, B:181:0x01e8, B:185:0x01f2, B:187:0x01f6, B:192:0x0202, B:195:0x020a, B:197:0x020e, B:202:0x021a, B:207:0x0226, B:209:0x022a, B:214:0x0236, B:217:0x023e, B:219:0x0242, B:224:0x024e, B:228:0x0258, B:230:0x025c, B:235:0x0268, B:238:0x0275, B:240:0x0279, B:245:0x0284, B:250:0x0290, B:252:0x0294, B:257:0x029f, B:260:0x02a7, B:262:0x02ab, B:267:0x02b6, B:272:0x02c2, B:274:0x02c6, B:277:0x02cd, B:279:0x02d1, B:290:0x007d, B:294:0x006e, B:295:0x0053, B:297:0x005b), top: B:11:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0166 A[Catch: Exception | OutOfMemoryError -> 0x02d8, TryCatch #0 {Exception | OutOfMemoryError -> 0x02d8, blocks: (B:12:0x0024, B:17:0x002c, B:21:0x0039, B:24:0x0046, B:26:0x0050, B:27:0x005d, B:29:0x0068, B:30:0x006c, B:31:0x0073, B:36:0x0089, B:38:0x008d, B:42:0x009d, B:44:0x00a1, B:49:0x00ad, B:51:0x00b1, B:56:0x00bd, B:60:0x00c5, B:62:0x00c9, B:67:0x00d5, B:71:0x00dd, B:73:0x00e1, B:78:0x00ed, B:82:0x00f5, B:84:0x00f9, B:89:0x0105, B:94:0x010f, B:96:0x0113, B:101:0x011f, B:105:0x012e, B:107:0x0132, B:112:0x013e, B:117:0x0149, B:119:0x014d, B:124:0x0159, B:128:0x0162, B:130:0x0166, B:135:0x0172, B:141:0x0183, B:143:0x0187, B:147:0x018f, B:149:0x0193, B:154:0x019d, B:160:0x01ad, B:162:0x01b3, B:165:0x01bb, B:168:0x01c3, B:170:0x01c7, B:174:0x01d1, B:176:0x01d6, B:179:0x01e4, B:181:0x01e8, B:185:0x01f2, B:187:0x01f6, B:192:0x0202, B:195:0x020a, B:197:0x020e, B:202:0x021a, B:207:0x0226, B:209:0x022a, B:214:0x0236, B:217:0x023e, B:219:0x0242, B:224:0x024e, B:228:0x0258, B:230:0x025c, B:235:0x0268, B:238:0x0275, B:240:0x0279, B:245:0x0284, B:250:0x0290, B:252:0x0294, B:257:0x029f, B:260:0x02a7, B:262:0x02ab, B:267:0x02b6, B:272:0x02c2, B:274:0x02c6, B:277:0x02cd, B:279:0x02d1, B:290:0x007d, B:294:0x006e, B:295:0x0053, B:297:0x005b), top: B:11:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x019d A[Catch: Exception | OutOfMemoryError -> 0x02d8, TryCatch #0 {Exception | OutOfMemoryError -> 0x02d8, blocks: (B:12:0x0024, B:17:0x002c, B:21:0x0039, B:24:0x0046, B:26:0x0050, B:27:0x005d, B:29:0x0068, B:30:0x006c, B:31:0x0073, B:36:0x0089, B:38:0x008d, B:42:0x009d, B:44:0x00a1, B:49:0x00ad, B:51:0x00b1, B:56:0x00bd, B:60:0x00c5, B:62:0x00c9, B:67:0x00d5, B:71:0x00dd, B:73:0x00e1, B:78:0x00ed, B:82:0x00f5, B:84:0x00f9, B:89:0x0105, B:94:0x010f, B:96:0x0113, B:101:0x011f, B:105:0x012e, B:107:0x0132, B:112:0x013e, B:117:0x0149, B:119:0x014d, B:124:0x0159, B:128:0x0162, B:130:0x0166, B:135:0x0172, B:141:0x0183, B:143:0x0187, B:147:0x018f, B:149:0x0193, B:154:0x019d, B:160:0x01ad, B:162:0x01b3, B:165:0x01bb, B:168:0x01c3, B:170:0x01c7, B:174:0x01d1, B:176:0x01d6, B:179:0x01e4, B:181:0x01e8, B:185:0x01f2, B:187:0x01f6, B:192:0x0202, B:195:0x020a, B:197:0x020e, B:202:0x021a, B:207:0x0226, B:209:0x022a, B:214:0x0236, B:217:0x023e, B:219:0x0242, B:224:0x024e, B:228:0x0258, B:230:0x025c, B:235:0x0268, B:238:0x0275, B:240:0x0279, B:245:0x0284, B:250:0x0290, B:252:0x0294, B:257:0x029f, B:260:0x02a7, B:262:0x02ab, B:267:0x02b6, B:272:0x02c2, B:274:0x02c6, B:277:0x02cd, B:279:0x02d1, B:290:0x007d, B:294:0x006e, B:295:0x0053, B:297:0x005b), top: B:11:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x01d1 A[Catch: Exception | OutOfMemoryError -> 0x02d8, TryCatch #0 {Exception | OutOfMemoryError -> 0x02d8, blocks: (B:12:0x0024, B:17:0x002c, B:21:0x0039, B:24:0x0046, B:26:0x0050, B:27:0x005d, B:29:0x0068, B:30:0x006c, B:31:0x0073, B:36:0x0089, B:38:0x008d, B:42:0x009d, B:44:0x00a1, B:49:0x00ad, B:51:0x00b1, B:56:0x00bd, B:60:0x00c5, B:62:0x00c9, B:67:0x00d5, B:71:0x00dd, B:73:0x00e1, B:78:0x00ed, B:82:0x00f5, B:84:0x00f9, B:89:0x0105, B:94:0x010f, B:96:0x0113, B:101:0x011f, B:105:0x012e, B:107:0x0132, B:112:0x013e, B:117:0x0149, B:119:0x014d, B:124:0x0159, B:128:0x0162, B:130:0x0166, B:135:0x0172, B:141:0x0183, B:143:0x0187, B:147:0x018f, B:149:0x0193, B:154:0x019d, B:160:0x01ad, B:162:0x01b3, B:165:0x01bb, B:168:0x01c3, B:170:0x01c7, B:174:0x01d1, B:176:0x01d6, B:179:0x01e4, B:181:0x01e8, B:185:0x01f2, B:187:0x01f6, B:192:0x0202, B:195:0x020a, B:197:0x020e, B:202:0x021a, B:207:0x0226, B:209:0x022a, B:214:0x0236, B:217:0x023e, B:219:0x0242, B:224:0x024e, B:228:0x0258, B:230:0x025c, B:235:0x0268, B:238:0x0275, B:240:0x0279, B:245:0x0284, B:250:0x0290, B:252:0x0294, B:257:0x029f, B:260:0x02a7, B:262:0x02ab, B:267:0x02b6, B:272:0x02c2, B:274:0x02c6, B:277:0x02cd, B:279:0x02d1, B:290:0x007d, B:294:0x006e, B:295:0x0053, B:297:0x005b), top: B:11:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x01f2 A[Catch: Exception | OutOfMemoryError -> 0x02d8, TryCatch #0 {Exception | OutOfMemoryError -> 0x02d8, blocks: (B:12:0x0024, B:17:0x002c, B:21:0x0039, B:24:0x0046, B:26:0x0050, B:27:0x005d, B:29:0x0068, B:30:0x006c, B:31:0x0073, B:36:0x0089, B:38:0x008d, B:42:0x009d, B:44:0x00a1, B:49:0x00ad, B:51:0x00b1, B:56:0x00bd, B:60:0x00c5, B:62:0x00c9, B:67:0x00d5, B:71:0x00dd, B:73:0x00e1, B:78:0x00ed, B:82:0x00f5, B:84:0x00f9, B:89:0x0105, B:94:0x010f, B:96:0x0113, B:101:0x011f, B:105:0x012e, B:107:0x0132, B:112:0x013e, B:117:0x0149, B:119:0x014d, B:124:0x0159, B:128:0x0162, B:130:0x0166, B:135:0x0172, B:141:0x0183, B:143:0x0187, B:147:0x018f, B:149:0x0193, B:154:0x019d, B:160:0x01ad, B:162:0x01b3, B:165:0x01bb, B:168:0x01c3, B:170:0x01c7, B:174:0x01d1, B:176:0x01d6, B:179:0x01e4, B:181:0x01e8, B:185:0x01f2, B:187:0x01f6, B:192:0x0202, B:195:0x020a, B:197:0x020e, B:202:0x021a, B:207:0x0226, B:209:0x022a, B:214:0x0236, B:217:0x023e, B:219:0x0242, B:224:0x024e, B:228:0x0258, B:230:0x025c, B:235:0x0268, B:238:0x0275, B:240:0x0279, B:245:0x0284, B:250:0x0290, B:252:0x0294, B:257:0x029f, B:260:0x02a7, B:262:0x02ab, B:267:0x02b6, B:272:0x02c2, B:274:0x02c6, B:277:0x02cd, B:279:0x02d1, B:290:0x007d, B:294:0x006e, B:295:0x0053, B:297:0x005b), top: B:11:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0258 A[Catch: Exception | OutOfMemoryError -> 0x02d8, TryCatch #0 {Exception | OutOfMemoryError -> 0x02d8, blocks: (B:12:0x0024, B:17:0x002c, B:21:0x0039, B:24:0x0046, B:26:0x0050, B:27:0x005d, B:29:0x0068, B:30:0x006c, B:31:0x0073, B:36:0x0089, B:38:0x008d, B:42:0x009d, B:44:0x00a1, B:49:0x00ad, B:51:0x00b1, B:56:0x00bd, B:60:0x00c5, B:62:0x00c9, B:67:0x00d5, B:71:0x00dd, B:73:0x00e1, B:78:0x00ed, B:82:0x00f5, B:84:0x00f9, B:89:0x0105, B:94:0x010f, B:96:0x0113, B:101:0x011f, B:105:0x012e, B:107:0x0132, B:112:0x013e, B:117:0x0149, B:119:0x014d, B:124:0x0159, B:128:0x0162, B:130:0x0166, B:135:0x0172, B:141:0x0183, B:143:0x0187, B:147:0x018f, B:149:0x0193, B:154:0x019d, B:160:0x01ad, B:162:0x01b3, B:165:0x01bb, B:168:0x01c3, B:170:0x01c7, B:174:0x01d1, B:176:0x01d6, B:179:0x01e4, B:181:0x01e8, B:185:0x01f2, B:187:0x01f6, B:192:0x0202, B:195:0x020a, B:197:0x020e, B:202:0x021a, B:207:0x0226, B:209:0x022a, B:214:0x0236, B:217:0x023e, B:219:0x0242, B:224:0x024e, B:228:0x0258, B:230:0x025c, B:235:0x0268, B:238:0x0275, B:240:0x0279, B:245:0x0284, B:250:0x0290, B:252:0x0294, B:257:0x029f, B:260:0x02a7, B:262:0x02ab, B:267:0x02b6, B:272:0x02c2, B:274:0x02c6, B:277:0x02cd, B:279:0x02d1, B:290:0x007d, B:294:0x006e, B:295:0x0053, B:297:0x005b), top: B:11:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0279 A[Catch: Exception | OutOfMemoryError -> 0x02d8, TryCatch #0 {Exception | OutOfMemoryError -> 0x02d8, blocks: (B:12:0x0024, B:17:0x002c, B:21:0x0039, B:24:0x0046, B:26:0x0050, B:27:0x005d, B:29:0x0068, B:30:0x006c, B:31:0x0073, B:36:0x0089, B:38:0x008d, B:42:0x009d, B:44:0x00a1, B:49:0x00ad, B:51:0x00b1, B:56:0x00bd, B:60:0x00c5, B:62:0x00c9, B:67:0x00d5, B:71:0x00dd, B:73:0x00e1, B:78:0x00ed, B:82:0x00f5, B:84:0x00f9, B:89:0x0105, B:94:0x010f, B:96:0x0113, B:101:0x011f, B:105:0x012e, B:107:0x0132, B:112:0x013e, B:117:0x0149, B:119:0x014d, B:124:0x0159, B:128:0x0162, B:130:0x0166, B:135:0x0172, B:141:0x0183, B:143:0x0187, B:147:0x018f, B:149:0x0193, B:154:0x019d, B:160:0x01ad, B:162:0x01b3, B:165:0x01bb, B:168:0x01c3, B:170:0x01c7, B:174:0x01d1, B:176:0x01d6, B:179:0x01e4, B:181:0x01e8, B:185:0x01f2, B:187:0x01f6, B:192:0x0202, B:195:0x020a, B:197:0x020e, B:202:0x021a, B:207:0x0226, B:209:0x022a, B:214:0x0236, B:217:0x023e, B:219:0x0242, B:224:0x024e, B:228:0x0258, B:230:0x025c, B:235:0x0268, B:238:0x0275, B:240:0x0279, B:245:0x0284, B:250:0x0290, B:252:0x0294, B:257:0x029f, B:260:0x02a7, B:262:0x02ab, B:267:0x02b6, B:272:0x02c2, B:274:0x02c6, B:277:0x02cd, B:279:0x02d1, B:290:0x007d, B:294:0x006e, B:295:0x0053, B:297:0x005b), top: B:11:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:249:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:284:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:289:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0089 A[Catch: Exception | OutOfMemoryError -> 0x02d8, TryCatch #0 {Exception | OutOfMemoryError -> 0x02d8, blocks: (B:12:0x0024, B:17:0x002c, B:21:0x0039, B:24:0x0046, B:26:0x0050, B:27:0x005d, B:29:0x0068, B:30:0x006c, B:31:0x0073, B:36:0x0089, B:38:0x008d, B:42:0x009d, B:44:0x00a1, B:49:0x00ad, B:51:0x00b1, B:56:0x00bd, B:60:0x00c5, B:62:0x00c9, B:67:0x00d5, B:71:0x00dd, B:73:0x00e1, B:78:0x00ed, B:82:0x00f5, B:84:0x00f9, B:89:0x0105, B:94:0x010f, B:96:0x0113, B:101:0x011f, B:105:0x012e, B:107:0x0132, B:112:0x013e, B:117:0x0149, B:119:0x014d, B:124:0x0159, B:128:0x0162, B:130:0x0166, B:135:0x0172, B:141:0x0183, B:143:0x0187, B:147:0x018f, B:149:0x0193, B:154:0x019d, B:160:0x01ad, B:162:0x01b3, B:165:0x01bb, B:168:0x01c3, B:170:0x01c7, B:174:0x01d1, B:176:0x01d6, B:179:0x01e4, B:181:0x01e8, B:185:0x01f2, B:187:0x01f6, B:192:0x0202, B:195:0x020a, B:197:0x020e, B:202:0x021a, B:207:0x0226, B:209:0x022a, B:214:0x0236, B:217:0x023e, B:219:0x0242, B:224:0x024e, B:228:0x0258, B:230:0x025c, B:235:0x0268, B:238:0x0275, B:240:0x0279, B:245:0x0284, B:250:0x0290, B:252:0x0294, B:257:0x029f, B:260:0x02a7, B:262:0x02ab, B:267:0x02b6, B:272:0x02c2, B:274:0x02c6, B:277:0x02cd, B:279:0x02d1, B:290:0x007d, B:294:0x006e, B:295:0x0053, B:297:0x005b), top: B:11:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ad A[Catch: Exception | OutOfMemoryError -> 0x02d8, TryCatch #0 {Exception | OutOfMemoryError -> 0x02d8, blocks: (B:12:0x0024, B:17:0x002c, B:21:0x0039, B:24:0x0046, B:26:0x0050, B:27:0x005d, B:29:0x0068, B:30:0x006c, B:31:0x0073, B:36:0x0089, B:38:0x008d, B:42:0x009d, B:44:0x00a1, B:49:0x00ad, B:51:0x00b1, B:56:0x00bd, B:60:0x00c5, B:62:0x00c9, B:67:0x00d5, B:71:0x00dd, B:73:0x00e1, B:78:0x00ed, B:82:0x00f5, B:84:0x00f9, B:89:0x0105, B:94:0x010f, B:96:0x0113, B:101:0x011f, B:105:0x012e, B:107:0x0132, B:112:0x013e, B:117:0x0149, B:119:0x014d, B:124:0x0159, B:128:0x0162, B:130:0x0166, B:135:0x0172, B:141:0x0183, B:143:0x0187, B:147:0x018f, B:149:0x0193, B:154:0x019d, B:160:0x01ad, B:162:0x01b3, B:165:0x01bb, B:168:0x01c3, B:170:0x01c7, B:174:0x01d1, B:176:0x01d6, B:179:0x01e4, B:181:0x01e8, B:185:0x01f2, B:187:0x01f6, B:192:0x0202, B:195:0x020a, B:197:0x020e, B:202:0x021a, B:207:0x0226, B:209:0x022a, B:214:0x0236, B:217:0x023e, B:219:0x0242, B:224:0x024e, B:228:0x0258, B:230:0x025c, B:235:0x0268, B:238:0x0275, B:240:0x0279, B:245:0x0284, B:250:0x0290, B:252:0x0294, B:257:0x029f, B:260:0x02a7, B:262:0x02ab, B:267:0x02b6, B:272:0x02c2, B:274:0x02c6, B:277:0x02cd, B:279:0x02d1, B:290:0x007d, B:294:0x006e, B:295:0x0053, B:297:0x005b), top: B:11:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x011b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean S(java.lang.String r13, java.lang.String r14, java.lang.String r15, java.lang.String r16, boolean r17) {
        /*
            Method dump skipped, instructions count: 730
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebClean.S(java.lang.String, java.lang.String, java.lang.String, java.lang.String, boolean):boolean");
    }

    public final boolean T(String str, String str2) {
        try {
            HashMap hashMap = this.E;
            if (hashMap != null && !hashMap.isEmpty()) {
                String S6 = MainUtil.S6(str);
                if (!TextUtils.isEmpty(S6)) {
                    return K(str2, (List) this.E.get(S6));
                }
                return false;
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public final boolean U(String str, String str2) {
        try {
            HashMap hashMap = this.E;
            if (hashMap != null && !hashMap.isEmpty() && !TextUtils.isEmpty(str)) {
                return K(str2, (List) this.E.get(str));
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public final boolean W(String str) {
        if (str.equals(this.k) && this.o) {
            return true;
        }
        this.k = str;
        this.o = false;
        ArrayList arrayList = this.x;
        if (arrayList != null) {
            try {
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    DocItem docItem = (DocItem) obj;
                    if (docItem != null && str.equals(docItem.f19068a)) {
                        boolean z = docItem.d;
                        this.o = z;
                        return z;
                    }
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r7v1, types: [com.mycompany.app.web.WebClean$CmdItem, java.lang.Object] */
    public final void a(String str, String str2) {
        CmdItem cmdItem;
        if (!TextUtils.isEmpty(str2)) {
            try {
                ArrayList arrayList = this.D;
                if (arrayList == null) {
                    this.D = new ArrayList();
                } else {
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        cmdItem = (CmdItem) obj;
                        if (cmdItem != null && str.equals(cmdItem.f19061a)) {
                            break;
                        }
                    }
                }
                cmdItem = null;
                if (cmdItem == null) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(str2);
                    ?? obj2 = new Object();
                    obj2.f19061a = str;
                    obj2.b = arrayList2;
                    this.D.add(obj2);
                    return;
                }
                List list = cmdItem.b;
                if (list == null) {
                    new ArrayList().add(str2);
                } else if (!list.contains(str2)) {
                    list.add(str2);
                }
            } catch (Exception unused) {
            }
        }
    }

    public final void b(String str, String str2) {
        List list;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                HashMap hashMap = this.E;
                if (hashMap == null) {
                    this.E = new HashMap();
                    list = null;
                } else {
                    list = (List) hashMap.get(str);
                    if (K(str2, list)) {
                        return;
                    }
                }
                if (list == null) {
                    list = new ArrayList();
                }
                list.add(str2);
                this.E.put(str, list);
                this.F = o();
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [com.mycompany.app.web.WebClean$DocItem, java.lang.Object] */
    public final void c(String str, String str2, boolean z) {
        ArrayList arrayList;
        if (!str.endsWith("clien.net") || !str2.contains("comment inline_link ad_banner")) {
            ArrayList arrayList2 = this.x;
            if (arrayList2 == null) {
                this.x = new ArrayList();
            } else {
                int size = arrayList2.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList2.get(i);
                    i++;
                    DocItem docItem = (DocItem) obj;
                    if (docItem != null && str.equals(docItem.f19068a)) {
                        arrayList = docItem.b;
                        break;
                    }
                }
            }
            arrayList = null;
            if (arrayList == null) {
                ArrayList arrayList3 = new ArrayList();
                arrayList3.add(str2);
                ?? obj2 = new Object();
                obj2.f19068a = str;
                obj2.b = arrayList3;
                this.x.add(obj2);
                if (this.x.size() > 20) {
                    this.x.remove(0);
                }
            } else if (!arrayList.contains(str2)) {
                arrayList.add(str2);
            } else if (!z) {
                return;
            }
            try {
                if (this.w == null) {
                    this.w = new ArrayList();
                }
                if (z) {
                    if (!this.w.contains(str2)) {
                        this.w.add(str2);
                        return;
                    }
                    return;
                }
                this.w.add(str2);
            } catch (Exception unused) {
            }
        }
    }

    public final void d(String str) {
        List list;
        if (!TextUtils.isEmpty(str)) {
            try {
                List list2 = this.n;
                if (list2 == null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(str);
                    list = arrayList;
                } else {
                    boolean contains = list2.contains(str);
                    list = list2;
                    if (!contains) {
                        list2.add(str);
                        list = list2;
                    }
                }
                this.n = list;
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [com.mycompany.app.web.WebClean$CmdItem, java.lang.Object] */
    public final void e(Context context, String str, List list) {
        CmdItem cmdItem;
        if (list != null && !list.isEmpty()) {
            StringBuilder sb = null;
            try {
                ArrayList arrayList = this.z;
                if (arrayList == null) {
                    this.z = new ArrayList();
                } else {
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        cmdItem = (CmdItem) obj;
                        if (cmdItem != null && str.equals(cmdItem.f19061a)) {
                            break;
                        }
                    }
                }
                cmdItem = null;
                if (cmdItem == null) {
                    ?? obj2 = new Object();
                    obj2.f19061a = str;
                    obj2.b = list;
                    this.z.add(obj2);
                    if (this.z.size() > 20) {
                        this.z.remove(0);
                    }
                } else {
                    cmdItem.b = list;
                }
            } catch (Exception unused) {
            }
            try {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    String str2 = (String) it.next();
                    if (!TextUtils.isEmpty(str2)) {
                        if (sb == null) {
                            sb = new StringBuilder();
                        } else {
                            sb.append(",");
                        }
                        sb.append(str2);
                    }
                }
            } catch (Exception unused2) {
            }
            if (sb != null) {
                DbAdsCmd.d(context, str, sb.toString(), "_rsv2");
            }
        }
    }

    public final void f(String str, String str2) {
        int length;
        ArrayList arrayList = this.x;
        if (arrayList != null) {
            try {
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    DocItem docItem = (DocItem) obj;
                    if (docItem != null && str2.equals(docItem.f19068a)) {
                        if (!docItem.d && str != null && (length = str.length()) != 0) {
                            if (length > 10) {
                                str = str.substring(length - 10);
                            }
                            ArrayList arrayList2 = docItem.f19069c;
                            if (arrayList2 == null) {
                                ArrayList arrayList3 = new ArrayList();
                                docItem.f19069c = arrayList3;
                                arrayList3.add(str);
                                return;
                            } else if (arrayList2.size() > 5) {
                                docItem.d = true;
                                docItem.f19069c = null;
                                return;
                            } else if (!docItem.f19069c.contains(str)) {
                                docItem.f19069c.add(str);
                            } else {
                                return;
                            }
                        }
                        return;
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0405  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x0542  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x05e2  */
    /* JADX WARN: Removed duplicated region for block: B:372:0x0617  */
    /* JADX WARN: Removed duplicated region for block: B:379:0x062e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:386:0x063a  */
    /* JADX WARN: Removed duplicated region for block: B:392:0x064f  */
    /* JADX WARN: Removed duplicated region for block: B:400:0x0674  */
    /* JADX WARN: Removed duplicated region for block: B:402:0x0692  */
    /* JADX WARN: Removed duplicated region for block: B:412:0x06b1  */
    /* JADX WARN: Removed duplicated region for block: B:415:0x06b3  */
    /* JADX WARN: Removed duplicated region for block: B:420:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:441:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0258 A[Catch: Exception -> 0x0248, TryCatch #8 {Exception -> 0x0248, blocks: (B:65:0x0251, B:67:0x0258, B:70:0x0267), top: B:64:0x0251 }] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f0(android.content.Context r24, boolean r25, boolean r26) {
        /*
            Method dump skipped, instructions count: 1727
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebClean.f0(android.content.Context, boolean, boolean):void");
    }

    public final void g(String str, String str2) {
        List list;
        try {
            HashMap hashMap = this.E;
            if (hashMap != null && !hashMap.isEmpty() && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && (list = (List) this.E.get(str)) != null && !list.isEmpty()) {
                list.remove(str2);
                if (list.isEmpty()) {
                    this.E.remove(str);
                } else {
                    this.E.put(str, list);
                }
                this.F = o();
            }
        } catch (Exception unused) {
        }
    }

    public final String g0(String str, String str2, boolean z) {
        String str3;
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        StringBuilder sb = new StringBuilder("(function(){");
        if (z) {
            str3 = "if(document.head){var ele=document.createElement('style');ele.id='sb_cln_style';ele.innerText='";
        } else {
            str3 = "if(document.head){var ele=document.createElement('style');ele.innerText='";
        }
        a.y(sb, str3, str2, "{display:none !important;}';document.head.appendChild(ele);}");
        if (i0(str)) {
            a.y(sb, "{var eles=document.querySelectorAll('", str2, "');if(eles&&(eles.length>0)){for(var i=0;i<eles.length;i++){var ele=eles[i];var par=ele.parentNode;if(par){par.removeChild(ele);}else{ele.style.display='none';}}}}");
        }
        sb.append("})();");
        return sb.toString();
    }

    public final ArrayList h(String str) {
        ArrayList arrayList;
        ArrayList arrayList2;
        String str2;
        ArrayList u;
        String str3 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (MainUtil.k6(str)) {
            ArrayList arrayList3 = new ArrayList();
            if (!TextUtils.isEmpty(this.O)) {
                str2 = this.O;
            } else {
                str2 = "ad-slot-renderer,ytm-companion-ad-renderer,ytm-promoted-sparkles-text-search-renderer,ytm-promoted-sparkles-web-renderer,ytm-promoted-video-renderer";
            }
            arrayList3.add(str2);
            ArrayList arrayList4 = this.a0;
            if (arrayList4 != null && arrayList4.size() != 0 && (u = u(str, true)) != null && u.size() != 0) {
                arrayList3.addAll(u);
            }
            return arrayList3;
        }
        SparseArray sparseArray = this.Y;
        int i = 0;
        if (sparseArray != null && sparseArray.size() != 0) {
            arrayList = u(str, false);
        } else {
            arrayList = null;
        }
        ArrayList arrayList5 = this.Q;
        if (arrayList5 != null && arrayList5.size() != 0) {
            if (!this.N && !TextUtils.isEmpty(str) && (arrayList2 = this.Q) != null && !arrayList2.isEmpty()) {
                int size = arrayList2.size();
                while (true) {
                    if (i >= size) {
                        break;
                    }
                    Object obj = arrayList2.get(i);
                    i++;
                    DftEleItem dftEleItem = (DftEleItem) obj;
                    if (!this.N) {
                        if (dftEleItem != null && !TextUtils.isEmpty(dftEleItem.f19062a)) {
                            if (N(dftEleItem.b, str, dftEleItem.f19062a)) {
                                str3 = dftEleItem.f19063c;
                                break;
                            }
                        }
                    } else {
                        break;
                    }
                }
            }
            if (!TextUtils.isEmpty(str3)) {
                if (arrayList == null) {
                    ArrayList arrayList6 = new ArrayList();
                    arrayList6.add(str3);
                    return arrayList6;
                }
                if (!arrayList.contains(str3)) {
                    arrayList.add(str3);
                }
            }
        }
        return arrayList;
    }

    public final boolean h0(String str) {
        if (this.j && !TextUtils.isEmpty(str) && !MainUtil.k6(str) && !str.endsWith("noltort.com") && !W(str)) {
            this.p = true;
            return true;
        }
        return false;
    }

    public final ArrayList i(String str) {
        ArrayList arrayList = this.x;
        if (arrayList != null) {
            try {
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    DocItem docItem = (DocItem) obj;
                    if (docItem != null && str.equals(docItem.f19068a)) {
                        return docItem.b;
                    }
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public final boolean i0(String str) {
        try {
            ArrayList arrayList = this.S;
            if (arrayList != null && !arrayList.isEmpty() && !TextUtils.isEmpty(str)) {
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    String str2 = (String) obj;
                    if (!TextUtils.isEmpty(str2)) {
                        if (str2.equals("news.kr")) {
                            if (str.equals(str2)) {
                                return false;
                            }
                        } else if (str.endsWith(str2)) {
                            return false;
                        }
                    }
                }
                return true;
            }
            return true;
        } catch (Exception unused) {
            return true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:188:0x01da, code lost:
    
        if ((r4 - r1) < 11) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x01e4, code lost:
    
        if (S(r22, r23, r3, r4, false) != false) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x00c8, code lost:
    
        if (r11 < r1) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:139:0x00d9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01f2  */
    /* JADX WARN: Type inference failed for: r17v10 */
    /* JADX WARN: Type inference failed for: r17v11 */
    /* JADX WARN: Type inference failed for: r17v12 */
    /* JADX WARN: Type inference failed for: r17v3, types: [android.webkit.WebResourceResponse, java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r17v7 */
    /* JADX WARN: Type inference failed for: r1v13, types: [com.mycompany.app.web.WebClean$CmdItem, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.webkit.WebResourceResponse j(android.content.Context r19, android.webkit.WebView r20, android.webkit.WebResourceRequest r21, java.lang.String r22, java.lang.String r23, java.lang.String r24, int r25) {
        /*
            Method dump skipped, instructions count: 906
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebClean.j(android.content.Context, android.webkit.WebView, android.webkit.WebResourceRequest, java.lang.String, java.lang.String, java.lang.String, int):android.webkit.WebResourceResponse");
    }

    /* JADX WARN: Type inference failed for: r8v0, types: [com.mycompany.app.web.WebClean$DftEleItem, java.lang.Object] */
    public final void j0(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                String[] split2 = str.split("\\|");
                if (split2 != null && split2.length == 3) {
                    String str2 = split2[0];
                    String str3 = split2[1];
                    String str4 = split2[2];
                    if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4)) {
                        if (str3.equals("dft_you")) {
                            this.P = str4;
                            return;
                        }
                        String[] split3 = str3.split(",");
                        if (split3 != null && split3.length != 0) {
                            for (String str5 : split3) {
                                ?? obj = new Object();
                                if ("whs".equals(str2)) {
                                    obj.b = 1;
                                } else if ("whe".equals(str2)) {
                                    obj.b = 2;
                                } else if ("whc".equals(str2)) {
                                    obj.b = 3;
                                } else if ("wh=".equals(str2)) {
                                    obj.b = 4;
                                } else {
                                    return;
                                }
                                obj.f19062a = str5;
                                obj.f19063c = str4;
                                if (this.R == null) {
                                    this.R = new ArrayList();
                                }
                                this.R.add(obj);
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public final String k(String str) {
        ArrayList l;
        StringBuilder sb;
        if (this.f19058a != null && !TextUtils.isEmpty(str) && !this.N && (l = l(str)) != null && !l.isEmpty()) {
            try {
                int size = l.size();
                int i = 0;
                sb = null;
                while (i < size) {
                    try {
                        Object obj = l.get(i);
                        i++;
                        String str2 = (String) obj;
                        if (!TextUtils.isEmpty(str2)) {
                            if (sb == null) {
                                sb = new StringBuilder();
                            } else {
                                sb.append(",");
                            }
                            sb.append(str2);
                        }
                    } catch (Exception unused) {
                    }
                }
            } catch (Exception unused2) {
                sb = null;
            }
            if (sb != null) {
                return sb.toString();
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r9v2, types: [java.lang.Object, com.mycompany.app.web.WebClean$DftResItem] */
    public final void k0(String str) {
        int length;
        if (!TextUtils.isEmpty(str)) {
            try {
                String[] split2 = str.split("\\|");
                if (split2 != null && (length = split2.length) >= 3) {
                    String str2 = split2[1];
                    String str3 = split2[2];
                    if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                        ?? obj = new Object();
                        if ("rhs".equals(str2)) {
                            obj.f19064a = str3;
                            obj.f19065c = 1;
                        } else if ("rhe".equals(str2)) {
                            obj.f19064a = str3;
                            obj.f19065c = 2;
                        } else if ("rhc".equals(str2)) {
                            obj.f19064a = str3;
                            obj.f19065c = 3;
                        } else if ("rh=".equals(str2)) {
                            obj.f19064a = str3;
                            obj.f19065c = 4;
                        } else if ("rus".equals(str2)) {
                            obj.b = str3;
                            obj.f19065c = 1;
                        } else if ("rue".equals(str2)) {
                            obj.b = str3;
                            obj.f19065c = 2;
                        } else if ("ruc".equals(str2)) {
                            obj.b = str3;
                            obj.f19065c = 3;
                        } else if ("ru=".equals(str2)) {
                            obj.b = str3;
                            obj.f19065c = 4;
                        } else {
                            return;
                        }
                        if (length > 4) {
                            String str4 = split2[3];
                            String str5 = split2[4];
                            if ("rhs".equals(str4)) {
                                obj.d = str5;
                                obj.f = 1;
                            } else if ("rhe".equals(str4)) {
                                obj.d = str5;
                                obj.f = 2;
                            } else if ("rhc".equals(str4)) {
                                obj.d = str5;
                                obj.f = 3;
                            } else if ("rh=".equals(str4)) {
                                obj.d = str5;
                                obj.f = 4;
                            } else if ("rus".equals(str4)) {
                                obj.e = str5;
                                obj.f = 1;
                            } else if ("rue".equals(str4)) {
                                obj.e = str5;
                                obj.f = 2;
                            } else if ("ruc".equals(str4)) {
                                obj.e = str5;
                                obj.f = 3;
                            } else if ("ru=".equals(str4)) {
                                obj.e = str5;
                                obj.f = 4;
                            }
                        }
                        if (split2[0].startsWith("a")) {
                            if (this.F0 == null) {
                                this.F0 = new ArrayList();
                            }
                            this.F0.add(obj);
                        } else {
                            if (this.h0 == null) {
                                this.h0 = new ArrayList();
                            }
                            this.h0.add(obj);
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public final ArrayList l(String str) {
        List<String> list;
        String sb;
        ArrayList arrayList = this.y;
        ArrayList arrayList2 = null;
        if (arrayList == null) {
            return null;
        }
        try {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                CmdItem cmdItem = (CmdItem) obj;
                if (cmdItem != null && str.equals(cmdItem.f19061a)) {
                    list = cmdItem.b;
                    break;
                }
            }
        } catch (Exception unused) {
        }
        list = null;
        if (list == null || list.isEmpty()) {
            return null;
        }
        try {
            for (String str2 : list) {
                if (TextUtils.isEmpty(str2)) {
                    sb = null;
                } else {
                    StringBuilder w = a.w("[src*=\"", str2, "\"]");
                    if (MainUtil.r(38, str2)) {
                        String replace = str2.replace("&", "&amp;");
                        w.append(",[src*=\"");
                        w.append(replace);
                        w.append("\"]");
                    }
                    sb = w.toString();
                }
                if (!TextUtils.isEmpty(sb)) {
                    if (arrayList2 == null) {
                        ArrayList arrayList3 = new ArrayList();
                        try {
                            arrayList3.add(sb);
                            arrayList2 = arrayList3;
                        } catch (Exception unused2) {
                            return arrayList3;
                        }
                    } else if (!arrayList2.contains(sb)) {
                        arrayList2.add(sb);
                    }
                }
            }
            return arrayList2;
        } catch (Exception unused3) {
            return arrayList2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x01fd A[Catch: Exception -> 0x0225, TryCatch #0 {Exception -> 0x0225, blocks: (B:4:0x000a, B:9:0x0016, B:13:0x001c, B:17:0x002a, B:21:0x0032, B:23:0x003a, B:27:0x003f, B:29:0x0043, B:31:0x0057, B:35:0x00ce, B:37:0x00da, B:38:0x0172, B:42:0x0179, B:44:0x0184, B:45:0x018f, B:47:0x0195, B:48:0x019d, B:50:0x01a3, B:51:0x01ab, B:53:0x01b1, B:54:0x01b9, B:56:0x01bf, B:59:0x01f3, B:61:0x01fd, B:63:0x0201, B:64:0x0208, B:67:0x020e, B:69:0x0212, B:70:0x0219, B:72:0x01c7, B:74:0x01ce, B:75:0x01d6, B:77:0x01dd, B:78:0x01e5, B:80:0x01ec, B:82:0x00e8, B:84:0x00ee, B:85:0x00fc, B:87:0x0102, B:88:0x0110, B:90:0x0116, B:91:0x0124, B:93:0x012a, B:94:0x0137, B:96:0x013d, B:97:0x014a, B:99:0x0150, B:100:0x015d, B:102:0x0163, B:104:0x005c, B:106:0x0064, B:107:0x0069, B:109:0x0071, B:110:0x0076, B:112:0x007e, B:113:0x0083, B:115:0x008b, B:116:0x0090, B:118:0x0098, B:119:0x009d, B:121:0x00a5, B:122:0x00aa, B:124:0x00b2), top: B:3:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x020e A[Catch: Exception -> 0x0225, TryCatch #0 {Exception -> 0x0225, blocks: (B:4:0x000a, B:9:0x0016, B:13:0x001c, B:17:0x002a, B:21:0x0032, B:23:0x003a, B:27:0x003f, B:29:0x0043, B:31:0x0057, B:35:0x00ce, B:37:0x00da, B:38:0x0172, B:42:0x0179, B:44:0x0184, B:45:0x018f, B:47:0x0195, B:48:0x019d, B:50:0x01a3, B:51:0x01ab, B:53:0x01b1, B:54:0x01b9, B:56:0x01bf, B:59:0x01f3, B:61:0x01fd, B:63:0x0201, B:64:0x0208, B:67:0x020e, B:69:0x0212, B:70:0x0219, B:72:0x01c7, B:74:0x01ce, B:75:0x01d6, B:77:0x01dd, B:78:0x01e5, B:80:0x01ec, B:82:0x00e8, B:84:0x00ee, B:85:0x00fc, B:87:0x0102, B:88:0x0110, B:90:0x0116, B:91:0x0124, B:93:0x012a, B:94:0x0137, B:96:0x013d, B:97:0x014a, B:99:0x0150, B:100:0x015d, B:102:0x0163, B:104:0x005c, B:106:0x0064, B:107:0x0069, B:109:0x0071, B:110:0x0076, B:112:0x007e, B:113:0x0083, B:115:0x008b, B:116:0x0090, B:118:0x0098, B:119:0x009d, B:121:0x00a5, B:122:0x00aa, B:124:0x00b2), top: B:3:0x000a }] */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.mycompany.app.web.WebClean$DftSvrItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v10, types: [java.lang.Object, com.mycompany.app.web.WebClean$DftResItem] */
    /* JADX WARN: Type inference failed for: r14v11, types: [java.lang.Object, com.mycompany.app.web.WebClean$DftResItem] */
    /* JADX WARN: Type inference failed for: r14v12, types: [java.lang.Object, com.mycompany.app.web.WebClean$DftResItem] */
    /* JADX WARN: Type inference failed for: r14v5, types: [java.lang.Object, com.mycompany.app.web.WebClean$DftResItem] */
    /* JADX WARN: Type inference failed for: r14v6, types: [java.lang.Object, com.mycompany.app.web.WebClean$DftResItem] */
    /* JADX WARN: Type inference failed for: r14v7, types: [java.lang.Object, com.mycompany.app.web.WebClean$DftResItem] */
    /* JADX WARN: Type inference failed for: r14v8, types: [java.lang.Object, com.mycompany.app.web.WebClean$DftResItem] */
    /* JADX WARN: Type inference failed for: r14v9, types: [java.lang.Object, com.mycompany.app.web.WebClean$DftResItem] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void l0(java.lang.String r21) {
        /*
            Method dump skipped, instructions count: 550
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebClean.l0(java.lang.String):void");
    }

    public final ArrayList m(Context context, String str) {
        String a2 = DbAdsCmd.a(context, str, "_rsv2");
        ArrayList arrayList = null;
        if (TextUtils.isEmpty(a2)) {
            return null;
        }
        String[] split2 = a2.split(",");
        if (split2 != null) {
            for (String str2 : split2) {
                if (!TextUtils.isEmpty(str2)) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(str2);
                }
            }
        } else {
            arrayList = new ArrayList();
            arrayList.add(a2);
        }
        e(context, str, arrayList);
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x005b A[Catch: Exception -> 0x0070, TRY_ENTER, TryCatch #0 {Exception -> 0x0070, blocks: (B:3:0x0002, B:8:0x000d, B:12:0x0018, B:16:0x0021, B:20:0x0030, B:24:0x0038, B:28:0x003f, B:30:0x0043, B:31:0x004d, B:35:0x005b, B:37:0x0067, B:39:0x006d), top: B:2:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0067 A[Catch: Exception -> 0x0070, TryCatch #0 {Exception -> 0x0070, blocks: (B:3:0x0002, B:8:0x000d, B:12:0x0018, B:16:0x0021, B:20:0x0030, B:24:0x0038, B:28:0x003f, B:30:0x0043, B:31:0x004d, B:35:0x005b, B:37:0x0067, B:39:0x006d), top: B:2:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m0(java.lang.String r4) {
        /*
            r3 = this;
            r0 = 8
            java.lang.String r4 = r4.substring(r0)     // Catch: java.lang.Exception -> L70
            boolean r0 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Exception -> L70
            if (r0 == 0) goto Ld
            goto L70
        Ld:
            java.lang.String r4 = r4.trim()     // Catch: java.lang.Exception -> L70
            boolean r0 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Exception -> L70
            if (r0 == 0) goto L18
            goto L70
        L18:
            r0 = 46
            boolean r0 = com.mycompany.app.main.MainUtil.r(r0, r4)     // Catch: java.lang.Exception -> L70
            if (r0 != 0) goto L21
            goto L70
        L21:
            java.lang.String r0 = "."
            java.lang.String r1 = ""
            java.lang.String r0 = r4.replace(r0, r1)     // Catch: java.lang.Exception -> L70
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> L70
            if (r1 == 0) goto L30
            goto L70
        L30:
            int r0 = com.mycompany.app.main.MainUtil.H6(r0)     // Catch: java.lang.Exception -> L70
            r1 = -1
            if (r0 == r1) goto L38
            goto L70
        L38:
            int r0 = A(r4)     // Catch: java.lang.Exception -> L70
            if (r0 != r1) goto L3f
            goto L70
        L3f:
            android.util.SparseArray r1 = r3.j0     // Catch: java.lang.Exception -> L70
            if (r1 != 0) goto L4c
            android.util.SparseArray r1 = new android.util.SparseArray     // Catch: java.lang.Exception -> L70
            r1.<init>()     // Catch: java.lang.Exception -> L70
            r3.j0 = r1     // Catch: java.lang.Exception -> L70
            r1 = 0
            goto L4d
        L4c:
            r1 = 1
        L4d:
            android.util.SparseArray r2 = r3.j0     // Catch: java.lang.Exception -> L70
            if (r1 == 0) goto L58
            java.lang.Object r1 = r2.get(r0)     // Catch: java.lang.Exception -> L58
            java.util.List r1 = (java.util.List) r1     // Catch: java.lang.Exception -> L58
            goto L59
        L58:
            r1 = 0
        L59:
            if (r1 != 0) goto L67
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Exception -> L70
            r1.<init>()     // Catch: java.lang.Exception -> L70
            r1.add(r4)     // Catch: java.lang.Exception -> L70
            r2.put(r0, r1)     // Catch: java.lang.Exception -> L70
            goto L70
        L67:
            boolean r0 = r1.contains(r4)     // Catch: java.lang.Exception -> L70
            if (r0 != 0) goto L70
            r1.add(r4)     // Catch: java.lang.Exception -> L70
        L70:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebClean.m0(java.lang.String):void");
    }

    public final List n(String str) {
        ArrayList arrayList = this.z;
        if (arrayList != null) {
            try {
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    CmdItem cmdItem = (CmdItem) obj;
                    if (cmdItem != null && str.equals(cmdItem.f19061a)) {
                        return cmdItem.b;
                    }
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    public final void n0(String str) {
        String str2;
        String str3;
        int i = 26;
        while (str != null) {
            try {
                int indexOf = str.indexOf(124, i);
                if (indexOf == -1) {
                    indexOf = str.indexOf(44, i);
                }
                if (indexOf == -1) {
                    str3 = str.substring(i);
                    str2 = null;
                } else {
                    String substring = str.substring(i, indexOf);
                    int i2 = indexOf + 1;
                    str2 = str;
                    str3 = substring;
                    i = i2;
                }
                String q0 = MainUtil.q0(str3);
                if (!TextUtils.isEmpty(q0)) {
                    if (q0.endsWith("*")) {
                        q0 = q0.substring(0, q0.length() - 1);
                        if (TextUtils.isEmpty(q0)) {
                        }
                    }
                    ArrayList arrayList = this.d0;
                    if (arrayList == null) {
                        ArrayList arrayList2 = new ArrayList();
                        this.d0 = arrayList2;
                        arrayList2.add(q0);
                    } else if (!arrayList.contains(q0)) {
                        this.d0.add(q0);
                    }
                }
                str = str2;
            } catch (Exception unused) {
                return;
            }
        }
    }

    public final HashMap o() {
        List list;
        HashMap hashMap = this.E;
        HashMap hashMap2 = null;
        if (hashMap == null || hashMap.isEmpty()) {
            return null;
        }
        try {
            Set<String> keySet = hashMap.keySet();
            if (keySet == null) {
                return null;
            }
            for (String str : keySet) {
                if (!TextUtils.isEmpty(str) && str.indexOf("://") == -1 && (list = (List) hashMap.get(str)) != null && !list.isEmpty()) {
                    String q0 = MainUtil.q0(str);
                    if (!TextUtils.isEmpty(q0) && !q0.equals(str)) {
                        if (hashMap2 == null) {
                            HashMap hashMap3 = new HashMap();
                            try {
                                hashMap3.put(q0, list);
                                hashMap2 = hashMap3;
                            } catch (Exception unused) {
                                return hashMap3;
                            }
                        } else {
                            List list2 = (List) hashMap2.get(q0);
                            if (list2 != null && !list2.isEmpty()) {
                                list2.addAll(list);
                            } else {
                                hashMap2.put(q0, list);
                            }
                        }
                    }
                }
            }
            return hashMap2;
        } catch (Exception unused2) {
            return hashMap2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x00cf A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x00d2 A[Catch: Exception -> 0x00db, TRY_LEAVE, TryCatch #0 {Exception -> 0x00db, blocks: (B:106:0x00cf, B:89:0x00d2), top: B:105:0x00cf }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x00de  */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.Object, com.mycompany.app.web.WebClean$EleItem] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void o0(java.lang.String r12, int r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 359
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebClean.o0(java.lang.String, int, boolean):void");
    }

    /* JADX WARN: Type inference failed for: r13v0, types: [com.mycompany.app.web.WebClean$ExpItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v26, types: [java.lang.Object, com.mycompany.app.web.WebClean$NorItem] */
    /* JADX WARN: Type inference failed for: r2v33, types: [java.lang.Object, com.mycompany.app.web.WebClean$NorItem] */
    public final void p0(String str, int i, boolean z) {
        int i2;
        int i3;
        int indexOf;
        int i4;
        int i5;
        String str2 = str;
        if (this.b) {
            ArrayList arrayList = null;
            if (z) {
                int indexOf2 = str2.indexOf(123);
                if (indexOf2 != -1) {
                    if (str2.lastIndexOf(125) <= indexOf2) {
                        str2 = null;
                    } else {
                        str2 = str2.substring(0, indexOf2);
                    }
                }
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
            }
            if (i <= 0 || ((arrayList = s0(str2, i, true)) != null && !arrayList.isEmpty())) {
                int i6 = i + 2;
                int indexOf3 = str2.indexOf(91, i6);
                if (indexOf3 == -1) {
                    if (str2.startsWith("#", i6)) {
                        String substring = str2.substring(i + 3);
                        if (arrayList != null && !arrayList.isEmpty()) {
                            ?? obj = new Object();
                            obj.f19074a = arrayList;
                            obj.b = substring;
                            if (this.h1 == null) {
                                this.h1 = new ArrayList();
                            }
                            this.h1.add(obj);
                            return;
                        }
                        ArrayList arrayList2 = this.d1;
                        if (arrayList2 == null) {
                            ArrayList arrayList3 = new ArrayList();
                            this.d1 = arrayList3;
                            arrayList3.add(substring);
                            return;
                        } else {
                            if (!arrayList2.contains(substring)) {
                                this.d1.add(substring);
                                return;
                            }
                            return;
                        }
                    }
                    if (str2.startsWith(".", i6)) {
                        String substring2 = str2.substring(i + 3);
                        if (arrayList != null && !arrayList.isEmpty()) {
                            ?? obj2 = new Object();
                            obj2.f19074a = arrayList;
                            obj2.b = substring2;
                            if (this.f1 == null) {
                                this.f1 = new ArrayList();
                            }
                            this.f1.add(obj2);
                            return;
                        }
                        ArrayList arrayList4 = this.b1;
                        if (arrayList4 == null) {
                            ArrayList arrayList5 = new ArrayList();
                            this.b1 = arrayList5;
                            arrayList5.add(substring2);
                            return;
                        } else {
                            if (!arrayList4.contains(substring2)) {
                                this.b1.add(substring2);
                                return;
                            }
                            return;
                        }
                    }
                    return;
                }
                int i7 = indexOf3 + 1;
                int indexOf4 = str2.indexOf(93, i7);
                if (indexOf4 == -1) {
                    return;
                }
                ?? obj3 = new Object();
                int indexOf5 = str2.indexOf(61, i7);
                if (indexOf5 != -1 && indexOf5 - 1 > i7 && indexOf5 < indexOf4) {
                    char charAt = str2.charAt(i5);
                    if (charAt == '^') {
                        obj3.f19072c = str2.substring(i7, i5);
                        obj3.e = 1;
                    } else if (charAt == '$') {
                        obj3.f19072c = str2.substring(i7, i5);
                        obj3.e = 2;
                    } else if (charAt == '*') {
                        obj3.f19072c = str2.substring(i7, i5);
                        obj3.e = 3;
                    } else {
                        obj3.f19072c = str2.substring(i7, indexOf5);
                        obj3.e = 4;
                    }
                }
                if (indexOf5 == -1) {
                    if (str2.startsWith("\"", i7)) {
                        i7 = indexOf3 + 2;
                    }
                    if (str2.startsWith("\"", indexOf4 - 1)) {
                        i4 = indexOf4 - 1;
                    } else {
                        i4 = indexOf4;
                    }
                    if (i7 < i4) {
                        obj3.f19072c = str2.substring(i7, i4);
                        obj3.e = 0;
                    }
                } else {
                    int i8 = indexOf5 + 1;
                    if (i8 < indexOf4) {
                        if (str2.startsWith("\"", i8)) {
                            i8 = indexOf5 + 2;
                        }
                        if (str2.startsWith("\"", indexOf4 - 1)) {
                            i2 = indexOf4 - 1;
                        } else {
                            i2 = indexOf4;
                        }
                        if (i8 < i2) {
                            obj3.d = str2.substring(i8, i2);
                        }
                    }
                }
                int indexOf6 = str2.indexOf(91, indexOf4 + 1);
                int i9 = -1;
                if (indexOf6 != -1 && (indexOf = str2.indexOf(93, (i3 = indexOf6 + 1))) != -1) {
                    int indexOf7 = str2.indexOf(61, i3);
                    if (indexOf7 != -1) {
                        int i10 = indexOf7 - 1;
                        if (i10 > i3 && indexOf7 < indexOf) {
                            char charAt2 = str2.charAt(i10);
                            if (charAt2 == '^') {
                                obj3.f = str2.substring(i3, i10);
                                obj3.h = 1;
                            } else if (charAt2 == '$') {
                                obj3.f = str2.substring(i3, i10);
                                obj3.h = 2;
                            } else if (charAt2 == '*') {
                                obj3.f = str2.substring(i3, i10);
                                obj3.h = 3;
                            } else {
                                obj3.f = str2.substring(i3, indexOf7);
                                obj3.h = 4;
                            }
                        }
                        i9 = -1;
                    }
                    if (indexOf7 == i9) {
                        if (str2.startsWith("\"", i3)) {
                            i3 = indexOf6 + 2;
                        }
                        if (str2.startsWith("\"", indexOf - 1)) {
                            indexOf--;
                        }
                        if (i3 < indexOf) {
                            obj3.f = str2.substring(i3, indexOf);
                            obj3.h = 0;
                        }
                    } else {
                        int i11 = indexOf7 + 1;
                        if (i11 < indexOf) {
                            if (str2.startsWith("\"", i11)) {
                                i11 = indexOf7 + 2;
                            }
                            if (str2.startsWith("\"", indexOf - 1)) {
                                indexOf--;
                            }
                            if (i11 < indexOf) {
                                obj3.g = str2.substring(i11, indexOf);
                            }
                        }
                    }
                }
                obj3.f19071a = arrayList;
                if (i6 < indexOf3) {
                    obj3.b = str2.substring(i6, indexOf3);
                }
                if (this.j1 == null) {
                    this.j1 = new ArrayList();
                }
                this.j1.add(obj3);
            }
        }
    }

    public final String q() {
        ArrayList arrayList;
        if (!this.N && !this.p && !TextUtils.isEmpty(this.m1) && (arrayList = this.a1) != null) {
            int size = arrayList.size();
            int i = 0;
            String str = null;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                String str2 = (String) obj;
                if (!this.N && !this.p && !TextUtils.isEmpty(this.m1) && this.a1 != null) {
                    if (!TextUtils.isEmpty(str2)) {
                        str = w(this.l1, this.m1, str2, null, null, true);
                        if (!TextUtils.isEmpty(str)) {
                            break;
                        }
                    }
                }
            }
            return str;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x022e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:228:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0229 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0227 A[EDGE_INSN: B:236:0x0227->B:220:0x0227 BREAK  A[LOOP:0: B:15:0x0026->B:47:0x0026], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void q0(int r17, android.content.Context r18, java.lang.String r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 562
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebClean.q0(int, android.content.Context, java.lang.String, boolean):void");
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [com.mycompany.app.web.WebClean$FunItem, java.lang.Object] */
    public final void r0(String str) {
        int i;
        int indexOf;
        if (!TextUtils.isEmpty(str)) {
            String substring = str.substring(3);
            if (!TextUtils.isEmpty(substring)) {
                String str2 = null;
                try {
                    int indexOf2 = substring.indexOf(32);
                    if (indexOf2 > 0 && (indexOf = substring.indexOf(61, (i = indexOf2 + 1))) > i) {
                        String substring2 = substring.substring(i, indexOf);
                        if (!TextUtils.isEmpty(substring2)) {
                            str2 = substring2.trim();
                        }
                    }
                } catch (Exception unused) {
                }
                if (!TextUtils.isEmpty(str2)) {
                    HashMap hashMap = this.V;
                    if (hashMap == null) {
                        this.V = new HashMap();
                    } else if (((FunItem) hashMap.get(str2)) != null) {
                        return;
                    }
                    ?? obj = new Object();
                    obj.f19073a = substring;
                    this.V.put(str2, obj);
                }
            }
        }
    }

    public final List t(SparseArray sparseArray, int i) {
        if (!this.N) {
            try {
                return (List) sparseArray.get(i);
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x006e A[Catch: Exception -> 0x0241, TryCatch #0 {Exception -> 0x0241, blocks: (B:3:0x0008, B:5:0x0012, B:7:0x001e, B:10:0x0065, B:12:0x006e, B:13:0x0072, B:15:0x007a, B:17:0x0087, B:19:0x008f, B:21:0x0095, B:23:0x009f, B:24:0x00a4, B:26:0x00ac, B:28:0x00c8, B:30:0x00d6, B:32:0x00dc, B:34:0x00e9, B:36:0x00f1, B:38:0x00f7, B:45:0x00ff, B:48:0x010b, B:51:0x0113, B:55:0x011b, B:56:0x011e, B:58:0x0124, B:61:0x00d0, B:63:0x00b1, B:65:0x00b9, B:66:0x00be, B:68:0x00c4, B:71:0x0128, B:74:0x0132, B:76:0x0138, B:77:0x01f4, B:78:0x014a, B:79:0x015d, B:81:0x0167, B:82:0x0189, B:84:0x0190, B:100:0x0196, B:102:0x019c, B:104:0x01a6, B:105:0x01ad, B:107:0x01b1, B:109:0x01b7, B:110:0x01bd, B:86:0x01c2, B:88:0x01cc, B:90:0x01d6, B:91:0x01db, B:93:0x01ed, B:94:0x01df, B:96:0x01e5, B:97:0x01ea, B:113:0x0178, B:116:0x01fc, B:118:0x0200, B:119:0x0207, B:121:0x020d, B:123:0x0211, B:124:0x0218, B:127:0x0220, B:129:0x0224, B:130:0x022b, B:132:0x0231, B:134:0x0235, B:135:0x023c, B:137:0x002c, B:140:0x0044, B:142:0x004c, B:148:0x0037), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007a A[Catch: Exception -> 0x0241, TryCatch #0 {Exception -> 0x0241, blocks: (B:3:0x0008, B:5:0x0012, B:7:0x001e, B:10:0x0065, B:12:0x006e, B:13:0x0072, B:15:0x007a, B:17:0x0087, B:19:0x008f, B:21:0x0095, B:23:0x009f, B:24:0x00a4, B:26:0x00ac, B:28:0x00c8, B:30:0x00d6, B:32:0x00dc, B:34:0x00e9, B:36:0x00f1, B:38:0x00f7, B:45:0x00ff, B:48:0x010b, B:51:0x0113, B:55:0x011b, B:56:0x011e, B:58:0x0124, B:61:0x00d0, B:63:0x00b1, B:65:0x00b9, B:66:0x00be, B:68:0x00c4, B:71:0x0128, B:74:0x0132, B:76:0x0138, B:77:0x01f4, B:78:0x014a, B:79:0x015d, B:81:0x0167, B:82:0x0189, B:84:0x0190, B:100:0x0196, B:102:0x019c, B:104:0x01a6, B:105:0x01ad, B:107:0x01b1, B:109:0x01b7, B:110:0x01bd, B:86:0x01c2, B:88:0x01cc, B:90:0x01d6, B:91:0x01db, B:93:0x01ed, B:94:0x01df, B:96:0x01e5, B:97:0x01ea, B:113:0x0178, B:116:0x01fc, B:118:0x0200, B:119:0x0207, B:121:0x020d, B:123:0x0211, B:124:0x0218, B:127:0x0220, B:129:0x0224, B:130:0x022b, B:132:0x0231, B:134:0x0235, B:135:0x023c, B:137:0x002c, B:140:0x0044, B:142:0x004c, B:148:0x0037), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0095 A[Catch: Exception -> 0x0241, TryCatch #0 {Exception -> 0x0241, blocks: (B:3:0x0008, B:5:0x0012, B:7:0x001e, B:10:0x0065, B:12:0x006e, B:13:0x0072, B:15:0x007a, B:17:0x0087, B:19:0x008f, B:21:0x0095, B:23:0x009f, B:24:0x00a4, B:26:0x00ac, B:28:0x00c8, B:30:0x00d6, B:32:0x00dc, B:34:0x00e9, B:36:0x00f1, B:38:0x00f7, B:45:0x00ff, B:48:0x010b, B:51:0x0113, B:55:0x011b, B:56:0x011e, B:58:0x0124, B:61:0x00d0, B:63:0x00b1, B:65:0x00b9, B:66:0x00be, B:68:0x00c4, B:71:0x0128, B:74:0x0132, B:76:0x0138, B:77:0x01f4, B:78:0x014a, B:79:0x015d, B:81:0x0167, B:82:0x0189, B:84:0x0190, B:100:0x0196, B:102:0x019c, B:104:0x01a6, B:105:0x01ad, B:107:0x01b1, B:109:0x01b7, B:110:0x01bd, B:86:0x01c2, B:88:0x01cc, B:90:0x01d6, B:91:0x01db, B:93:0x01ed, B:94:0x01df, B:96:0x01e5, B:97:0x01ea, B:113:0x0178, B:116:0x01fc, B:118:0x0200, B:119:0x0207, B:121:0x020d, B:123:0x0211, B:124:0x0218, B:127:0x0220, B:129:0x0224, B:130:0x022b, B:132:0x0231, B:134:0x0235, B:135:0x023c, B:137:0x002c, B:140:0x0044, B:142:0x004c, B:148:0x0037), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0128 A[Catch: Exception -> 0x0241, TRY_LEAVE, TryCatch #0 {Exception -> 0x0241, blocks: (B:3:0x0008, B:5:0x0012, B:7:0x001e, B:10:0x0065, B:12:0x006e, B:13:0x0072, B:15:0x007a, B:17:0x0087, B:19:0x008f, B:21:0x0095, B:23:0x009f, B:24:0x00a4, B:26:0x00ac, B:28:0x00c8, B:30:0x00d6, B:32:0x00dc, B:34:0x00e9, B:36:0x00f1, B:38:0x00f7, B:45:0x00ff, B:48:0x010b, B:51:0x0113, B:55:0x011b, B:56:0x011e, B:58:0x0124, B:61:0x00d0, B:63:0x00b1, B:65:0x00b9, B:66:0x00be, B:68:0x00c4, B:71:0x0128, B:74:0x0132, B:76:0x0138, B:77:0x01f4, B:78:0x014a, B:79:0x015d, B:81:0x0167, B:82:0x0189, B:84:0x0190, B:100:0x0196, B:102:0x019c, B:104:0x01a6, B:105:0x01ad, B:107:0x01b1, B:109:0x01b7, B:110:0x01bd, B:86:0x01c2, B:88:0x01cc, B:90:0x01d6, B:91:0x01db, B:93:0x01ed, B:94:0x01df, B:96:0x01e5, B:97:0x01ea, B:113:0x0178, B:116:0x01fc, B:118:0x0200, B:119:0x0207, B:121:0x020d, B:123:0x0211, B:124:0x0218, B:127:0x0220, B:129:0x0224, B:130:0x022b, B:132:0x0231, B:134:0x0235, B:135:0x023c, B:137:0x002c, B:140:0x0044, B:142:0x004c, B:148:0x0037), top: B:2:0x0008 }] */
    /* JADX WARN: Type inference failed for: r13v0, types: [com.mycompany.app.web.WebClean$ResItem, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void t0(java.lang.String r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 578
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebClean.t0(java.lang.String, boolean):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0018, code lost:
    
        if (r2.size() != 0) goto L53;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.ArrayList u(java.lang.String r5, boolean r6) {
        /*
            r4 = this;
            boolean r0 = r4.N
            r1 = 0
            if (r0 != 0) goto L8c
            boolean r0 = android.text.TextUtils.isEmpty(r5)
            if (r0 == 0) goto Ld
            goto L8c
        Ld:
            r0 = -1
            if (r6 == 0) goto L1c
            java.util.ArrayList r2 = r4.a0
            if (r2 == 0) goto L8c
            int r2 = r2.size()
            if (r2 != 0) goto L31
            goto L8c
        L1c:
            android.util.SparseArray r2 = r4.Y
            if (r2 == 0) goto L8c
            int r2 = r2.size()
            if (r2 != 0) goto L28
            goto L8c
        L28:
            int r2 = A(r5)
            if (r2 != r0) goto L30
            goto L8c
        L30:
            r0 = r2
        L31:
            boolean r2 = r4.N     // Catch: java.lang.Exception -> L44
            if (r2 == 0) goto L36
            goto L8c
        L36:
            if (r6 == 0) goto L3b
            java.util.ArrayList r6 = r4.a0     // Catch: java.lang.Exception -> L44
            goto L45
        L3b:
            android.util.SparseArray r6 = r4.Y     // Catch: java.lang.Exception -> L44
            java.lang.Object r6 = r6.get(r0)     // Catch: java.lang.Exception -> L44
            java.util.List r6 = (java.util.List) r6     // Catch: java.lang.Exception -> L44
            goto L45
        L44:
            r6 = r1
        L45:
            if (r6 == 0) goto L8c
            boolean r0 = r6.isEmpty()
            if (r0 == 0) goto L4e
            goto L8c
        L4e:
            java.util.Iterator r6 = r6.iterator()
            r0 = r1
        L53:
            boolean r2 = r6.hasNext()
            if (r2 == 0) goto L8b
            java.lang.Object r2 = r6.next()
            com.mycompany.app.web.WebClean$EleItem r2 = (com.mycompany.app.web.WebClean.EleItem) r2
            boolean r3 = r4.N
            if (r3 == 0) goto L64
            goto L8c
        L64:
            if (r2 != 0) goto L67
            goto L53
        L67:
            java.lang.String r3 = r2.f19070a
            boolean r3 = r5.endsWith(r3)
            if (r3 != 0) goto L70
            goto L53
        L70:
            if (r0 != 0) goto L7d
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.lang.String r2 = r2.b
            r0.add(r2)
            goto L53
        L7d:
            java.lang.String r3 = r2.b
            boolean r3 = r0.contains(r3)
            if (r3 != 0) goto L53
            java.lang.String r2 = r2.b
            r0.add(r2)
            goto L53
        L8b:
            return r0
        L8c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebClean.u(java.lang.String, boolean):java.util.ArrayList");
    }

    /* JADX WARN: Type inference failed for: r7v3, types: [com.mycompany.app.web.WebClean$ScrItem, java.lang.Object] */
    public final void u0(int i, String str) {
        ArrayList s0;
        ScrItem scrItem;
        if (!TextUtils.isEmpty(str)) {
            int i2 = i + 3;
            if (str.indexOf("//scriptlet", i2) < 0 && (s0 = s0(str, i, false)) != null && !s0.isEmpty()) {
                String substring = str.substring(i2);
                if (!TextUtils.isEmpty(substring)) {
                    int size = s0.size();
                    int i3 = 0;
                    while (i3 < size) {
                        Object obj = s0.get(i3);
                        i3++;
                        String str2 = (String) obj;
                        if (!TextUtils.isEmpty(str2)) {
                            if (str2.endsWith(".*")) {
                                str2 = str2.substring(0, str2.length() - 1) + "com";
                            }
                            ArrayList arrayList = this.X;
                            String str3 = null;
                            if (arrayList == null) {
                                this.X = new ArrayList();
                                arrayList = null;
                                scrItem = null;
                            } else {
                                int size2 = arrayList.size();
                                int i4 = 0;
                                while (true) {
                                    if (i4 < size2) {
                                        Object obj2 = arrayList.get(i4);
                                        i4++;
                                        scrItem = (ScrItem) obj2;
                                        if (scrItem != null && str2.equals(scrItem.f19078a)) {
                                            break;
                                        }
                                    } else {
                                        scrItem = null;
                                        break;
                                    }
                                }
                            }
                            if (scrItem == null) {
                                ?? obj3 = new Object();
                                obj3.f19078a = str2;
                                obj3.b = substring;
                                try {
                                    int indexOf = substring.indexOf(40);
                                    if (indexOf > 0) {
                                        String substring2 = substring.substring(0, indexOf);
                                        if (!TextUtils.isEmpty(substring2)) {
                                            str3 = substring2.trim();
                                        }
                                    }
                                } catch (Exception unused) {
                                }
                                if (!TextUtils.isEmpty(str3)) {
                                    ArrayList arrayList2 = obj3.f19079c;
                                    if (arrayList2 == null) {
                                        ArrayList arrayList3 = new ArrayList();
                                        obj3.f19079c = arrayList3;
                                        arrayList3.add(str3);
                                    } else if (!arrayList2.contains(str3)) {
                                        obj3.f19079c.add(str3);
                                    }
                                }
                                if (arrayList == null) {
                                    ArrayList arrayList4 = new ArrayList();
                                    arrayList4.add(obj3);
                                    this.X = arrayList4;
                                } else {
                                    arrayList.add(obj3);
                                }
                            } else {
                                scrItem.b = a.q(new StringBuilder(), scrItem.b, " ", substring);
                                try {
                                    int indexOf2 = substring.indexOf(40);
                                    if (indexOf2 > 0) {
                                        String substring3 = substring.substring(0, indexOf2);
                                        if (!TextUtils.isEmpty(substring3)) {
                                            str3 = substring3.trim();
                                        }
                                    }
                                } catch (Exception unused2) {
                                }
                                if (!TextUtils.isEmpty(str3)) {
                                    ArrayList arrayList5 = scrItem.f19079c;
                                    if (arrayList5 == null) {
                                        ArrayList arrayList6 = new ArrayList();
                                        scrItem.f19079c = arrayList6;
                                        arrayList6.add(str3);
                                    } else if (!arrayList5.contains(str3)) {
                                        scrItem.f19079c.add(str3);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public final String v() {
        ArrayList arrayList;
        if (!this.N && !this.p && !TextUtils.isEmpty(this.k1) && !TextUtils.isEmpty(this.m1) && (arrayList = this.e1) != null) {
            int size = arrayList.size();
            int i = 0;
            String str = null;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                NorItem norItem = (NorItem) obj;
                if (!this.N && !this.p && !TextUtils.isEmpty(this.k1) && !TextUtils.isEmpty(this.m1) && this.e1 != null) {
                    if (norItem != null) {
                        str = w(this.l1, this.m1, norItem.b, this.k1, norItem.f19074a, true);
                        if (!TextUtils.isEmpty(str)) {
                            break;
                        }
                    }
                }
            }
            return str;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0381 A[Catch: Exception -> 0x0453, TRY_ENTER, TryCatch #1 {Exception -> 0x0453, blocks: (B:3:0x000b, B:8:0x0017, B:10:0x0020, B:12:0x002c, B:17:0x0046, B:19:0x004e, B:24:0x00ec, B:26:0x00f6, B:27:0x0100, B:30:0x0115, B:32:0x0126, B:34:0x0130, B:37:0x013b, B:39:0x013f, B:40:0x0147, B:41:0x0152, B:45:0x0163, B:47:0x0169, B:49:0x0173, B:50:0x0179, B:52:0x0181, B:54:0x019f, B:56:0x01ad, B:58:0x01b3, B:60:0x01c0, B:62:0x01c8, B:64:0x01d9, B:66:0x01df, B:67:0x01e2, B:69:0x01e8, B:72:0x01a7, B:74:0x0187, B:76:0x0190, B:77:0x0195, B:79:0x019b, B:82:0x01ec, B:85:0x01f7, B:87:0x01fd, B:89:0x02c5, B:90:0x02cc, B:92:0x02d0, B:94:0x02d4, B:96:0x02d8, B:101:0x02e2, B:103:0x02e6, B:104:0x02f0, B:108:0x0381, B:110:0x0390, B:112:0x0398, B:121:0x02f4, B:123:0x02f8, B:124:0x0302, B:127:0x0308, B:129:0x030c, B:130:0x0316, B:132:0x031a, B:134:0x031e, B:135:0x0328, B:139:0x032f, B:141:0x0333, B:142:0x033d, B:144:0x0340, B:146:0x0344, B:147:0x034e, B:150:0x0353, B:152:0x0357, B:153:0x0361, B:155:0x0364, B:157:0x0368, B:158:0x0372, B:163:0x03a5, B:165:0x03a9, B:166:0x03b3, B:170:0x0444, B:172:0x0450, B:180:0x03b7, B:182:0x03bb, B:183:0x03c5, B:186:0x03cb, B:188:0x03cf, B:189:0x03d9, B:191:0x03dd, B:193:0x03e1, B:194:0x03eb, B:198:0x03f2, B:200:0x03f6, B:201:0x0400, B:203:0x0403, B:205:0x0407, B:206:0x0411, B:209:0x0416, B:211:0x041a, B:212:0x0424, B:214:0x0427, B:216:0x042b, B:217:0x0435, B:219:0x0214, B:220:0x0222, B:222:0x022d, B:224:0x0250, B:226:0x0257, B:242:0x025e, B:244:0x0264, B:246:0x026e, B:247:0x0275, B:249:0x027b, B:251:0x0281, B:252:0x0288, B:228:0x028c, B:230:0x0297, B:232:0x02a2, B:233:0x02a7, B:235:0x02ba, B:236:0x02ab, B:238:0x02b2, B:239:0x02b7, B:256:0x0242, B:265:0x00fe, B:266:0x0066, B:268:0x006e, B:270:0x0072, B:272:0x007c, B:276:0x00d8, B:277:0x0083, B:281:0x008a, B:285:0x0091, B:289:0x009a, B:293:0x00a3, B:297:0x00ac, B:301:0x00b5, B:305:0x00be, B:309:0x00c7, B:313:0x00d0, B:330:0x003b), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0390 A[Catch: Exception -> 0x0453, TryCatch #1 {Exception -> 0x0453, blocks: (B:3:0x000b, B:8:0x0017, B:10:0x0020, B:12:0x002c, B:17:0x0046, B:19:0x004e, B:24:0x00ec, B:26:0x00f6, B:27:0x0100, B:30:0x0115, B:32:0x0126, B:34:0x0130, B:37:0x013b, B:39:0x013f, B:40:0x0147, B:41:0x0152, B:45:0x0163, B:47:0x0169, B:49:0x0173, B:50:0x0179, B:52:0x0181, B:54:0x019f, B:56:0x01ad, B:58:0x01b3, B:60:0x01c0, B:62:0x01c8, B:64:0x01d9, B:66:0x01df, B:67:0x01e2, B:69:0x01e8, B:72:0x01a7, B:74:0x0187, B:76:0x0190, B:77:0x0195, B:79:0x019b, B:82:0x01ec, B:85:0x01f7, B:87:0x01fd, B:89:0x02c5, B:90:0x02cc, B:92:0x02d0, B:94:0x02d4, B:96:0x02d8, B:101:0x02e2, B:103:0x02e6, B:104:0x02f0, B:108:0x0381, B:110:0x0390, B:112:0x0398, B:121:0x02f4, B:123:0x02f8, B:124:0x0302, B:127:0x0308, B:129:0x030c, B:130:0x0316, B:132:0x031a, B:134:0x031e, B:135:0x0328, B:139:0x032f, B:141:0x0333, B:142:0x033d, B:144:0x0340, B:146:0x0344, B:147:0x034e, B:150:0x0353, B:152:0x0357, B:153:0x0361, B:155:0x0364, B:157:0x0368, B:158:0x0372, B:163:0x03a5, B:165:0x03a9, B:166:0x03b3, B:170:0x0444, B:172:0x0450, B:180:0x03b7, B:182:0x03bb, B:183:0x03c5, B:186:0x03cb, B:188:0x03cf, B:189:0x03d9, B:191:0x03dd, B:193:0x03e1, B:194:0x03eb, B:198:0x03f2, B:200:0x03f6, B:201:0x0400, B:203:0x0403, B:205:0x0407, B:206:0x0411, B:209:0x0416, B:211:0x041a, B:212:0x0424, B:214:0x0427, B:216:0x042b, B:217:0x0435, B:219:0x0214, B:220:0x0222, B:222:0x022d, B:224:0x0250, B:226:0x0257, B:242:0x025e, B:244:0x0264, B:246:0x026e, B:247:0x0275, B:249:0x027b, B:251:0x0281, B:252:0x0288, B:228:0x028c, B:230:0x0297, B:232:0x02a2, B:233:0x02a7, B:235:0x02ba, B:236:0x02ab, B:238:0x02b2, B:239:0x02b7, B:256:0x0242, B:265:0x00fe, B:266:0x0066, B:268:0x006e, B:270:0x0072, B:272:0x007c, B:276:0x00d8, B:277:0x0083, B:281:0x008a, B:285:0x0091, B:289:0x009a, B:293:0x00a3, B:297:0x00ac, B:301:0x00b5, B:305:0x00be, B:309:0x00c7, B:313:0x00d0, B:330:0x003b), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0444 A[Catch: Exception -> 0x0453, TRY_ENTER, TryCatch #1 {Exception -> 0x0453, blocks: (B:3:0x000b, B:8:0x0017, B:10:0x0020, B:12:0x002c, B:17:0x0046, B:19:0x004e, B:24:0x00ec, B:26:0x00f6, B:27:0x0100, B:30:0x0115, B:32:0x0126, B:34:0x0130, B:37:0x013b, B:39:0x013f, B:40:0x0147, B:41:0x0152, B:45:0x0163, B:47:0x0169, B:49:0x0173, B:50:0x0179, B:52:0x0181, B:54:0x019f, B:56:0x01ad, B:58:0x01b3, B:60:0x01c0, B:62:0x01c8, B:64:0x01d9, B:66:0x01df, B:67:0x01e2, B:69:0x01e8, B:72:0x01a7, B:74:0x0187, B:76:0x0190, B:77:0x0195, B:79:0x019b, B:82:0x01ec, B:85:0x01f7, B:87:0x01fd, B:89:0x02c5, B:90:0x02cc, B:92:0x02d0, B:94:0x02d4, B:96:0x02d8, B:101:0x02e2, B:103:0x02e6, B:104:0x02f0, B:108:0x0381, B:110:0x0390, B:112:0x0398, B:121:0x02f4, B:123:0x02f8, B:124:0x0302, B:127:0x0308, B:129:0x030c, B:130:0x0316, B:132:0x031a, B:134:0x031e, B:135:0x0328, B:139:0x032f, B:141:0x0333, B:142:0x033d, B:144:0x0340, B:146:0x0344, B:147:0x034e, B:150:0x0353, B:152:0x0357, B:153:0x0361, B:155:0x0364, B:157:0x0368, B:158:0x0372, B:163:0x03a5, B:165:0x03a9, B:166:0x03b3, B:170:0x0444, B:172:0x0450, B:180:0x03b7, B:182:0x03bb, B:183:0x03c5, B:186:0x03cb, B:188:0x03cf, B:189:0x03d9, B:191:0x03dd, B:193:0x03e1, B:194:0x03eb, B:198:0x03f2, B:200:0x03f6, B:201:0x0400, B:203:0x0403, B:205:0x0407, B:206:0x0411, B:209:0x0416, B:211:0x041a, B:212:0x0424, B:214:0x0427, B:216:0x042b, B:217:0x0435, B:219:0x0214, B:220:0x0222, B:222:0x022d, B:224:0x0250, B:226:0x0257, B:242:0x025e, B:244:0x0264, B:246:0x026e, B:247:0x0275, B:249:0x027b, B:251:0x0281, B:252:0x0288, B:228:0x028c, B:230:0x0297, B:232:0x02a2, B:233:0x02a7, B:235:0x02ba, B:236:0x02ab, B:238:0x02b2, B:239:0x02b7, B:256:0x0242, B:265:0x00fe, B:266:0x0066, B:268:0x006e, B:270:0x0072, B:272:0x007c, B:276:0x00d8, B:277:0x0083, B:281:0x008a, B:285:0x0091, B:289:0x009a, B:293:0x00a3, B:297:0x00ac, B:301:0x00b5, B:305:0x00be, B:309:0x00c7, B:313:0x00d0, B:330:0x003b), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0450 A[Catch: Exception -> 0x0453, TRY_LEAVE, TryCatch #1 {Exception -> 0x0453, blocks: (B:3:0x000b, B:8:0x0017, B:10:0x0020, B:12:0x002c, B:17:0x0046, B:19:0x004e, B:24:0x00ec, B:26:0x00f6, B:27:0x0100, B:30:0x0115, B:32:0x0126, B:34:0x0130, B:37:0x013b, B:39:0x013f, B:40:0x0147, B:41:0x0152, B:45:0x0163, B:47:0x0169, B:49:0x0173, B:50:0x0179, B:52:0x0181, B:54:0x019f, B:56:0x01ad, B:58:0x01b3, B:60:0x01c0, B:62:0x01c8, B:64:0x01d9, B:66:0x01df, B:67:0x01e2, B:69:0x01e8, B:72:0x01a7, B:74:0x0187, B:76:0x0190, B:77:0x0195, B:79:0x019b, B:82:0x01ec, B:85:0x01f7, B:87:0x01fd, B:89:0x02c5, B:90:0x02cc, B:92:0x02d0, B:94:0x02d4, B:96:0x02d8, B:101:0x02e2, B:103:0x02e6, B:104:0x02f0, B:108:0x0381, B:110:0x0390, B:112:0x0398, B:121:0x02f4, B:123:0x02f8, B:124:0x0302, B:127:0x0308, B:129:0x030c, B:130:0x0316, B:132:0x031a, B:134:0x031e, B:135:0x0328, B:139:0x032f, B:141:0x0333, B:142:0x033d, B:144:0x0340, B:146:0x0344, B:147:0x034e, B:150:0x0353, B:152:0x0357, B:153:0x0361, B:155:0x0364, B:157:0x0368, B:158:0x0372, B:163:0x03a5, B:165:0x03a9, B:166:0x03b3, B:170:0x0444, B:172:0x0450, B:180:0x03b7, B:182:0x03bb, B:183:0x03c5, B:186:0x03cb, B:188:0x03cf, B:189:0x03d9, B:191:0x03dd, B:193:0x03e1, B:194:0x03eb, B:198:0x03f2, B:200:0x03f6, B:201:0x0400, B:203:0x0403, B:205:0x0407, B:206:0x0411, B:209:0x0416, B:211:0x041a, B:212:0x0424, B:214:0x0427, B:216:0x042b, B:217:0x0435, B:219:0x0214, B:220:0x0222, B:222:0x022d, B:224:0x0250, B:226:0x0257, B:242:0x025e, B:244:0x0264, B:246:0x026e, B:247:0x0275, B:249:0x027b, B:251:0x0281, B:252:0x0288, B:228:0x028c, B:230:0x0297, B:232:0x02a2, B:233:0x02a7, B:235:0x02ba, B:236:0x02ab, B:238:0x02b2, B:239:0x02b7, B:256:0x0242, B:265:0x00fe, B:266:0x0066, B:268:0x006e, B:270:0x0072, B:272:0x007c, B:276:0x00d8, B:277:0x0083, B:281:0x008a, B:285:0x0091, B:289:0x009a, B:293:0x00a3, B:297:0x00ac, B:301:0x00b5, B:305:0x00be, B:309:0x00c7, B:313:0x00d0, B:330:0x003b), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004e A[Catch: Exception -> 0x0453, TryCatch #1 {Exception -> 0x0453, blocks: (B:3:0x000b, B:8:0x0017, B:10:0x0020, B:12:0x002c, B:17:0x0046, B:19:0x004e, B:24:0x00ec, B:26:0x00f6, B:27:0x0100, B:30:0x0115, B:32:0x0126, B:34:0x0130, B:37:0x013b, B:39:0x013f, B:40:0x0147, B:41:0x0152, B:45:0x0163, B:47:0x0169, B:49:0x0173, B:50:0x0179, B:52:0x0181, B:54:0x019f, B:56:0x01ad, B:58:0x01b3, B:60:0x01c0, B:62:0x01c8, B:64:0x01d9, B:66:0x01df, B:67:0x01e2, B:69:0x01e8, B:72:0x01a7, B:74:0x0187, B:76:0x0190, B:77:0x0195, B:79:0x019b, B:82:0x01ec, B:85:0x01f7, B:87:0x01fd, B:89:0x02c5, B:90:0x02cc, B:92:0x02d0, B:94:0x02d4, B:96:0x02d8, B:101:0x02e2, B:103:0x02e6, B:104:0x02f0, B:108:0x0381, B:110:0x0390, B:112:0x0398, B:121:0x02f4, B:123:0x02f8, B:124:0x0302, B:127:0x0308, B:129:0x030c, B:130:0x0316, B:132:0x031a, B:134:0x031e, B:135:0x0328, B:139:0x032f, B:141:0x0333, B:142:0x033d, B:144:0x0340, B:146:0x0344, B:147:0x034e, B:150:0x0353, B:152:0x0357, B:153:0x0361, B:155:0x0364, B:157:0x0368, B:158:0x0372, B:163:0x03a5, B:165:0x03a9, B:166:0x03b3, B:170:0x0444, B:172:0x0450, B:180:0x03b7, B:182:0x03bb, B:183:0x03c5, B:186:0x03cb, B:188:0x03cf, B:189:0x03d9, B:191:0x03dd, B:193:0x03e1, B:194:0x03eb, B:198:0x03f2, B:200:0x03f6, B:201:0x0400, B:203:0x0403, B:205:0x0407, B:206:0x0411, B:209:0x0416, B:211:0x041a, B:212:0x0424, B:214:0x0427, B:216:0x042b, B:217:0x0435, B:219:0x0214, B:220:0x0222, B:222:0x022d, B:224:0x0250, B:226:0x0257, B:242:0x025e, B:244:0x0264, B:246:0x026e, B:247:0x0275, B:249:0x027b, B:251:0x0281, B:252:0x0288, B:228:0x028c, B:230:0x0297, B:232:0x02a2, B:233:0x02a7, B:235:0x02ba, B:236:0x02ab, B:238:0x02b2, B:239:0x02b7, B:256:0x0242, B:265:0x00fe, B:266:0x0066, B:268:0x006e, B:270:0x0072, B:272:0x007c, B:276:0x00d8, B:277:0x0083, B:281:0x008a, B:285:0x0091, B:289:0x009a, B:293:0x00a3, B:297:0x00ac, B:301:0x00b5, B:305:0x00be, B:309:0x00c7, B:313:0x00d0, B:330:0x003b), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0064 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:259:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x00fe A[Catch: Exception -> 0x0453, TryCatch #1 {Exception -> 0x0453, blocks: (B:3:0x000b, B:8:0x0017, B:10:0x0020, B:12:0x002c, B:17:0x0046, B:19:0x004e, B:24:0x00ec, B:26:0x00f6, B:27:0x0100, B:30:0x0115, B:32:0x0126, B:34:0x0130, B:37:0x013b, B:39:0x013f, B:40:0x0147, B:41:0x0152, B:45:0x0163, B:47:0x0169, B:49:0x0173, B:50:0x0179, B:52:0x0181, B:54:0x019f, B:56:0x01ad, B:58:0x01b3, B:60:0x01c0, B:62:0x01c8, B:64:0x01d9, B:66:0x01df, B:67:0x01e2, B:69:0x01e8, B:72:0x01a7, B:74:0x0187, B:76:0x0190, B:77:0x0195, B:79:0x019b, B:82:0x01ec, B:85:0x01f7, B:87:0x01fd, B:89:0x02c5, B:90:0x02cc, B:92:0x02d0, B:94:0x02d4, B:96:0x02d8, B:101:0x02e2, B:103:0x02e6, B:104:0x02f0, B:108:0x0381, B:110:0x0390, B:112:0x0398, B:121:0x02f4, B:123:0x02f8, B:124:0x0302, B:127:0x0308, B:129:0x030c, B:130:0x0316, B:132:0x031a, B:134:0x031e, B:135:0x0328, B:139:0x032f, B:141:0x0333, B:142:0x033d, B:144:0x0340, B:146:0x0344, B:147:0x034e, B:150:0x0353, B:152:0x0357, B:153:0x0361, B:155:0x0364, B:157:0x0368, B:158:0x0372, B:163:0x03a5, B:165:0x03a9, B:166:0x03b3, B:170:0x0444, B:172:0x0450, B:180:0x03b7, B:182:0x03bb, B:183:0x03c5, B:186:0x03cb, B:188:0x03cf, B:189:0x03d9, B:191:0x03dd, B:193:0x03e1, B:194:0x03eb, B:198:0x03f2, B:200:0x03f6, B:201:0x0400, B:203:0x0403, B:205:0x0407, B:206:0x0411, B:209:0x0416, B:211:0x041a, B:212:0x0424, B:214:0x0427, B:216:0x042b, B:217:0x0435, B:219:0x0214, B:220:0x0222, B:222:0x022d, B:224:0x0250, B:226:0x0257, B:242:0x025e, B:244:0x0264, B:246:0x026e, B:247:0x0275, B:249:0x027b, B:251:0x0281, B:252:0x0288, B:228:0x028c, B:230:0x0297, B:232:0x02a2, B:233:0x02a7, B:235:0x02ba, B:236:0x02ab, B:238:0x02b2, B:239:0x02b7, B:256:0x0242, B:265:0x00fe, B:266:0x0066, B:268:0x006e, B:270:0x0072, B:272:0x007c, B:276:0x00d8, B:277:0x0083, B:281:0x008a, B:285:0x0091, B:289:0x009a, B:293:0x00a3, B:297:0x00ac, B:301:0x00b5, B:305:0x00be, B:309:0x00c7, B:313:0x00d0, B:330:0x003b), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:268:0x006e A[Catch: Exception -> 0x0453, TryCatch #1 {Exception -> 0x0453, blocks: (B:3:0x000b, B:8:0x0017, B:10:0x0020, B:12:0x002c, B:17:0x0046, B:19:0x004e, B:24:0x00ec, B:26:0x00f6, B:27:0x0100, B:30:0x0115, B:32:0x0126, B:34:0x0130, B:37:0x013b, B:39:0x013f, B:40:0x0147, B:41:0x0152, B:45:0x0163, B:47:0x0169, B:49:0x0173, B:50:0x0179, B:52:0x0181, B:54:0x019f, B:56:0x01ad, B:58:0x01b3, B:60:0x01c0, B:62:0x01c8, B:64:0x01d9, B:66:0x01df, B:67:0x01e2, B:69:0x01e8, B:72:0x01a7, B:74:0x0187, B:76:0x0190, B:77:0x0195, B:79:0x019b, B:82:0x01ec, B:85:0x01f7, B:87:0x01fd, B:89:0x02c5, B:90:0x02cc, B:92:0x02d0, B:94:0x02d4, B:96:0x02d8, B:101:0x02e2, B:103:0x02e6, B:104:0x02f0, B:108:0x0381, B:110:0x0390, B:112:0x0398, B:121:0x02f4, B:123:0x02f8, B:124:0x0302, B:127:0x0308, B:129:0x030c, B:130:0x0316, B:132:0x031a, B:134:0x031e, B:135:0x0328, B:139:0x032f, B:141:0x0333, B:142:0x033d, B:144:0x0340, B:146:0x0344, B:147:0x034e, B:150:0x0353, B:152:0x0357, B:153:0x0361, B:155:0x0364, B:157:0x0368, B:158:0x0372, B:163:0x03a5, B:165:0x03a9, B:166:0x03b3, B:170:0x0444, B:172:0x0450, B:180:0x03b7, B:182:0x03bb, B:183:0x03c5, B:186:0x03cb, B:188:0x03cf, B:189:0x03d9, B:191:0x03dd, B:193:0x03e1, B:194:0x03eb, B:198:0x03f2, B:200:0x03f6, B:201:0x0400, B:203:0x0403, B:205:0x0407, B:206:0x0411, B:209:0x0416, B:211:0x041a, B:212:0x0424, B:214:0x0427, B:216:0x042b, B:217:0x0435, B:219:0x0214, B:220:0x0222, B:222:0x022d, B:224:0x0250, B:226:0x0257, B:242:0x025e, B:244:0x0264, B:246:0x026e, B:247:0x0275, B:249:0x027b, B:251:0x0281, B:252:0x0288, B:228:0x028c, B:230:0x0297, B:232:0x02a2, B:233:0x02a7, B:235:0x02ba, B:236:0x02ab, B:238:0x02b2, B:239:0x02b7, B:256:0x0242, B:265:0x00fe, B:266:0x0066, B:268:0x006e, B:270:0x0072, B:272:0x007c, B:276:0x00d8, B:277:0x0083, B:281:0x008a, B:285:0x0091, B:289:0x009a, B:293:0x00a3, B:297:0x00ac, B:301:0x00b5, B:305:0x00be, B:309:0x00c7, B:313:0x00d0, B:330:0x003b), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00f6 A[Catch: Exception -> 0x0453, TryCatch #1 {Exception -> 0x0453, blocks: (B:3:0x000b, B:8:0x0017, B:10:0x0020, B:12:0x002c, B:17:0x0046, B:19:0x004e, B:24:0x00ec, B:26:0x00f6, B:27:0x0100, B:30:0x0115, B:32:0x0126, B:34:0x0130, B:37:0x013b, B:39:0x013f, B:40:0x0147, B:41:0x0152, B:45:0x0163, B:47:0x0169, B:49:0x0173, B:50:0x0179, B:52:0x0181, B:54:0x019f, B:56:0x01ad, B:58:0x01b3, B:60:0x01c0, B:62:0x01c8, B:64:0x01d9, B:66:0x01df, B:67:0x01e2, B:69:0x01e8, B:72:0x01a7, B:74:0x0187, B:76:0x0190, B:77:0x0195, B:79:0x019b, B:82:0x01ec, B:85:0x01f7, B:87:0x01fd, B:89:0x02c5, B:90:0x02cc, B:92:0x02d0, B:94:0x02d4, B:96:0x02d8, B:101:0x02e2, B:103:0x02e6, B:104:0x02f0, B:108:0x0381, B:110:0x0390, B:112:0x0398, B:121:0x02f4, B:123:0x02f8, B:124:0x0302, B:127:0x0308, B:129:0x030c, B:130:0x0316, B:132:0x031a, B:134:0x031e, B:135:0x0328, B:139:0x032f, B:141:0x0333, B:142:0x033d, B:144:0x0340, B:146:0x0344, B:147:0x034e, B:150:0x0353, B:152:0x0357, B:153:0x0361, B:155:0x0364, B:157:0x0368, B:158:0x0372, B:163:0x03a5, B:165:0x03a9, B:166:0x03b3, B:170:0x0444, B:172:0x0450, B:180:0x03b7, B:182:0x03bb, B:183:0x03c5, B:186:0x03cb, B:188:0x03cf, B:189:0x03d9, B:191:0x03dd, B:193:0x03e1, B:194:0x03eb, B:198:0x03f2, B:200:0x03f6, B:201:0x0400, B:203:0x0403, B:205:0x0407, B:206:0x0411, B:209:0x0416, B:211:0x041a, B:212:0x0424, B:214:0x0427, B:216:0x042b, B:217:0x0435, B:219:0x0214, B:220:0x0222, B:222:0x022d, B:224:0x0250, B:226:0x0257, B:242:0x025e, B:244:0x0264, B:246:0x026e, B:247:0x0275, B:249:0x027b, B:251:0x0281, B:252:0x0288, B:228:0x028c, B:230:0x0297, B:232:0x02a2, B:233:0x02a7, B:235:0x02ba, B:236:0x02ab, B:238:0x02b2, B:239:0x02b7, B:256:0x0242, B:265:0x00fe, B:266:0x0066, B:268:0x006e, B:270:0x0072, B:272:0x007c, B:276:0x00d8, B:277:0x0083, B:281:0x008a, B:285:0x0091, B:289:0x009a, B:293:0x00a3, B:297:0x00ac, B:301:0x00b5, B:305:0x00be, B:309:0x00c7, B:313:0x00d0, B:330:0x003b), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0113 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:322:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0126 A[Catch: Exception -> 0x0453, TryCatch #1 {Exception -> 0x0453, blocks: (B:3:0x000b, B:8:0x0017, B:10:0x0020, B:12:0x002c, B:17:0x0046, B:19:0x004e, B:24:0x00ec, B:26:0x00f6, B:27:0x0100, B:30:0x0115, B:32:0x0126, B:34:0x0130, B:37:0x013b, B:39:0x013f, B:40:0x0147, B:41:0x0152, B:45:0x0163, B:47:0x0169, B:49:0x0173, B:50:0x0179, B:52:0x0181, B:54:0x019f, B:56:0x01ad, B:58:0x01b3, B:60:0x01c0, B:62:0x01c8, B:64:0x01d9, B:66:0x01df, B:67:0x01e2, B:69:0x01e8, B:72:0x01a7, B:74:0x0187, B:76:0x0190, B:77:0x0195, B:79:0x019b, B:82:0x01ec, B:85:0x01f7, B:87:0x01fd, B:89:0x02c5, B:90:0x02cc, B:92:0x02d0, B:94:0x02d4, B:96:0x02d8, B:101:0x02e2, B:103:0x02e6, B:104:0x02f0, B:108:0x0381, B:110:0x0390, B:112:0x0398, B:121:0x02f4, B:123:0x02f8, B:124:0x0302, B:127:0x0308, B:129:0x030c, B:130:0x0316, B:132:0x031a, B:134:0x031e, B:135:0x0328, B:139:0x032f, B:141:0x0333, B:142:0x033d, B:144:0x0340, B:146:0x0344, B:147:0x034e, B:150:0x0353, B:152:0x0357, B:153:0x0361, B:155:0x0364, B:157:0x0368, B:158:0x0372, B:163:0x03a5, B:165:0x03a9, B:166:0x03b3, B:170:0x0444, B:172:0x0450, B:180:0x03b7, B:182:0x03bb, B:183:0x03c5, B:186:0x03cb, B:188:0x03cf, B:189:0x03d9, B:191:0x03dd, B:193:0x03e1, B:194:0x03eb, B:198:0x03f2, B:200:0x03f6, B:201:0x0400, B:203:0x0403, B:205:0x0407, B:206:0x0411, B:209:0x0416, B:211:0x041a, B:212:0x0424, B:214:0x0427, B:216:0x042b, B:217:0x0435, B:219:0x0214, B:220:0x0222, B:222:0x022d, B:224:0x0250, B:226:0x0257, B:242:0x025e, B:244:0x0264, B:246:0x026e, B:247:0x0275, B:249:0x027b, B:251:0x0281, B:252:0x0288, B:228:0x028c, B:230:0x0297, B:232:0x02a2, B:233:0x02a7, B:235:0x02ba, B:236:0x02ab, B:238:0x02b2, B:239:0x02b7, B:256:0x0242, B:265:0x00fe, B:266:0x0066, B:268:0x006e, B:270:0x0072, B:272:0x007c, B:276:0x00d8, B:277:0x0083, B:281:0x008a, B:285:0x0091, B:289:0x009a, B:293:0x00a3, B:297:0x00ac, B:301:0x00b5, B:305:0x00be, B:309:0x00c7, B:313:0x00d0, B:330:0x003b), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0163 A[Catch: Exception -> 0x0453, TryCatch #1 {Exception -> 0x0453, blocks: (B:3:0x000b, B:8:0x0017, B:10:0x0020, B:12:0x002c, B:17:0x0046, B:19:0x004e, B:24:0x00ec, B:26:0x00f6, B:27:0x0100, B:30:0x0115, B:32:0x0126, B:34:0x0130, B:37:0x013b, B:39:0x013f, B:40:0x0147, B:41:0x0152, B:45:0x0163, B:47:0x0169, B:49:0x0173, B:50:0x0179, B:52:0x0181, B:54:0x019f, B:56:0x01ad, B:58:0x01b3, B:60:0x01c0, B:62:0x01c8, B:64:0x01d9, B:66:0x01df, B:67:0x01e2, B:69:0x01e8, B:72:0x01a7, B:74:0x0187, B:76:0x0190, B:77:0x0195, B:79:0x019b, B:82:0x01ec, B:85:0x01f7, B:87:0x01fd, B:89:0x02c5, B:90:0x02cc, B:92:0x02d0, B:94:0x02d4, B:96:0x02d8, B:101:0x02e2, B:103:0x02e6, B:104:0x02f0, B:108:0x0381, B:110:0x0390, B:112:0x0398, B:121:0x02f4, B:123:0x02f8, B:124:0x0302, B:127:0x0308, B:129:0x030c, B:130:0x0316, B:132:0x031a, B:134:0x031e, B:135:0x0328, B:139:0x032f, B:141:0x0333, B:142:0x033d, B:144:0x0340, B:146:0x0344, B:147:0x034e, B:150:0x0353, B:152:0x0357, B:153:0x0361, B:155:0x0364, B:157:0x0368, B:158:0x0372, B:163:0x03a5, B:165:0x03a9, B:166:0x03b3, B:170:0x0444, B:172:0x0450, B:180:0x03b7, B:182:0x03bb, B:183:0x03c5, B:186:0x03cb, B:188:0x03cf, B:189:0x03d9, B:191:0x03dd, B:193:0x03e1, B:194:0x03eb, B:198:0x03f2, B:200:0x03f6, B:201:0x0400, B:203:0x0403, B:205:0x0407, B:206:0x0411, B:209:0x0416, B:211:0x041a, B:212:0x0424, B:214:0x0427, B:216:0x042b, B:217:0x0435, B:219:0x0214, B:220:0x0222, B:222:0x022d, B:224:0x0250, B:226:0x0257, B:242:0x025e, B:244:0x0264, B:246:0x026e, B:247:0x0275, B:249:0x027b, B:251:0x0281, B:252:0x0288, B:228:0x028c, B:230:0x0297, B:232:0x02a2, B:233:0x02a7, B:235:0x02ba, B:236:0x02ab, B:238:0x02b2, B:239:0x02b7, B:256:0x0242, B:265:0x00fe, B:266:0x0066, B:268:0x006e, B:270:0x0072, B:272:0x007c, B:276:0x00d8, B:277:0x0083, B:281:0x008a, B:285:0x0091, B:289:0x009a, B:293:0x00a3, B:297:0x00ac, B:301:0x00b5, B:305:0x00be, B:309:0x00c7, B:313:0x00d0, B:330:0x003b), top: B:2:0x000b }] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.mycompany.app.web.WebClean$ResItem, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void v0(java.lang.String r19, boolean r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 1108
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebClean.v0(java.lang.String, boolean, boolean):void");
    }

    public final String w(String str, String str2, String str3, String str4, List list, boolean z) {
        int indexOf;
        String str5;
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3) && (indexOf = str2.indexOf(str3)) != -1 && !c0(indexOf - 1, str2) && !c0(str3.length() + indexOf, str2)) {
            if (list != null && !TextUtils.isEmpty(str4)) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    String str6 = (String) it.next();
                    if (!this.N) {
                        if (str4.endsWith(str6)) {
                            return "no_ads";
                        }
                    } else {
                        return null;
                    }
                }
            }
            StringBuilder sb = new StringBuilder();
            if (!TextUtils.isEmpty(str)) {
                sb.append(str);
            }
            if (z) {
                str5 = "[class=\"";
            } else {
                str5 = "[id=\"";
            }
            return a.q(sb, str5, str2, "\"]");
        }
        return null;
    }

    public final void w0(boolean z) {
        this.p = z;
        this.q = null;
        this.r = null;
        this.s = null;
        this.t = null;
        this.u = null;
        this.v = null;
        this.w = null;
        this.k1 = null;
        this.l1 = null;
        this.m1 = null;
        this.n1 = null;
    }

    public final String x() {
        ArrayList arrayList;
        if (!this.N && !this.p && !TextUtils.isEmpty(this.k1) && !TextUtils.isEmpty(this.n1) && (arrayList = this.g1) != null) {
            int size = arrayList.size();
            int i = 0;
            String str = null;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                NorItem norItem = (NorItem) obj;
                if (!this.N && !this.p && !TextUtils.isEmpty(this.k1) && !TextUtils.isEmpty(this.n1) && this.g1 != null) {
                    if (norItem != null) {
                        str = w(this.l1, this.n1, norItem.b, this.k1, norItem.f19074a, false);
                        if (!TextUtils.isEmpty(str)) {
                            break;
                        }
                    }
                }
            }
            return str;
        }
        return null;
    }

    public final void x0(boolean z) {
        if (!z) {
            this.P = null;
            this.R = null;
            this.T = null;
            this.V = null;
            this.X = null;
            this.Z = null;
            this.b0 = null;
            this.d0 = null;
            this.f0 = null;
            this.h0 = null;
            this.j0 = null;
            this.l0 = null;
            this.n0 = null;
            this.p0 = null;
            this.r0 = null;
            this.t0 = null;
            this.v0 = null;
            this.x0 = null;
            this.z0 = null;
            this.B0 = null;
            this.D0 = null;
            this.F0 = null;
            this.H0 = null;
            this.J0 = null;
            this.L0 = null;
            this.N0 = null;
            this.P0 = null;
            this.R0 = null;
            this.T0 = null;
            this.V0 = null;
            this.X0 = null;
            this.Z0 = null;
        }
        this.b1 = null;
        this.d1 = null;
        this.f1 = null;
        this.h1 = null;
        this.j1 = null;
    }

    public final String y(ExpItem expItem) {
        if (!this.N && !this.p && !TextUtils.isEmpty(this.k1) && !TextUtils.isEmpty(expItem.f19072c)) {
            if (TextUtils.isEmpty(expItem.b) || expItem.b.equals(this.l1)) {
                ArrayList arrayList = expItem.f19071a;
                if (arrayList != null) {
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        String str = (String) obj;
                        if (TextUtils.isEmpty(this.k1) || this.N || this.p || this.k1.endsWith(str)) {
                            return null;
                        }
                    }
                }
                return expItem.f19072c;
            }
            return null;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x0077, code lost:
    
        if (r8.r != null) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00eb, code lost:
    
        if (com.mycompany.app.main.MainUtil.b5(r9, r11, r10, r13) != r11) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x00ff, code lost:
    
        if (com.mycompany.app.main.MainUtil.b5(r9, r11, r10, r13) == r11) goto L102;
     */
    /* JADX WARN: Removed duplicated region for block: B:77:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0132  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.StringBuilder z(java.lang.String r9, int r10, int r11, java.lang.String r12, java.lang.String r13, int r14) {
        /*
            Method dump skipped, instructions count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebClean.z(java.lang.String, int, int, java.lang.String, java.lang.String, int):java.lang.StringBuilder");
    }
}
