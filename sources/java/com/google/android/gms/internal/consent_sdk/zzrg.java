package com.google.android.gms.internal.consent_sdk;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzrg implements zzro {

    /* renamed from: a, reason: collision with root package name */
    public final zzro[] f10092a;

    public zzrg(zzro... zzroVarArr) {
        this.f10092a = zzroVarArr;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzro
    public final zzrn a(Class cls) {
        for (int i = 0; i < 2; i++) {
            zzro zzroVar = this.f10092a[i];
            if (zzroVar.b(cls)) {
                return zzroVar.a(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzro
    public final boolean b(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (this.f10092a[i].b(cls)) {
                return true;
            }
        }
        return false;
    }
}
