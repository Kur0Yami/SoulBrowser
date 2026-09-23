package com.google.android.gms.internal.auth;

import android.support.v4.media.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdm implements zzdj {

    /* renamed from: c, reason: collision with root package name */
    public volatile zzdj f9526c;
    public Object f;

    public final String toString() {
        Object obj = this.f9526c;
        if (obj == zzdl.f9525c) {
            obj = a.l("<supplier that returned ", String.valueOf(this.f), ">");
        }
        return a.l("Suppliers.memoize(", String.valueOf(obj), ")");
    }

    @Override // com.google.android.gms.internal.auth.zzdj
    public final Object zza() {
        zzdj zzdjVar = this.f9526c;
        zzdl zzdlVar = zzdl.f9525c;
        if (zzdjVar != zzdlVar) {
            synchronized (this) {
                try {
                    if (this.f9526c != zzdlVar) {
                        Object zza = this.f9526c.zza();
                        this.f = zza;
                        this.f9526c = zzdlVar;
                        return zza;
                    }
                } finally {
                }
            }
        }
        return this.f;
    }
}
