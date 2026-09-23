package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class zzbdh implements ValueCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbdi f4568a;
    public final /* synthetic */ zzbda b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WebView f4569c;
    public final /* synthetic */ boolean d;

    public /* synthetic */ zzbdh(zzbdi zzbdiVar, zzbda zzbdaVar, WebView webView, boolean z) {
        this.f4568a = zzbdiVar;
        this.b = zzbdaVar;
        this.f4569c = webView;
        this.d = z;
    }

    @Override // android.webkit.ValueCallback
    public final void onReceiveValue(Object obj) {
        zzbdk zzbdkVar = this.f4568a.g;
        zzbda zzbdaVar = this.b;
        WebView webView = this.f4569c;
        String str = (String) obj;
        boolean z = this.d;
        zzbdkVar.getClass();
        synchronized (zzbdaVar.g) {
            zzbdaVar.m--;
        }
        try {
            if (!TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString("text");
                if (!zzbdkVar.r && !TextUtils.isEmpty(webView.getTitle())) {
                    String title = webView.getTitle();
                    StringBuilder sb = new StringBuilder(String.valueOf(title).length() + 1 + String.valueOf(optString).length());
                    sb.append(title);
                    sb.append("\n");
                    sb.append(optString);
                    zzbdaVar.b(sb.toString(), z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                } else {
                    zzbdaVar.b(optString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                }
            }
            if (zzbdaVar.a()) {
                zzbdkVar.h.a(zzbdaVar);
            }
        } catch (JSONException unused) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Json string may be malformed.");
        } catch (Throwable th) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zze("Failed to get webview content.", th);
            com.google.android.gms.ads.internal.zzt.zzh().f("ContentFetchTask.processWebViewContent", th);
        }
    }
}
