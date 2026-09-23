package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzbrl extends zzcea {

    /* renamed from: c, reason: collision with root package name */
    public final Object f4856c = new Object();
    public final zzbrq d;
    public boolean e;

    public zzbrl(zzbrq zzbrqVar) {
        this.d = zzbrqVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object, com.google.android.gms.internal.ads.zzcdx] */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.android.gms.internal.ads.zzcdv, java.lang.Object] */
    public final void d() {
        com.google.android.gms.ads.internal.util.zze.zza("release: Trying to acquire lock");
        synchronized (this.f4856c) {
            try {
                com.google.android.gms.ads.internal.util.zze.zza("release: Lock acquired");
                if (this.e) {
                    com.google.android.gms.ads.internal.util.zze.zza("release: Lock already released");
                    return;
                }
                this.e = true;
                a(new Object(), new Object());
                a(new zzbrj(this), new zzbrk(this));
                com.google.android.gms.ads.internal.util.zze.zza("release: Lock released");
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
