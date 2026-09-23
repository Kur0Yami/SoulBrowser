package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes.dex */
public final class zzbrq extends zzcea {
    public final com.google.android.gms.ads.internal.util.zzbc d;

    /* renamed from: c, reason: collision with root package name */
    public final Object f4860c = new Object();
    public boolean e = false;
    public int f = 0;

    public zzbrq(com.google.android.gms.ads.internal.util.zzbc zzbcVar) {
        this.d = zzbcVar;
    }

    public final zzbrl d() {
        boolean z;
        zzbrl zzbrlVar = new zzbrl(this);
        com.google.android.gms.ads.internal.util.zze.zza("createNewReference: Trying to acquire lock");
        synchronized (this.f4860c) {
            com.google.android.gms.ads.internal.util.zze.zza("createNewReference: Lock acquired");
            a(new zzbrm(this, zzbrlVar), new zzbrn(this, zzbrlVar));
            if (this.f >= 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z);
            this.f++;
        }
        com.google.android.gms.ads.internal.util.zze.zza("createNewReference: Lock released");
        return zzbrlVar;
    }

    public final void e() {
        boolean z;
        com.google.android.gms.ads.internal.util.zze.zza("releaseOneReference: Trying to acquire lock");
        synchronized (this.f4860c) {
            com.google.android.gms.ads.internal.util.zze.zza("releaseOneReference: Lock acquired");
            if (this.f > 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z);
            com.google.android.gms.ads.internal.util.zze.zza("Releasing 1 reference for JS Engine");
            this.f--;
            g();
        }
        com.google.android.gms.ads.internal.util.zze.zza("releaseOneReference: Lock released");
    }

    public final void f() {
        boolean z;
        com.google.android.gms.ads.internal.util.zze.zza("markAsDestroyable: Trying to acquire lock");
        synchronized (this.f4860c) {
            com.google.android.gms.ads.internal.util.zze.zza("markAsDestroyable: Lock acquired");
            if (this.f >= 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z);
            com.google.android.gms.ads.internal.util.zze.zza("Releasing root reference. JS Engine will be destroyed once other references are released.");
            this.e = true;
            g();
        }
        com.google.android.gms.ads.internal.util.zze.zza("markAsDestroyable: Lock released");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.lang.Object, com.google.android.gms.internal.ads.zzcdx] */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.android.gms.internal.ads.zzcdv, java.lang.Object] */
    public final void g() {
        boolean z;
        com.google.android.gms.ads.internal.util.zze.zza("maybeDestroy: Trying to acquire lock");
        synchronized (this.f4860c) {
            try {
                com.google.android.gms.ads.internal.util.zze.zza("maybeDestroy: Lock acquired");
                if (this.f >= 0) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.checkState(z);
                if (this.e && this.f == 0) {
                    com.google.android.gms.ads.internal.util.zze.zza("No reference is left (including root). Cleaning up engine.");
                    a(new Object(), new Object());
                } else {
                    com.google.android.gms.ads.internal.util.zze.zza("There are still references to the engine. Not destroying.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        com.google.android.gms.ads.internal.util.zze.zza("maybeDestroy: Lock released");
    }
}
