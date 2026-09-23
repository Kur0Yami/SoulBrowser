package com.google.android.gms.internal.cast;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzyz implements zzzg {

    /* renamed from: a, reason: collision with root package name */
    public final zzzg[] f9888a;

    public zzyz(zzzg... zzzgVarArr) {
        this.f9888a = zzzgVarArr;
    }

    @Override // com.google.android.gms.internal.cast.zzzg
    public final boolean a(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (this.f9888a[i].a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.cast.zzzg
    public final zzzf b(Class cls) {
        for (int i = 0; i < 2; i++) {
            zzzg zzzgVar = this.f9888a[i];
            if (zzzgVar.a(cls)) {
                return zzzgVar.b(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }
}
