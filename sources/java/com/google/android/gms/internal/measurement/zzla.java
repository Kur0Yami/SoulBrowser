package com.google.android.gms.internal.measurement;

/* loaded from: classes3.dex */
final class zzla implements zzlh {

    /* renamed from: a, reason: collision with root package name */
    public final zzlh[] f10389a;

    public zzla(zzlh... zzlhVarArr) {
        this.f10389a = zzlhVarArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzlh
    public final zzlg a(Class cls) {
        for (int i = 0; i < 2; i++) {
            zzlh zzlhVar = this.f10389a[i];
            if (zzlhVar.b(cls)) {
                return zzlhVar.a(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.measurement.zzlh
    public final boolean b(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (this.f10389a[i].b(cls)) {
                return true;
            }
        }
        return false;
    }
}
