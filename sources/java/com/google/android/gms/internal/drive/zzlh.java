package com.google.android.gms.internal.drive;

/* loaded from: classes.dex */
final class zzlh implements zzlp {

    /* renamed from: a, reason: collision with root package name */
    public zzlp[] f10232a;

    @Override // com.google.android.gms.internal.drive.zzlp
    public final boolean a(Class cls) {
        for (zzlp zzlpVar : this.f10232a) {
            if (zzlpVar.a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.drive.zzlp
    public final zzlo b(Class cls) {
        String str;
        for (zzlp zzlpVar : this.f10232a) {
            if (zzlpVar.a(cls)) {
                return zzlpVar.b(cls);
            }
        }
        String name = cls.getName();
        if (name.length() != 0) {
            str = "No factory is available for message type: ".concat(name);
        } else {
            str = new String("No factory is available for message type: ");
        }
        throw new UnsupportedOperationException(str);
    }
}
