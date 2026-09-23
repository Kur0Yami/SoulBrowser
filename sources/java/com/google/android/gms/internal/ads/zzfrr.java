package com.google.android.gms.internal.ads;

import androidx.webkit.WebMessageCompat;
import androidx.webkit.WebViewCompat;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfrr implements WebViewCompat.WebMessageListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfrt f7604a;

    public zzfrr(zzfrt zzfrtVar) {
        this.f7604a = zzfrtVar;
    }

    @Override // androidx.webkit.WebViewCompat.WebMessageListener
    public final void a(WebMessageCompat webMessageCompat) {
        String str;
        int i = webMessageCompat.b;
        if (i == 0) {
            try {
                JSONObject jSONObject = new JSONObject(webMessageCompat.f1790a);
                String string = jSONObject.getString("method");
                String string2 = jSONObject.getJSONObject("data").getString("adSessionId");
                boolean equals = string.equals("startSession");
                zzfrt zzfrtVar = this.f7604a;
                if (!equals) {
                    if (string.equals("finishSession")) {
                        HashMap hashMap = zzfrtVar.d;
                        zzfrh zzfrhVar = (zzfrh) hashMap.get(string2);
                        if (zzfrhVar != null) {
                            zzfrhVar.b();
                            hashMap.remove(string2);
                            return;
                        }
                        return;
                    }
                    return;
                }
                zzfrtVar.a(string2);
                return;
            } catch (JSONException e) {
                zzftc.a(e, "Error parsing JS message in JavaScriptSessionService.");
                return;
            }
        }
        StringBuilder sb = new StringBuilder("Wrong data accessor type detected. ");
        if (i != 0) {
            if (i != 1) {
                str = "Unknown";
            } else {
                str = "ArrayBuffer";
            }
        } else {
            str = "String";
        }
        throw new IllegalStateException(android.support.v4.media.a.p(sb, str, " expected, but got String"));
    }
}
