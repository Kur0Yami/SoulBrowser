package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzgqf extends zzgpy {

    /* renamed from: c, reason: collision with root package name */
    public final Object f8208c;

    public zzgqf(Object obj) {
        this.f8208c = obj;
    }

    @Override // com.google.android.gms.internal.ads.zzgpy
    public final Object a() {
        return this.f8208c;
    }

    @Override // com.google.android.gms.internal.ads.zzgpy
    public final zzgpy b(zzgpr zzgprVar) {
        Object apply = zzgprVar.apply(this.f8208c);
        zzgqa.h(apply, "the Function passed to Optional.transform() must not return null.");
        return new zzgqf(apply);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzgqf) {
            return this.f8208c.equals(((zzgqf) obj).f8208c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f8208c.hashCode() + 1502476572;
    }

    public final String toString() {
        String obj = this.f8208c.toString();
        return android.support.v4.media.a.q(new StringBuilder(obj.length() + 13), "Optional.of(", obj, ")");
    }
}
