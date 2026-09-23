package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzpw {
    public static final zzpw d = new Object().a();

    /* renamed from: a, reason: collision with root package name */
    public final boolean f9177a;
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f9178c;

    public /* synthetic */ zzpw(zzpv zzpvVar) {
        this.f9177a = zzpvVar.f9175a;
        this.b = zzpvVar.b;
        this.f9178c = zzpvVar.f9176c;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && zzpw.class == obj.getClass()) {
                zzpw zzpwVar = (zzpw) obj;
                if (this.f9177a == zzpwVar.f9177a && this.b == zzpwVar.b && this.f9178c == zzpwVar.f9178c) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i = (this.f9177a ? 1 : 0) << 2;
        boolean z = this.b;
        return (z ? 1 : 0) + (z ? 1 : 0) + i + (this.f9178c ? 1 : 0);
    }
}
