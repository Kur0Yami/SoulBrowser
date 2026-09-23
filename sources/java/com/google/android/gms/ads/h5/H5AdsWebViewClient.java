package com.google.android.gms.ads.h5;

import android.content.Context;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.gms.internal.ads.zzboj;
import com.google.android.gms.internal.ads.zzbow;
import com.google.android.gms.internal.ads.zzgqa;

@RequiresApi
/* loaded from: classes.dex */
public final class H5AdsWebViewClient extends zzboj {

    /* renamed from: a, reason: collision with root package name */
    public final zzbow f2969a;

    public H5AdsWebViewClient(@NonNull Context context, @NonNull WebView webView) {
        this.f2969a = new zzbow(context, webView);
    }

    @Override // com.google.android.gms.internal.ads.zzboj
    public final WebViewClient a() {
        return this.f2969a;
    }

    public void clearAdObjects() {
        this.f2969a.b.clearAdObjects();
    }

    @Nullable
    public WebViewClient getDelegateWebViewClient() {
        return this.f2969a.f4810a;
    }

    public void setDelegateWebViewClient(@Nullable WebViewClient webViewClient) {
        boolean z;
        zzbow zzbowVar = this.f2969a;
        zzbowVar.getClass();
        if (webViewClient != zzbowVar) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.b("Delegate cannot be itself.", z);
        zzbowVar.f4810a = webViewClient;
    }
}
