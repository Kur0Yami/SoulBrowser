package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzaoo {

    /* renamed from: a, reason: collision with root package name */
    public final zzaga f4284a;
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4285c;
    public int d;
    public long e;
    public boolean f;
    public boolean g;
    public boolean h;
    public boolean i;
    public boolean j;
    public long k;
    public long l;
    public boolean m;

    public zzaoo(zzaga zzagaVar) {
        this.f4284a = zzagaVar;
    }

    public final void a(int i) {
        long j = this.l;
        if (j != -9223372036854775807L) {
            long j2 = this.b;
            long j3 = this.k;
            if (j2 != j3) {
                int i2 = (int) (j2 - j3);
                this.f4284a.d(j, this.m ? 1 : 0, i2, i, null);
            }
        }
    }
}
