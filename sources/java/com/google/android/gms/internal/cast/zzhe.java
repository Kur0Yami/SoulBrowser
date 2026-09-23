package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.framework.media.CastMediaOptions;

/* loaded from: classes.dex */
final class zzhe extends zzhc {

    /* renamed from: c, reason: collision with root package name */
    public final CastMediaOptions f9714c;

    public zzhe(CastMediaOptions castMediaOptions) {
        this.f9714c = castMediaOptions;
    }

    @Override // com.google.android.gms.internal.cast.zzhc
    public final Object a(Object obj) {
        zzhd.a(obj, "use Optional.orNull() instead of Optional.or(null)");
        return this.f9714c;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzhe) {
            return this.f9714c.equals(((zzhe) obj).f9714c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f9714c.hashCode() + 1502476572;
    }

    public final String toString() {
        String obj = this.f9714c.toString();
        return android.support.v4.media.a.q(new StringBuilder(obj.length() + 13), "Optional.of(", obj, ")");
    }
}
