package com.mycompany.app.script;

import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Locale;
import java.util.UUID;

/* loaded from: classes3.dex */
public class Script extends ScriptMetadata {
    public static String x;
    public final String p;
    public long q;
    public long r;
    public boolean s;
    public final String t;
    public final String u;
    public final String v;
    public final String w;

    public Script(String str, String str2, String[] strArr, String[] strArr2, String[] strArr3, String str3, String str4, String str5, String str6, String str7, String str8, int i, String str9, ScriptRequire[] scriptRequireArr, ScriptResource[] scriptResourceArr, String str10, String str11, String str12, String str13, String str14) {
        super(str, str2, strArr, strArr2, strArr3);
        this.f = str3;
        this.g = str4;
        this.h = str5;
        this.i = str6;
        this.j = str7;
        this.k = str8;
        this.l = i;
        this.m = str9;
        this.n = scriptRequireArr;
        this.o = scriptResourceArr;
        this.p = str10;
        this.t = str11;
        this.u = str12;
        this.v = str13;
        this.w = str14;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.mycompany.app.script.ScriptRequire a(java.lang.String r8) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r8)
            r1 = 0
            if (r0 == 0) goto L8
            goto L5d
        L8:
            com.mycompany.app.script.DownloadHelper$DownloadData r0 = com.mycompany.app.script.DownloadHelper.a(r8)
            if (r0 == 0) goto L5a
            byte[] r2 = r0.f17545a
            if (r2 != 0) goto L13
            goto L5a
        L13:
            java.io.ByteArrayInputStream r3 = new java.io.ByteArrayInputStream     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4d
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4d
            com.mycompany.app.script.UnicodeReader r2 = new com.mycompany.app.script.UnicodeReader     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4d
            java.lang.String r0 = r0.b     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4d
            r2.<init>(r3, r0)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4d
            r0 = 4096(0x1000, float:5.74E-42)
            char[] r3 = new char[r0]     // Catch: java.lang.Throwable -> L38 java.lang.Exception -> L55
            r4 = r1
        L24:
            java.io.InputStreamReader r5 = r2.f17552c     // Catch: java.lang.Throwable -> L38 java.lang.Exception -> L55
            r6 = 0
            int r5 = r5.read(r3, r6, r0)     // Catch: java.lang.Throwable -> L38 java.lang.Exception -> L55
            r7 = -1
            if (r5 == r7) goto L3f
            if (r5 <= 0) goto L24
            if (r4 != 0) goto L3b
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L38 java.lang.Exception -> L55
            r4.<init>()     // Catch: java.lang.Throwable -> L38 java.lang.Exception -> L55
            goto L3b
        L38:
            r8 = move-exception
            r1 = r2
            goto L4f
        L3b:
            r4.append(r3, r6, r5)     // Catch: java.lang.Throwable -> L38 java.lang.Exception -> L55
            goto L24
        L3f:
            if (r4 == 0) goto L46
            java.lang.String r0 = r4.toString()     // Catch: java.lang.Throwable -> L38 java.lang.Exception -> L55
            goto L47
        L46:
            r0 = r1
        L47:
            r2.close()     // Catch: java.lang.Exception -> L5b
            goto L5b
        L4b:
            r8 = move-exception
            goto L4f
        L4d:
            r2 = r1
            goto L55
        L4f:
            if (r1 == 0) goto L54
            r1.close()     // Catch: java.lang.Exception -> L54
        L54:
            throw r8
        L55:
            if (r2 == 0) goto L5a
            r2.close()     // Catch: java.lang.Exception -> L5a
        L5a:
            r0 = r1
        L5b:
            if (r0 != 0) goto L5e
        L5d:
            return r1
        L5e:
            com.mycompany.app.script.ScriptRequire r1 = new com.mycompany.app.script.ScriptRequire
            r1.<init>(r8, r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.script.Script.a(java.lang.String):com.mycompany.app.script.ScriptRequire");
    }

