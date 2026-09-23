package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhkg {

    /* renamed from: a, reason: collision with root package name */
    public final Class f8613a;
    public final zzhxc b;

    public /* synthetic */ zzhkg(Class cls, zzhxc zzhxcVar) {
        this.f8613a = cls;
        this.b = zzhxcVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhkg)) {
            return false;
        }
        zzhkg zzhkgVar = (zzhkg) obj;
        if (!zzhkgVar.f8613a.equals(this.f8613a) || !zzhkgVar.b.equals(this.b)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(this.f8613a, this.b);
    }

    public final String toString() {
        String simpleName = this.f8613a.getSimpleName();
        String valueOf = String.valueOf(this.b);
        return android.support.v4.media.a.q(new StringBuilder(simpleName.length() + 21 + valueOf.length()), simpleName, ", object identifier: ", valueOf);
    }
}
