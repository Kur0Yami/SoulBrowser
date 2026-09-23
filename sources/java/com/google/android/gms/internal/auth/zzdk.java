package com.google.android.gms.internal.auth;

import android.support.v4.media.a;
import java.io.Serializable;

/* loaded from: classes.dex */
final class zzdk implements Serializable, zzdj {

    /* renamed from: c, reason: collision with root package name */
    public final zzdj f9524c;
    public volatile transient boolean f;
    public transient Object g;

    public zzdk(zzdj zzdjVar) {
        this.f9524c = zzdjVar;
    }

    public final String toString() {
        Object obj;
        if (this.f) {
            obj = a.l("<supplier that returned ", String.valueOf(this.g), ">");
        } else {
            obj = this.f9524c;
        }
        return a.l("Suppliers.memoize(", obj.toString(), ")");
    }

    @Override // com.google.android.gms.internal.auth.zzdj
    public final Object zza() {
        if (!this.f) {
            synchronized (this) {
                try {
                    if (!this.f) {
                        Object zza = this.f9524c.zza();
                        this.g = zza;
                        this.f = true;
                        return zza;
                    }
                } finally {
                }
            }
        }
        return this.g;
    }
}
