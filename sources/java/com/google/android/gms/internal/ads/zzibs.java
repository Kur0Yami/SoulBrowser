package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzibs implements zzica {

    /* renamed from: a, reason: collision with root package name */
    public final zzica[] f8924a;

    public zzibs(zzica... zzicaVarArr) {
        this.f8924a = zzicaVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzica
    public final boolean a(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (this.f8924a[i].a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzica
    public final zzibz b(Class cls) {
        for (int i = 0; i < 2; i++) {
            zzica zzicaVar = this.f8924a[i];
            if (zzicaVar.a(cls)) {
                return zzicaVar.b(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }
}
