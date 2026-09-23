package com.google.android.gms.internal.auth;

import android.support.v4.media.a;

/* loaded from: classes.dex */
final class zzdi extends zzdh {

    /* renamed from: c, reason: collision with root package name */
    public final Object f9523c;

    public zzdi(Object obj) {
        this.f9523c = obj;
    }

    @Override // com.google.android.gms.internal.auth.zzdh
    public final Object a() {
        return this.f9523c;
    }

    @Override // com.google.android.gms.internal.auth.zzdh
    public final boolean b() {
        return true;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzdi) {
            return this.f9523c.equals(((zzdi) obj).f9523c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f9523c.hashCode() + 1502476572;
    }

    public final String toString() {
        return a.l("Optional.of(", this.f9523c.toString(), ")");
    }
}
