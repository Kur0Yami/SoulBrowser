package com.google.android.gms.internal.auth;

import android.support.v4.media.a;
import java.io.Serializable;
import java.util.Arrays;

/* loaded from: classes.dex */
final class zzdn implements Serializable, zzdj {

    /* renamed from: c, reason: collision with root package name */
    public final Object f9527c;

    public zzdn(Object obj) {
        this.f9527c = obj;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzdn)) {
            return false;
        }
        Object obj2 = ((zzdn) obj).f9527c;
        Object obj3 = this.f9527c;
        if (obj3 != obj2 && !obj3.equals(obj2)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f9527c});
    }

    public final String toString() {
        return a.l("Suppliers.ofInstance(", this.f9527c.toString(), ")");
    }

    @Override // com.google.android.gms.internal.auth.zzdj
    public final Object zza() {
        return this.f9527c;
    }
}
