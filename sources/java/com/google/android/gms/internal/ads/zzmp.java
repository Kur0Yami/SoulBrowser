package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzmp {
    public static final zzmp b = new zzmp(new zzmo());

    /* renamed from: a, reason: collision with root package name */
    public final zzgtn f9121a;

    public zzmp(zzmo zzmoVar) {
        this.f9121a = zzmoVar.f9120a;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof zzmp) && this.f9121a.equals(((zzmp) obj).f9121a)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        Boolean bool = Boolean.TRUE;
        return Objects.hash(this.f9121a, null, null, bool, bool, bool, bool, bool);
    }
}
