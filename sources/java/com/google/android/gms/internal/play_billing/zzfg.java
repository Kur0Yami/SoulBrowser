package com.google.android.gms.internal.play_billing;

/* loaded from: classes3.dex */
final class zzfg {

    /* renamed from: a, reason: collision with root package name */
    public final Object f11496a;
    public final int b;

    public zzfg(int i, Object obj) {
        this.f11496a = obj;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzfg)) {
            return false;
        }
        zzfg zzfgVar = (zzfg) obj;
        if (this.f11496a != zzfgVar.f11496a || this.b != zzfgVar.b) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f11496a) * 65535) + this.b;
    }
}
