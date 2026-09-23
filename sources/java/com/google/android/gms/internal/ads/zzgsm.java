package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Comparator;

/* loaded from: classes.dex */
final class zzgsm extends zzgux implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final Comparator f8236c = zzza.f9406c;

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.f8236c.compare(obj, obj2);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzgsm) {
            return this.f8236c.equals(((zzgsm) obj).f8236c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f8236c.hashCode();
    }

    public final String toString() {
        return this.f8236c.toString();
    }
}
