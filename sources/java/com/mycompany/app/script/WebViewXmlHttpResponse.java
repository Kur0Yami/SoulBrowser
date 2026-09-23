package com.mycompany.app.script;

import com.google.android.gms.ads.RequestConfiguration;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class WebViewXmlHttpResponse {

    /* renamed from: a, reason: collision with root package name */
    public int f17556a = 0;
    public String b;

    /* renamed from: c, reason: collision with root package name */
    public String f17557c;
    public int d;
    public String e;
    public final JSONObject f;
    public String g;
    public boolean h;
    public long i;
    public long j;

    public WebViewXmlHttpResponse(JSONObject jSONObject) {
        this.f = jSONObject;
    }

    public final String a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("readyState", this.f17556a);
            jSONObject.put("responseHeaders", this.b);
            jSONObject.put("responseText", this.f17557c);
            jSONObject.put("status", this.d);
            jSONObject.put("statusText", this.e);
            jSONObject.put("finalUrl", this.g);
            jSONObject.put("lengthComputable", this.h);
            jSONObject.put("loaded", this.i);
            jSONObject.put("total", this.j);
            JSONObject jSONObject2 = this.f;
            if (jSONObject2 != null) {
                jSONObject.put("context", jSONObject2);
            }
        } catch (JSONException | Exception unused) {
            jSONObject = null;
        }
        if (jSONObject != null) {
            try {
                return JSONObject.quote(jSONObject.toString());
            } catch (Exception unused2) {
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }
}
