package com.google.android.gms.internal.fido;

import java.io.Serializable;

/* loaded from: classes3.dex */
final class zzcx extends zzcs implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final zzcs f10290c;

    public zzcx(zzcs zzcsVar) {
        this.f10290c = zzcsVar;
    }

    @Override // com.google.android.gms.internal.fido.zzcs
    public final zzcs a() {
        return this.f10290c;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.f10290c.compare(obj2, obj);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzcx) {
            return this.f10290c.equals(((zzcx) obj).f10290c);
        }
        return false;
    }

    public final int hashCode() {
        return -this.f10290c.hashCode();
    }

    public final String toString() {
        return this.f10290c.toString().concat(".reverse()");
    }
}
