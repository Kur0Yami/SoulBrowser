package com.google.android.gms.internal.auth;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfo implements zzfv {

    /* renamed from: a, reason: collision with root package name */
    public final zzfv[] f9543a;

    public zzfo(zzfv... zzfvVarArr) {
        this.f9543a = zzfvVarArr;
    }

    @Override // com.google.android.gms.internal.auth.zzfv
    public final zzfu a(Class cls) {
        for (int i = 0; i < 2; i++) {
            zzfv zzfvVar = this.f9543a[i];
            if (zzfvVar.b(cls)) {
                return zzfvVar.a(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.auth.zzfv
    public final boolean b(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (this.f9543a[i].b(cls)) {
                return true;
            }
        }
        return false;
    }
}
