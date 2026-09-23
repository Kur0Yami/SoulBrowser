package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
final class zzhju {

    /* renamed from: a, reason: collision with root package name */
    public final Class f8602a;
    public final Class b;

    public /* synthetic */ zzhju(Class cls, Class cls2) {
        this.f8602a = cls;
        this.b = cls2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhju)) {
            return false;
        }
        zzhju zzhjuVar = (zzhju) obj;
        if (!zzhjuVar.f8602a.equals(this.f8602a) || !zzhjuVar.b.equals(this.b)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(this.f8602a, this.b);
    }

    public final String toString() {
        String simpleName = this.f8602a.getSimpleName();
        String simpleName2 = this.b.getSimpleName();
        return android.support.v4.media.a.q(new StringBuilder(simpleName.length() + 22 + simpleName2.length()), simpleName, " with primitive type: ", simpleName2);
    }
}
