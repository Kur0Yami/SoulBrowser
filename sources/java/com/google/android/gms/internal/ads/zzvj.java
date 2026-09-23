package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzvj implements zzxw {

    /* renamed from: a, reason: collision with root package name */
    public final zzxw f9318a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzvk f9319c;

    public zzvj(zzvk zzvkVar, zzxw zzxwVar) {
        this.f9319c = zzvkVar;
        this.f9318a = zzxwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxw
    public final int a(long j) {
        if (this.f9319c.j()) {
            return -3;
        }
        return this.f9318a.a(j);
    }

    @Override // com.google.android.gms.internal.ads.zzxw
    public final int b(zzle zzleVar, zzih zzihVar, int i) {
        zzvk zzvkVar = this.f9319c;
        if (zzvkVar.j()) {
            return -3;
        }
        if (this.b) {
            zzihVar.f8931a = 4;
            return -4;
        }
        long zzi = zzvkVar.zzi();
        int b = this.f9318a.b(zzleVar, zzihVar, i);
        if (b == -5) {
            zzv zzvVar = zzleVar.b;
            zzvVar.getClass();
            int i2 = zzvVar.I;
            int i3 = zzvVar.H;
            if (i3 == 0) {
                if (i2 == 0) {
                    return -5;
                }
                i3 = 0;
            }
            if (zzvkVar.i != Long.MIN_VALUE) {
                i2 = 0;
            }
            zzt zztVar = new zzt(zzvVar);
            zztVar.G = i3;
            zztVar.H = i2;
            zzleVar.b = new zzv(zztVar);
            return -5;
        }
        long j = zzvkVar.i;
        if (j != Long.MIN_VALUE && ((b == -4 && zzihVar.f >= j) || (b == -3 && zzi == Long.MIN_VALUE && !zzihVar.e))) {
            zzihVar.c();
            zzihVar.f8931a = 4;
            this.b = true;
            return -4;
        }
        return b;
    }

    @Override // com.google.android.gms.internal.ads.zzxw
    public final boolean zzb() {
        if (!this.f9319c.j() && this.f9318a.zzb()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzxw
    public final void zzc() {
        this.f9318a.zzc();
    }
}
