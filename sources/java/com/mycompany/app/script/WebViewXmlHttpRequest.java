package com.mycompany.app.script;

import android.content.Context;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.util.Base64;
import android.webkit.WebView;
import com.google.android.gms.common.internal.ImagesContract;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class WebViewXmlHttpRequest {

    /* renamed from: a, reason: collision with root package name */
    public final Context f17553a;
    public final WebView b;

    /* renamed from: c, reason: collision with root package name */
    public final String f17554c;
    public final String d;
    public final JSONObject e;
    public final JSONObject f;
    public final JSONObject g;
    public final String h;
    public final String i;
    public final String j;
    public final String k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;
    public final String p;
    public final int q;
    public final boolean r;

    public WebViewXmlHttpRequest(Context context, WebView webView, String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f17553a = context;
            this.b = webView;
            try {
                JSONObject jSONObject = new JSONObject(str);
                String string = jSONObject.getString(ImagesContract.URL);
                this.f17554c = string;
                if (!TextUtils.isEmpty(string)) {
                    String string2 = jSONObject.getString("method");
                    this.d = string2;
                    if (!TextUtils.isEmpty(string2)) {
                        this.e = jSONObject.optJSONObject("context");
                        this.f = jSONObject.optJSONObject("headers");
                        this.g = jSONObject.optJSONObject("upload");
                        this.h = jSONObject.optString("data");
                        this.i = jSONObject.optString("onload");
                        this.j = jSONObject.optString("onerror");
                        this.k = jSONObject.optString("onprogress");
                        this.l = jSONObject.optString("onreadystatechange");
                        this.m = jSONObject.optString("overrideMimeType");
                        this.n = jSONObject.optString("user");
                        this.o = jSONObject.optString("password");
                        this.p = jSONObject.optString("ontimeout");
                        this.q = jSONObject.optInt("timeout");
                        this.r = jSONObject.optBoolean("synchronous");
                    }
                }
            } catch (JSONException | Exception unused) {
            }
        }
    }

    public static String f(HttpURLConnection httpURLConnection) {
        List<String> value;
        try {
            Set<Map.Entry<String, List<String>>> entrySet = httpURLConnection.getHeaderFields().entrySet();
            if (entrySet != null) {
                StringBuilder sb = null;
                for (Map.Entry<String, List<String>> entry : entrySet) {
                    String key = entry.getKey();
                    if (!TextUtils.isEmpty(key) && (value = entry.getValue()) != null && !value.isEmpty()) {
                        if (sb == null) {
                            sb = new StringBuilder();
                        }
                        sb.append(key.toLowerCase(Locale.US));
                        sb.append(": ");
                        int size = value.size();
                        if (size == 1) {
                            sb.append(value.get(0));
                        } else {
                            for (int i = 0; i < size; i++) {
                                sb.append(value.get(i));
                                if (i != size - 1) {
                                    sb.append("; ");
                                }
                            }
                        }
                    }
                }
                if (sb != null) {
                    return sb.toString();
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public final WebViewXmlHttpResponse a() {
        if (this.r) {
            return b();
        }
        WebViewXmlHttpResponse webViewXmlHttpResponse = new WebViewXmlHttpResponse(this.e);
        Context context = this.f17553a;
        if (context == null) {
            return webViewXmlHttpResponse;
        }
        MainApp.J(context, new Runnable() { // from class: com.mycompany.app.script.WebViewXmlHttpRequest.1
            @Override // java.lang.Runnable
            public final void run() {
                WebViewXmlHttpRequest.this.b();
            }
        });
        return webViewXmlHttpResponse;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01a3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x019e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0199 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0174  */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r9v23, types: [com.mycompany.app.script.UnicodeReader] */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v26 */
    /* JADX WARN: Type inference failed for: r9v9, types: [com.mycompany.app.script.UnicodeReader] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.mycompany.app.script.WebViewXmlHttpResponse b() {
        /*
            Method dump skipped, instructions count: 423
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.script.WebViewXmlHttpRequest.b():com.mycompany.app.script.WebViewXmlHttpResponse");
    }

    public final void c(WebViewXmlHttpResponse webViewXmlHttpResponse, String str) {
        WebView webView;
        if (TextUtils.isEmpty(str) || (webView = this.b) == null) {
            return;
        }
        MainUtil.I(webView, a.n("(function(){unsafeWindow.", str, "(JSON.parse(", webViewXmlHttpResponse.a(), "));})();"), true);
    }

    public final void d(WebViewXmlHttpResponse webViewXmlHttpResponse) {
        JSONObject jSONObject = this.g;
        if (jSONObject != null && jSONObject.length() != 0) {
            c(webViewXmlHttpResponse, jSONObject.optString("onload"));
        }
    }

    public final byte[] e() {
        String str = this.h;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException | Exception unused) {
            return null;
        }
    }

    public final void g(HttpURLConnection httpURLConnection) {
        try {
            String encodeToString = Base64.encodeToString((this.n + ":" + this.o).getBytes("UTF-8"), 0);
            StringBuilder sb = new StringBuilder("Basic ");
            sb.append(encodeToString);
            httpURLConnection.setRequestProperty("Authorization", sb.toString());
        } catch (Exception unused) {
        }
    }

    public final void h(HttpURLConnection httpURLConnection) {
        JSONObject jSONObject = this.f;
        if (jSONObject != null) {
            try {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    String string = jSONObject.getString(next);
                    if (!TextUtils.isEmpty(next) && !TextUtils.isEmpty(string)) {
                        httpURLConnection.setRequestProperty(next, string);
                    }
                }
            } catch (JSONException | Exception unused) {
            }
        }
    }
}
