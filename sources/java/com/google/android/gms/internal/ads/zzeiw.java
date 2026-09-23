package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

/* loaded from: classes.dex */
public interface zzeiw {
    void a(zzfrt zzfrtVar, View view);

    void b(zzfrl zzfrlVar);

    zzejb c(WebView webView, zzeix zzeixVar, zzeiy zzeiyVar, String str, String str2, String str3, String str4);

    void d(zzfrl zzfrlVar);

    void e(zzfrl zzfrlVar, View view);

    zzejb f(WebView webView, zzeix zzeixVar, zzeiy zzeiyVar, String str, String str2, String str3);

    void g(zzfrt zzfrtVar, zzfrs zzfrsVar);

    zzfrt h(VersionInfoParcel versionInfoParcel, WebView webView);

    void i(zzfrl zzfrlVar, View view);

    boolean zza(Context context);

    String zzb();
}
