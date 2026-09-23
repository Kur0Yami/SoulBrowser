package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzajm {

    /* renamed from: a, reason: collision with root package name */
    public final zzafk f4094a;
    public final long b;

    /* JADX WARN: Type inference failed for: r4v1, types: [com.google.android.gms.internal.ads.zzafk, java.lang.Object] */
    public zzajm(zzafk zzafkVar, long j, long j2, long[] jArr, int i, int i2) {
        ?? obj = new Object();
        obj.f3979a = zzafkVar.f3979a;
        obj.b = zzafkVar.b;
        obj.f3980c = zzafkVar.f3980c;
        obj.d = zzafkVar.d;
        obj.e = zzafkVar.e;
        obj.f = zzafkVar.f;
        obj.g = zzafkVar.g;
        this.f4094a = obj;
        this.b = j;
    }

    public final long a() {
        long j = this.b;
        if (j != -1 && j != 0) {
            return zzfj.t(this.f4094a.d, (j * r4.g) - 1);
        }
        return -9223372036854775807L;
    }
}
