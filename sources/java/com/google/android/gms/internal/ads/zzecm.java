package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzecm implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f6369a;

    public zzecm(zzclp zzclpVar) {
        this.f6369a = zzclpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        String packageName = ((zzclp) this.f6369a).a().getPackageName();
        zzijo.a(packageName);
        return packageName;
    }
}
