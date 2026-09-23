package com.mycompany.app.cast;

import android.content.Context;
import android.support.v4.media.a;
import android.text.TextUtils;
import com.mycompany.app.soulbrowser.R;
import fi.iki.elonen.NanoHTTPD;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;

/* loaded from: classes3.dex */
public class CastServer extends NanoHTTPD {
    public static final int o = R.raw.cast_icon;
    public Context i;
    public String j;
    public HashMap k;
    public HashMap l;
    public HashMap m;
    public long n;

    public static NanoHTTPD.Response h(NanoHTTPD.Response.Status status, String str, String str2) {
        NanoHTTPD.Response c2 = NanoHTTPD.c(status, str, str2);
        c2.a("Accept-Ranges", "bytes");
        c2.a("Access-Control-Allow-Origin", "*");
        return c2;
    }

    public static NanoHTTPD.Response j(String str) {
        return h(NanoHTTPD.Response.Status.OK, "text/plain", str);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:2|(3:3|4|(2:6|7))|(3:9|10|(2:11|(1:13)(1:14)))|(2:25|26)|16|17|(1:19)(2:21|22)) */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0041 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0039 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m(java.io.InputStream r5) {
        /*
            if (r5 != 0) goto L3
            goto L41
        L3:
            r0 = 0
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Exception -> L35
            java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.lang.Exception -> L35
            java.nio.charset.Charset r3 = java.nio.charset.StandardCharsets.UTF_8     // Catch: java.lang.Exception -> L35
            r2.<init>(r5, r3)     // Catch: java.lang.Exception -> L35
            r1.<init>(r2)     // Catch: java.lang.Exception -> L35
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L33
            r2.<init>()     // Catch: java.lang.Exception -> L33
            java.lang.String r0 = "WEBVTT\n"
            r2.append(r0)     // Catch: java.lang.Exception -> L31
        L1a:
            java.lang.String r0 = r1.readLine()     // Catch: java.lang.Exception -> L31
            if (r0 == 0) goto L37
            java.lang.String r3 = "^(\\d{2}:\\d{2}:\\d{2})(,)(\\d+\\s+-->\\s+\\d+:\\d+:\\d+)(,)(\\d+)"
            java.lang.String r4 = "$1.$3.$5"
            java.lang.String r0 = r0.replaceAll(r3, r4)     // Catch: java.lang.Exception -> L31
            r2.append(r0)     // Catch: java.lang.Exception -> L31
            java.lang.String r0 = "\n"
            r2.append(r0)     // Catch: java.lang.Exception -> L31
            goto L1a
        L31:
            r0 = r1
            goto L36
        L33:
            r2 = r0
            goto L31
        L35:
            r2 = r0
        L36:
            r1 = r0
        L37:
            if (r1 == 0) goto L3c
            r1.close()     // Catch: java.lang.Exception -> L3c
        L3c:
            r5.close()     // Catch: java.lang.Exception -> L3f
        L3f:
            if (r2 != 0) goto L44
        L41:
            java.lang.String r5 = ""
            return r5
        L44:
            java.lang.String r5 = r2.toString()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.cast.CastServer.m(java.io.InputStream):java.lang.String");
    }

    @Override // fi.iki.elonen.NanoHTTPD
    public final NanoHTTPD.Response e(NanoHTTPD.HTTPSession hTTPSession) {
        int i;
        String str;
        NanoHTTPD.Method method = hTTPSession.g;
        if (NanoHTTPD.Method.f.equals(method) || NanoHTTPD.Method.f21022c.equals(method)) {
            try {
                hTTPSession.g(new HashMap());
            } catch (NanoHTTPD.ResponseException e) {
                return NanoHTTPD.c(e.f21026c, "text/plain", e.getMessage());
            } catch (Exception e2) {
                return j(e2.getMessage());
            }
        }
        try {
            if (this.i != null && this.k != null && this.l != null) {
                String str2 = hTTPSession.f;
                if (TextUtils.isEmpty(str2)) {
                    return j("Error 404: File not found");
                }
                if (str2.startsWith("/")) {
                    str2 = str2.substring(1);
                    if (TextUtils.isEmpty(str2)) {
                        return j("Error 404: File not found");
                    }
                }
                String str3 = str2;
                if ("icon".equals(str3)) {
                    try {
                        return l(this.i, str3, "image/*", 1, null, hTTPSession.i);
                    } catch (Exception e3) {
                        e = e3;
                        return j(e.getMessage());
                    }
                }
                if (str3.startsWith("sbsub_") && this.m != null) {
                    int length = str3.length();
                    if (length <= 6) {
                        return j("Error 404: File not found");
                    }
                    int lastIndexOf = str3.lastIndexOf("_");
                    if (lastIndexOf > 6 && (i = lastIndexOf + 1) < length) {
                        String substring = str3.substring(6, lastIndexOf);
                        if (TextUtils.isEmpty(substring)) {
                            return j("Error 404: File not found");
                        }
                        List list = (List) this.m.get(substring);
                        if (list != null && !list.isEmpty()) {
                            String substring2 = str3.substring(i);
                            if (TextUtils.isEmpty(substring2)) {
                                return j("Error 404: File not found");
                            }
                            Iterator it = list.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    str = (String) it.next();
                                    if (!TextUtils.isEmpty(str) && str.endsWith(substring2)) {
                                        break;
                                    }
                                } else {
                                    str = null;
                                    break;
                                }
                            }
                            if (TextUtils.isEmpty(str)) {
                                return j("Error 404: File not found");
                            }
                            return l(this.i, str, "text/plain; charset=utf-8", 2, substring2, hTTPSession.i);
                        }
                        return j("Error 404: File not found");
                    }
                    return j("Error 404: File not found");
                }
                String str4 = (String) this.k.get(str3);
                if (TextUtils.isEmpty(str4)) {
                    return j("Error 404: File not found");
                }
                return l(this.i, str4, (String) this.l.get(str3), 0, null, hTTPSession.i);
            }
            return j("Server stopped");
        } catch (Exception e4) {
            e = e4;
        }
    }

    public final String i(String str, String str2, String str3) {
        HashMap hashMap;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str3) && (hashMap = this.k) != null && this.l != null) {
            hashMap.put(str3, str);
            this.l.put(str3, str2);
            return a.p(new StringBuilder(), this.j, str3);
        }
        return null;
    }

    public final void k() {
        try {
            NanoHTTPD.d(this.f21011a);
            NanoHTTPD.DefaultAsyncRunner defaultAsyncRunner = this.f21012c;
            defaultAsyncRunner.getClass();
            ArrayList arrayList = new ArrayList(defaultAsyncRunner.b);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                NanoHTTPD.ClientHandler clientHandler = (NanoHTTPD.ClientHandler) obj;
                NanoHTTPD.d(clientHandler.f21013c);
                NanoHTTPD.d(clientHandler.f);
            }
            Thread thread = this.b;
            if (thread != null) {
                thread.join();
            }
        } catch (Exception e) {
            try {
                NanoHTTPD.h.log(Level.SEVERE, "Could not stop all connections", (Throwable) e);
            } catch (Exception unused) {
            }
        }
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0162 A[Catch: Exception -> 0x0033, TryCatch #4 {Exception -> 0x0033, blocks: (B:4:0x0011, B:9:0x0030, B:21:0x0036, B:22:0x003d, B:24:0x0062, B:26:0x006c, B:30:0x0075, B:32:0x0081, B:35:0x008b, B:43:0x00bd, B:48:0x00df, B:49:0x00e1, B:54:0x00f6, B:56:0x010d, B:57:0x0110, B:59:0x00ff, B:61:0x0153, B:63:0x0162, B:67:0x0170, B:71:0x018d, B:73:0x0197, B:75:0x01a5, B:78:0x017b, B:86:0x0039), top: B:2:0x000f }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x016b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final fi.iki.elonen.NanoHTTPD.Response l(android.content.Context r31, java.lang.String r32, java.lang.String r33, int r34, java.lang.String r35, java.util.Map r36) {
        /*
            Method dump skipped, instructions count: 462
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.cast.CastServer.l(android.content.Context, java.lang.String, java.lang.String, int, java.lang.String, java.util.Map):fi.iki.elonen.NanoHTTPD$Response");
    }
}
