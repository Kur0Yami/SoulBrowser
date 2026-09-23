package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.internal.ads.zzbhu;
import com.google.android.gms.internal.ads.zzbip;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbp extends QueryInfoGenerationCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f3266a;
    public final /* synthetic */ TaggingLibraryJsInterface b;

    public zzbp(TaggingLibraryJsInterface taggingLibraryJsInterface, String str) {
        this.f3266a = str;
        this.b = taggingLibraryJsInterface;
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void onFailure(String str) {
        String str2;
        long j;
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("Failed to generate query info for the tagging library, error: ".concat(String.valueOf(str)));
        boolean booleanValue = ((Boolean) zzbip.f4723c.c()).booleanValue();
        TaggingLibraryJsInterface taggingLibraryJsInterface = this.b;
        if (booleanValue) {
            str2 = ",\"as\":".concat(taggingLibraryJsInterface.k.zzb().toString());
        } else {
            str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        Locale locale = Locale.getDefault();
        zzbhu zzbhuVar = zzbip.e;
        if (((Boolean) zzbhuVar.c()).booleanValue()) {
            j = ((Long) zzbip.h.c()).longValue();
        } else {
            j = 0;
        }
        final String format = String.format(locale, "window.postMessage({\"paw_id\":\"%1$s\",\"error\":\"%2$s\",\"sdk_ttl_ms\":%3$d%4$s}, '*');", this.f3266a, str, Long.valueOf(j), str2);
        if (((Boolean) zzbhuVar.c()).booleanValue()) {
            try {
                taggingLibraryJsInterface.h.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbn
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzbp.this.b.b.evaluateJavascript(format, null);
                    }
                });
            } catch (RuntimeException e) {
                com.google.android.gms.ads.internal.zzt.zzh().g("TaggingLibraryJsInterface.getQueryInfo.onFailure", e);
            }
        } else {
            taggingLibraryJsInterface.b.evaluateJavascript(format, null);
        }
        if (((Boolean) zzbip.f4723c.c()).booleanValue() && ((Boolean) zzbip.d.c()).booleanValue()) {
            taggingLibraryJsInterface.l.zza();
        }
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void onSuccess(QueryInfo queryInfo) {
        String str;
        final String format;
        long j;
        String str2 = this.f3266a;
        TaggingLibraryJsInterface taggingLibraryJsInterface = this.b;
        String query = queryInfo.getQuery();
        long j2 = 0;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("paw_id", str2);
            if (((Boolean) zzbip.f4723c.c()).booleanValue()) {
                jSONObject.put("as", taggingLibraryJsInterface.k.zzb());
            }
            if (((Boolean) zzbip.e.c()).booleanValue()) {
                j = ((Long) zzbip.h.c()).longValue();
            } else {
                j = 0;
            }
            jSONObject.put("sdk_ttl_ms", j);
            jSONObject.put("signal", query);
            format = String.format(Locale.getDefault(), "window.postMessage(%1$s, '*');", jSONObject);
        } catch (JSONException unused) {
            if (((Boolean) zzbip.f4723c.c()).booleanValue()) {
                str = ",\"as\":".concat(taggingLibraryJsInterface.k.zzb().toString());
            } else {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            Locale locale = Locale.getDefault();
            String query2 = queryInfo.getQuery();
            if (((Boolean) zzbip.e.c()).booleanValue()) {
                j2 = ((Long) zzbip.h.c()).longValue();
            }
            format = String.format(locale, "window.postMessage({\"paw_id\":\"%1$s\",\"signal\":\"%2$s\",\"sdk_ttl_ms\":%3$d%4$s}, '*');", str2, query2, Long.valueOf(j2), str);
        }
        if (((Boolean) zzbip.e.c()).booleanValue()) {
            try {
                taggingLibraryJsInterface.h.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbo
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzbp.this.b.b.evaluateJavascript(format, null);
                    }
                });
            } catch (RuntimeException e) {
                com.google.android.gms.ads.internal.zzt.zzh().g("TaggingLibraryJsInterface.getQueryInfo.onSuccess", e);
            }
        } else {
            taggingLibraryJsInterface.b.evaluateJavascript(format, null);
        }
        if (((Boolean) zzbip.f4723c.c()).booleanValue() && ((Boolean) zzbip.d.c()).booleanValue()) {
            taggingLibraryJsInterface.l.zza();
        }
    }
}
