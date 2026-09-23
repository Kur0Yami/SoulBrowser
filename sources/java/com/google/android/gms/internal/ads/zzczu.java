package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzczu implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzczt f5638a;
    public final zzijf b;

    public zzczu(zzczt zzcztVar, zzijf zzijfVar) {
        this.f5638a = zzcztVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        String str = (String) this.b.zzb();
        zzejl zzejlVar = this.f5638a.f;
        if (zzejlVar != null) {
            return zzejlVar;
        }
        return new zzejl(str);
    }
}
