package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes.dex */
final class zzdpk implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzdpm f5996a;

    public zzdpk(zzdpm zzdpmVar) {
        this.f5996a = zzdpmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void a(Object obj) {
        try {
            zzcir zzcirVar = (zzcir) ((List) obj).get(0);
            if (zzcirVar != null) {
                zzdpm zzdpmVar = this.f5996a;
                zzdpmVar.getClass();
                zzdpmVar.g.execute(new zzdpl(zzcirVar));
            }
        } catch (ClassCastException | IndexOutOfBoundsException e) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.m6)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zzh().f("omid native display exp", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.m6)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzh().f("omid native display exp", th);
        }
    }
}