    public static String b(Script script, String str) {
        try {
            String str2 = script.b;
            String str3 = script.f17548a;
            String str4 = "\"" + str3.replace("\"", "\\\"") + "\", \"" + str2.replace("\"", "\\\"") + "\", \"" + str + "\"";
            String replaceAll = ("GM_" + str3 + str2 + UUID.randomUUID().toString()).replaceAll("[^0-9a-zA-Z_]", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            StringBuilder sb = new StringBuilder();
            sb.append("unsafeWindow = (function() { var el = document.createElement('p'); el.setAttribute('onclick', 'return window;'); return el.onclick(); }()); window.wrappedJSObject = unsafeWindow;\n");
            sb.append("var GM_listValues = function() { return ");
            sb.append("android.onUsListValues(");
            sb.append(str4);
            sb.append(").split(\",\"); };\n");
            sb.append("var GM_getValue = function(key, defaultValue) { ");
            sb.append("if (defaultValue === undefined) {defaultValue = null;} ");
            sb.append("defaultValue = JSON.stringify(defaultValue); ");
            sb.append("return JSON.parse(android.onUsGetValue(");
            sb.append(str4);
            sb.append(", key, defaultValue)); };\n");
            sb.append("var GM_setValue = function(key, value) { ");
            sb.append("if (value === undefined) {value = null;} ");
            sb.append("value = JSON.stringify(value); ");
            sb.append("android.onUsSetValue(");
            sb.append(str4);
            sb.append(", key, value); };\n");
            sb.append("var GM_deleteValue = function(key) { ");
            sb.append("android.onUsDeleteValue(");
            sb.append(str4);
            sb.append(", key); };\n");
            sb.append("var GM_addStyle = function(css) { ");
            sb.append("var style = document.createElement(\"style\"); ");
            sb.append("style.type = \"text/css\"; style.innerHTML = css; ");
            sb.append("document.getElementsByTagName('head')[0].appendChild(style); };\n");
            sb.append("var GM_log = function(message) { ");
            sb.append("android.onUsLog(");
            sb.append(str4);
            sb.append(", message); };\n");
            sb.append("var GM_openInTab = function(url,option) { ");
            sb.append("android.onUsOpenInTab(");
            sb.append(str4);
            sb.append(", url); };\n");
            sb.append("var GM_setClipboard = function(data,type) { ");
            sb.append("android.onUsSetClipboard(");
            sb.append(str4);
            sb.append(", data); };\n");
            sb.append("var GM_getResourceURL = function(resourceName) { return ");
            sb.append("android.onUsGetResourceURL(");
            sb.append(str4);
            sb.append(", resourceName); };\n");
            sb.append("var GM_getResourceText = function(resourceName) { return ");
            sb.append("android.onUsGetResourceText(");
            sb.append(str4);
            sb.append(", resourceName); };\n");
            sb.append("var GM_xmlhttpRequest = function(details) { \n");
            sb.append("if (details.onabort) { unsafeWindow.");
            sb.append(replaceAll);
            sb.append("GM_onAbortCallback = details.onabort;\n");
            sb.append("details.onabort = '");
            sb.append(replaceAll);
            sb.append("GM_onAbortCallback'; }\n");
            sb.append("if (details.onerror) { unsafeWindow.");
            sb.append(replaceAll);
            sb.append("GM_onErrorCallback = details.onerror;\n");
            sb.append("details.onerror = '");
            sb.append(replaceAll);
            sb.append("GM_onErrorCallback'; }\n");
            sb.append("if (details.onload) { unsafeWindow.");
            sb.append(replaceAll);
            sb.append("GM_onLoadCallback = details.onload;\n");
            sb.append("details.onload = '");
            sb.append(replaceAll);
            sb.append("GM_onLoadCallback'; }\n");
            sb.append("if (details.onprogress) { unsafeWindow.");
            sb.append(replaceAll);
            sb.append("GM_onProgressCallback = details.onprogress;\n");
            sb.append("details.onprogress = '");
            sb.append(replaceAll);
            sb.append("GM_onProgressCallback'; }\n");
            sb.append("if (details.onreadystatechange) { unsafeWindow.");
            sb.append(replaceAll);
            sb.append("GM_onReadyStateChange = details.onreadystatechange;\n");
            sb.append("details.onreadystatechange = '");
            sb.append(replaceAll);
            sb.append("GM_onReadyStateChange'; }\n");
            sb.append("if (details.ontimeout) { unsafeWindow.");
            sb.append(replaceAll);
            sb.append("GM_onTimeoutCallback = details.ontimeout;\n");
            sb.append("details.ontimeout = '");
            sb.append(replaceAll);
            sb.append("GM_onTimeoutCallback'; }\n");
            sb.append("if (details.upload) {\n");
            sb.append("if (details.upload.onabort) { unsafeWindow.");
            sb.append(replaceAll);
            sb.append("GM_uploadOnAbortCallback = details.upload.onabort;\n");
            sb.append("details.upload.onabort = '");
            sb.append(replaceAll);
            sb.append("GM_uploadOnAbortCallback'; }\n");
            sb.append("if (details.upload.onerror) { unsafeWindow.");
            sb.append(replaceAll);
            sb.append("GM_uploadOnErrorCallback = details.upload.onerror;\n");
            sb.append("details.upload.onerror = '");
            sb.append(replaceAll);
            sb.append("GM_uploadOnErrorCallback'; }\n");
            sb.append("if (details.upload.onload) { unsafeWindow.");
            sb.append(replaceAll);
            sb.append("GM_uploadOnLoadCallback = details.upload.onload;\n");
            sb.append("details.upload.onload = '");
            sb.append(replaceAll);
            sb.append("GM_uploadOnLoadCallback'; }\n");
            sb.append("if (details.upload.onprogress) { unsafeWindow.");
            sb.append(replaceAll);
            sb.append("GM_uploadOnProgressCallback = details.upload.onprogress;\n");
            sb.append("details.upload.onprogress = '");
            sb.append(replaceAll);
            sb.append("GM_uploadOnProgressCallback'; }\n");
            sb.append("}\n");
            sb.append("return JSON.parse(");
            sb.append("android.onUsXmlHttpRequest(");
            sb.append(str4);
            sb.append(", JSON.stringify(details))); };\n");
            sb.append("var GM_info = ");
            sb.append("function() {};\n");
            sb.append("var GM_registerMenuCommand = ");
            sb.append("function() {};\n");
            sb.append("var GM={};\n");
            sb.append("GM.listValues=GM_listValues;\n");
            sb.append("GM.getValue=GM_getValue;\n");
            sb.append("GM.setValue=GM_setValue;\n");
            sb.append("GM.deleteValue=GM_deleteValue;\n");
            sb.append("GM.addStyle=GM_addStyle;\n");
            sb.append("GM.log=GM_log;\n");
            sb.append("GM.openInTab=GM_openInTab;\n");
            sb.append("GM.setClipboard=GM_setClipboard;\n");
            sb.append("GM.getResourceURL=GM_getResourceURL;\n");
            sb.append("GM.getResourceText=GM_getResourceText;\n");
            sb.append("GM.xmlhttpRequest=GM_xmlhttpRequest;\n");
            sb.append("GM.info=GM_info;\n");
            sb.append("GM.registerMenuCommand=GM_registerMenuCommand;\n");
            ScriptRequire[] scriptRequireArr = script.n;
            if (scriptRequireArr != null) {
                for (ScriptRequire scriptRequire : scriptRequireArr) {
                    sb.append(scriptRequire.b);
                    sb.append("\n");
                }
            }
            sb.append(script.p);
            if ((script.l & 1) != 1) {
                sb.insert(0, "(function(){");
                sb.append("})();");
            }
            return sb.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x03a1  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x03a9 A[Catch: Exception -> 0x0440, TryCatch #0 {Exception -> 0x0440, blocks: (B:101:0x03a3, B:104:0x03a9, B:107:0x03b1, B:110:0x03b7, B:113:0x03bf, B:116:0x03c5, B:118:0x03cb, B:119:0x03dc, B:121:0x03e2, B:122:0x03f3, B:124:0x03f9, B:125:0x040a, B:127:0x0410, B:128:0x0421, B:130:0x0427, B:131:0x0438), top: B:98:0x039f }] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x039c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:212:0x029c A[Catch: Exception -> 0x0134, TryCatch #9 {Exception -> 0x0134, blocks: (B:91:0x0127, B:72:0x013f, B:74:0x0145, B:76:0x014b, B:78:0x0151, B:84:0x0160, B:86:0x0166, B:148:0x0182, B:150:0x018e, B:156:0x019d, B:158:0x01a3, B:160:0x01ab, B:162:0x01b1, B:166:0x01bc, B:168:0x01c2, B:171:0x01d0, B:177:0x01e4, B:180:0x01f0, B:183:0x01fe, B:186:0x0209, B:188:0x0211, B:189:0x021a, B:191:0x0222, B:193:0x022a, B:196:0x0235, B:199:0x0240, B:201:0x0248, B:203:0x0252, B:204:0x0257, B:206:0x025f, B:208:0x026f, B:212:0x029c, B:213:0x0286, B:215:0x028c, B:219:0x0295, B:221:0x02a1, B:223:0x02a9, B:224:0x02ae, B:226:0x02b6, B:227:0x02bb, B:229:0x02c3, B:230:0x02c8, B:232:0x02d0, B:234:0x02d9, B:236:0x02e1, B:239:0x02e9, B:241:0x02f1, B:244:0x02f6, B:246:0x02fb, B:249:0x0307, B:251:0x030f), top: B:90:0x0127 }] */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.mycompany.app.script.Script c(android.content.Context r37, java.lang.String r38, java.lang.String r39, java.lang.String r40, java.lang.String r41, java.lang.String r42, boolean r43) {
        /*
            Method dump skipped, instructions count: 1089
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.script.Script.c(android.content.Context, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, boolean):com.mycompany.app.script.Script");
    }

    public static int d(int i, String str) {
        if (!TextUtils.isEmpty(str)) {
            String trim = str.trim();
            if (!TextUtils.isEmpty(trim)) {
                String lowerCase = trim.toLowerCase(Locale.US);
                lowerCase.getClass();
                if (!lowerCase.equals("nojsclosure")) {
                    if (lowerCase.equals("nojssandbox")) {
                        return i | 2;
                    }
                } else {
                    return i | 1;
                }
            }
        }
        return i;
    }
}
