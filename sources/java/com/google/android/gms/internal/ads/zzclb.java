package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzclb {

    /* renamed from: a, reason: collision with root package name */
    public final int f5234a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f5235c;

    public zzclb(int i, int i2, int i3) {
        this.f5234a = i;
        this.f5235c = i2;
        this.b = i3;
    }

    public static zzclb a(com.google.android.gms.ads.internal.client.zzr zzrVar) {
        if (zzrVar.zzd) {
            return new zzclb(3, 0, 0);
        }
        if (zzrVar.zzi) {
            return new zzclb(2, 0, 0);
        }
        if (zzrVar.zzh) {
            return new zzclb(0, 0, 0);
        }
        return new zzclb(1, zzrVar.zzf, zzrVar.zzc);
    }

    public final boolean b() {
        return this.f5234a == 3;
    }
}
