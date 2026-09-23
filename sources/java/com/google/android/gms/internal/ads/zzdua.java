package com.google.android.gms.internal.ads;

import android.content.Context;
import android.webkit.WebView;
import androidx.webkit.WebViewCompat;
import androidx.webkit.internal.WebViewFeatureInternal;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

/* loaded from: classes.dex */
public final class zzdua {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6145a;
    public final zzayq b;

    /* renamed from: c, reason: collision with root package name */
    public final zzbhr f6146c;
    public final VersionInfoParcel d;
    public final com.google.android.gms.ads.internal.zza e;
    public final zzbfj f;
    public final zzddl g;
    public final zzeif h;
    public final zzfio i;
    public final zzdxe j;
    public final zzckq k;

    public zzdua(Context context, zzayq zzayqVar, zzbhr zzbhrVar, VersionInfoParcel versionInfoParcel, com.google.android.gms.ads.internal.zza zzaVar, zzbfj zzbfjVar, zzddl zzddlVar, zzeif zzeifVar, zzfio zzfioVar, zzdxe zzdxeVar, zzckq zzckqVar) {
        this.f6145a = context;
        this.b = zzayqVar;
        this.f6146c = zzbhrVar;
        this.d = versionInfoParcel;
        this.e = zzaVar;
        this.f = zzbfjVar;
        this.g = zzddlVar;
        this.h = zzeifVar;
        this.i = zzfioVar;
        this.j = zzdxeVar;
        this.k = zzckqVar;
    }

    public final zzcir a(com.google.android.gms.ads.internal.client.zzr zzrVar, zzfhr zzfhrVar, zzfhu zzfhuVar) {
        zzclb a2 = zzclb.a(zzrVar);
        String str = zzrVar.zza;
        zzcir a3 = zzcjh.a(this.f6145a, this.d, this.e, new zzdtp(this), this.b, this.f, this.f6146c, a2, this.j, this.h, zzfhrVar, zzfhuVar, this.i, str, false, false);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.uf)).booleanValue()) {
            WebView zzD = a3.zzD();
            if (this.k.f5221a != null) {
                try {
                    boolean z = WebViewCompat.f1792a;
                    if (WebViewFeatureInternal.m.d()) {
                        WebViewCompat.b(zzD).f1815a.setProfile("GMA_WEBVIEW_PROFILE");
                        com.google.android.gms.ads.internal.util.zze.zza("WebViewCompat Profile is defined");
                        return a3;
                    }
                    throw WebViewFeatureInternal.a();
                } catch (IllegalStateException e) {
                    String concat = "WebViewCompat error: ".concat(e.toString());
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi(concat);
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.tf)).booleanValue()) {
                        com.google.android.gms.ads.internal.zzt.zzh().f("WebViewCompat.setProfile", e);
                    }
                }
            }
        }
        return a3;
    }
}
