package com.google.android.gms.internal.fido;

import java.io.Serializable;
import java.util.Comparator;

/* loaded from: classes3.dex */
final class zzbw extends zzcs implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final Comparator f10282c;

    public zzbw(Comparator comparator) {
        comparator.getClass();
        this.f10282c = comparator;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.f10282c.compare(obj, obj2);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzbw) {
            return this.f10282c.equals(((zzbw) obj).f10282c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f10282c.hashCode();
    }

    public final String toString() {
        return this.f10282c.toString();
    }
}
