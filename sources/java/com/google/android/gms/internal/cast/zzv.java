package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.MediaStatus;

/* loaded from: classes.dex */
final class zzv implements com.google.android.gms.cast.framework.zzr {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzy f9843a;

    public /* synthetic */ zzv(zzy zzyVar) {
        this.f9843a = zzyVar;
    }

    @Override // com.google.android.gms.cast.framework.zzr
    public final void a(String str, long j, int i, long j2, long j3) {
        zzaa b = this.f9843a.b();
        zzcp zzcpVar = new zzcp(str);
        zzcpVar.b = j;
        zzcpVar.f9656c = i;
        zzcpVar.d = j2;
        zzcpVar.e = j3;
        zzcq zzcqVar = new zzcq(zzcpVar);
        zzcqVar.f = b.h;
        b.d.add(zzcqVar);
    }

    @Override // com.google.android.gms.cast.framework.zzr
    public final void b(MediaStatus mediaStatus) {
        if (mediaStatus != null) {
            zzaa b = this.f9843a.b();
            zzt zztVar = new zzt(new zzs(mediaStatus));
            zzt zztVar2 = b.m;
            if (zztVar2 != null && zztVar2.f9837a == 2) {
                return;
            }
            zztVar.f9838c = b.h;
            b.m = zztVar;
        }
    }

    @Override // com.google.android.gms.cast.framework.zzr
    public final void zza() {
        this.f9843a.a(new zzcs(new zzcr(3)));
    }

    @Override // com.google.android.gms.cast.framework.zzr
    public final void zzd() {
        this.f9843a.b().u++;
    }
}
