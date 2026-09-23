package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzdyr {

    /* renamed from: a, reason: collision with root package name */
    public final zzbon f6265a;

    public zzdyr(zzbon zzbonVar) {
        this.f6265a = zzbonVar;
    }

    public final void a(long j) {
        zzdyq zzdyqVar = new zzdyq("creation");
        zzdyqVar.f6263a = Long.valueOf(j);
        zzdyqVar.f6264c = "nativeObjectNotCreated";
        b(zzdyqVar);
    }

    public final void b(zzdyq zzdyqVar) {
        String a2 = zzdyqVar.a();
        String concat = "Dispatching AFMA event on publisher webview: ".concat(a2);
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzh(concat);
        this.f6265a.a(a2);
    }
}
