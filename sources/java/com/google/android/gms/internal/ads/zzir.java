package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzir implements zzlj {

    /* renamed from: c, reason: collision with root package name */
    public final zzmt f9025c;
    public final zziq f;
    public zzmi g;
    public zzlj h;
    public boolean i;
    public boolean j;

    /* JADX WARN: Type inference failed for: r2v1, types: [com.google.android.gms.internal.ads.zzmt, java.lang.Object] */
    public zzir(zziq zziqVar) {
        this.f = zziqVar;
        ?? obj = new Object();
        obj.h = zzav.d;
        this.f9025c = obj;
        this.i = true;
    }

    public final void a(zzmi zzmiVar) {
        zzlj zzljVar;
        zzlj zzd = zzmiVar.zzd();
        if (zzd != null && zzd != (zzljVar = this.h)) {
            if (zzljVar == null) {
                this.h = zzd;
                this.g = zzmiVar;
                ((zzsw) zzd).j(this.f9025c.h);
                return;
            }
            throw new zzit(2, new IllegalStateException("Multiple renderer media clocks enabled."), 1000);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlj
    public final void j(zzav zzavVar) {
        zzlj zzljVar = this.h;
        if (zzljVar != null) {
            zzljVar.j(zzavVar);
            zzavVar = this.h.zzj();
        }
        this.f9025c.j(zzavVar);
    }

    @Override // com.google.android.gms.internal.ads.zzlj
    public final long zzg() {
        if (this.i) {
            return this.f9025c.zzg();
        }
        zzlj zzljVar = this.h;
        zzljVar.getClass();
        return zzljVar.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzlj
    public final boolean zzh() {
        if (this.i) {
            return false;
        }
        zzlj zzljVar = this.h;
        zzljVar.getClass();
        return zzljVar.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzlj
    public final zzav zzj() {
        zzlj zzljVar = this.h;
        if (zzljVar != null) {
            return zzljVar.zzj();
        }
        return this.f9025c.h;
    }
}
