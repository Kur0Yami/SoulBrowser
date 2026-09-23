package com.google.android.gms.internal.ads;

import java.io.Serializable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgqt implements Serializable, zzgqs {

    /* renamed from: c, reason: collision with root package name */
    public final transient zzgqz f8214c = new Object();
    public final zzgqs f;
    public volatile transient boolean g;
    public transient Object h;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzgqz, java.lang.Object] */
    public zzgqt(zzgqs zzgqsVar) {
        this.f = zzgqsVar;
    }

    public final String toString() {
        Object obj;
        if (this.g) {
            String valueOf = String.valueOf(this.h);
            obj = android.support.v4.media.a.q(new StringBuilder(valueOf.length() + 25), "<supplier that returned ", valueOf, ">");
        } else {
            obj = this.f;
        }
        String obj2 = obj.toString();
        return android.support.v4.media.a.q(new StringBuilder(obj2.length() + 19), "Suppliers.memoize(", obj2, ")");
    }

    @Override // com.google.android.gms.internal.ads.zzgqs
    public final Object zza() {
        if (!this.g) {
            synchronized (this.f8214c) {
                try {
                    if (!this.g) {
                        Object zza = this.f.zza();
                        this.h = zza;
                        this.g = true;
                        return zza;
                    }
                } finally {
                }
            }
        }
        return this.h;
    }
}
