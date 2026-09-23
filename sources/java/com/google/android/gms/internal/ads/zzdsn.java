package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzdsn implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.zza f6103a;
    public final Context b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdxe f6104c;
    public final zzehu d;
    public final Executor e;
    public final zzayq f;
    public final VersionInfoParcel g;
    public final zzfpi h;
    public final zzeif i;
    public final zzfio j;

    public zzdsn(Context context, Executor executor, zzayq zzayqVar, VersionInfoParcel versionInfoParcel, com.google.android.gms.ads.internal.zza zzaVar, zzehu zzehuVar, zzfpi zzfpiVar, zzdxe zzdxeVar, zzeif zzeifVar, zzfio zzfioVar) {
        this.b = context;
        this.e = executor;
        this.f = zzayqVar;
        this.g = versionInfoParcel;
        this.f6103a = zzaVar;
        this.d = zzehuVar;
        this.h = zzfpiVar;
        this.f6104c = zzdxeVar;
        this.i = zzeifVar;
        this.j = zzfioVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        final zzdsp zzdspVar = new zzdsp(this);
        synchronized (zzdspVar) {
            final String str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.C4);
            final zzayq zzayqVar = zzdspVar.f;
            final com.google.android.gms.ads.internal.zza zzaVar = zzdspVar.b;
            final zzeif zzeifVar = zzdspVar.k;
            final Context context = zzdspVar.f6108c;
            final zzfio zzfioVar = zzdspVar.l;
            final VersionInfoParcel versionInfoParcel = zzdspVar.g;
            final zzdxe zzdxeVar = zzdspVar.d;
            ListenableFuture i = zzgym.i(zzgym.d(new zzgxt() { // from class: com.google.android.gms.internal.ads.zzcjf
                @Override // com.google.android.gms.internal.ads.zzgxt
                public final ListenableFuture zza() {
                    com.google.android.gms.ads.internal.zzt.zzd();
                    zzclb zzclbVar = new zzclb(0, 0, 0);
                    zzcir a2 = zzcjh.a(context, versionInfoParcel, zzaVar, null, zzayqVar, new zzbfj(), null, zzclbVar, zzdxeVar, zzeifVar, null, null, zzfioVar, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, false, false);
                    final zzcds zzcdsVar = new zzcds(a2);
                    a2.D().k = new zzckn() { // from class: com.google.android.gms.internal.ads.zzcje
                        @Override // com.google.android.gms.internal.ads.zzckn
                        public final /* synthetic */ void a(String str2, int i2, String str3, boolean z) {
                            zzcds.this.c();
                        }
                    };
                    a2.loadUrl(str);
                    return zzcdsVar;
                }
            }, zzcdo.f), new zzgpr() { // from class: com.google.android.gms.internal.ads.zzdsm
                @Override // com.google.android.gms.internal.ads.zzgpr
                public final /* synthetic */ Object apply(Object obj) {
                    zzcir zzcirVar = (zzcir) obj;
                    zzdsp zzdspVar2 = zzdsp.this;
                    zzcirVar.l("/result", zzdspVar2.h);
                    zzcjc D = zzcirVar.D();
                    com.google.android.gms.ads.internal.zzb zzbVar = new com.google.android.gms.ads.internal.zzb(zzdspVar2.f6108c, null, null);
                    zzehu zzehuVar = zzdspVar2.i;
                    zzfpi zzfpiVar = zzdspVar2.j;
                    zzdxe zzdxeVar2 = zzdspVar2.d;
                    zzdsd zzdsdVar = zzdspVar2.f6107a;
                    D.v(null, zzdsdVar, zzdsdVar, zzdsdVar, zzdsdVar, false, null, zzbVar, null, null, zzehuVar, zzfpiVar, zzdxeVar2, null, null, null, null, null, null, null, null, null);
                    return zzcirVar;
                }
            }, zzdspVar.e);
            zzdspVar.m = i;
            zzcdr.a(i, "NativeJavascriptExecutor.initializeEngine");
        }
        return zzdspVar;
    }
}
