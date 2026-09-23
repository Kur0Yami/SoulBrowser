package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
final class zzhkh {

    /* renamed from: a, reason: collision with root package name */
    public final Class f8614a;
    public final Class b;

    public /* synthetic */ zzhkh(Class cls, Class cls2) {
        this.f8614a = cls;
        this.b = cls2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhkh)) {
            return false;
        }
        zzhkh zzhkhVar = (zzhkh) obj;
        if (!zzhkhVar.f8614a.equals(this.f8614a) || !zzhkhVar.b.equals(this.b)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(this.f8614a, this.b);
    }

    public final String toString() {
        String simpleName = this.f8614a.getSimpleName();
        String simpleName2 = this.b.getSimpleName();
        return android.support.v4.media.a.q(new StringBuilder(simpleName.length() + 26 + simpleName2.length()), simpleName, " with serialization type: ", simpleName2);
    }
}
