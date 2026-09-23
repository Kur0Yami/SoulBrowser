package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzclu implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f5256a;
    public final zzijf b;

    public zzclu(zzijf zzijfVar, zzijf zzijfVar2) {
        this.f5256a = zzijfVar;
        this.b = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.B3)).booleanValue()) {
            return new zzayq((zzayl) this.b.zzb());
        }
        return new zzayq((zzayl) this.f5256a.zzb());
    }
}
