package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzboe implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public final Object f4800a = new Object();
    public final HashMap b = new HashMap();

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        String concat;
        String str = (String) map.get("id");
        String str2 = (String) map.get("fail");
        String str3 = (String) map.get("fail_reason");
        String str4 = (String) map.get("fail_stack");
        String str5 = (String) map.get("result");
        if (true == TextUtils.isEmpty(str4)) {
            str3 = "Unknown Fail Reason.";
        }
        if (TextUtils.isEmpty(str4)) {
            concat = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        } else {
            concat = "\n".concat(String.valueOf(str4));
        }
        synchronized (this.f4800a) {
            try {
                zzbod zzbodVar = (zzbod) this.b.remove(str);
                if (zzbodVar == null) {
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 50);
                    sb.append("Received result for unexpected method invocation: ");
                    sb.append(str);
                    String sb2 = sb.toString();
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi(sb2);
                    return;
                }
                if (!TextUtils.isEmpty(str2)) {
                    StringBuilder sb3 = new StringBuilder(String.valueOf(str3).length() + concat.length());
                    sb3.append(str3);
                    sb3.append(concat);
                    zzbodVar.a(sb3.toString());
                    return;
                }
                if (str5 == null) {
                    zzbodVar.b(null);
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(str5);
                    if (com.google.android.gms.ads.internal.util.zze.zzc()) {
                        String jSONObject2 = jSONObject.toString(2);
                        StringBuilder sb4 = new StringBuilder(String.valueOf(jSONObject2).length() + 13);
                        sb4.append("Result GMSG: ");
                        sb4.append(jSONObject2);
                        com.google.android.gms.ads.internal.util.zze.zza(sb4.toString());
                    }
                    zzbodVar.b(jSONObject);
                } catch (JSONException e) {
                    zzbodVar.a(e.getMessage());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(String str, zzbod zzbodVar) {
        synchronized (this.f4800a) {
            this.b.put(str, zzbodVar);
        }
    }
}
