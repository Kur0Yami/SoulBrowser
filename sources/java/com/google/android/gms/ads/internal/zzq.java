package com.google.android.gms.ads.internal;

import android.net.Uri;
import android.os.AsyncTask;
import android.support.v4.media.a;
import android.webkit.WebView;
import com.google.android.gms.internal.ads.zzbhw;
import java.util.TreeMap;

/* loaded from: classes.dex */
final class zzq extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzs f3177a;

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) {
        zzs zzsVar = this.f3177a;
        zzsVar.getClass();
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https://").appendEncodedPath((String) zzbhw.d.c());
        zzr zzrVar = zzsVar.h;
        builder.appendQueryParameter("query", zzrVar.d);
        builder.appendQueryParameter("pubId", zzrVar.b);
        builder.appendQueryParameter("mappver", zzrVar.f);
        TreeMap treeMap = zzrVar.f3179c;
        for (String str : treeMap.keySet()) {
            builder.appendQueryParameter(str, (String) treeMap.get(str));
        }
        Uri build = builder.build();
        String d5 = zzsVar.d5();
        String encodedQuery = build.getEncodedQuery();
        return a.q(new StringBuilder(d5.length() + 1 + String.valueOf(encodedQuery).length()), d5, "#", encodedQuery);
    }

    @Override // android.os.AsyncTask
    public final /* synthetic */ void onPostExecute(Object obj) {
        WebView webView = this.f3177a.i;
        String str = (String) obj;
        if (webView != null && str != null) {
            webView.loadUrl(str);
        }
    }
}
