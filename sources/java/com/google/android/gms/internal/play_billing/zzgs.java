package com.google.android.gms.internal.play_billing;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzgs implements zzha {

    /* renamed from: a, reason: collision with root package name */
    public final zzha[] f11512a;

    public zzgs(zzha... zzhaVarArr) {
        this.f11512a = zzhaVarArr;
    }

    @Override // com.google.android.gms.internal.play_billing.zzha
    public final zzgz a(Class cls) {
        for (int i = 0; i < 2; i++) {
            zzha zzhaVar = this.f11512a[i];
            if (zzhaVar.b(cls)) {
                return zzhaVar.a(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.play_billing.zzha
    public final boolean b(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (this.f11512a[i].b(cls)) {
                return true;
            }
        }
        return false;
    }
}
