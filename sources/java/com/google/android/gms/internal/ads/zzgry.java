package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.io.Serializable;

/* loaded from: classes.dex */
final class zzgry extends zzgux implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final zzgpr f8228c = zzcy.f5582a;
    public final zzgux f = zzguv.f8262c;

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        zzgpr zzgprVar = this.f8228c;
        return this.f.compare(zzgprVar.apply(obj), zzgprVar.apply(obj2));
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzgry) {
            zzgry zzgryVar = (zzgry) obj;
            if (this.f8228c.equals(zzgryVar.f8228c) && this.f.equals(zzgryVar.f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f8228c, this.f);
    }

    public final String toString() {
        zzguv.f8262c.getClass();
        int length = "Ordering.natural()".length();
        String obj = zzcy.f5582a.toString();
        return android.support.v4.media.a.r(new StringBuilder(length + 12 + obj.length() + 1), "Ordering.natural()", ".onResultOf(", obj, ")");
    }
}
