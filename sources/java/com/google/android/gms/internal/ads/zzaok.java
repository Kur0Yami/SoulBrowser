package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzaok {

    /* renamed from: a, reason: collision with root package name */
    public final zzaga f4276a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4277c;
    public boolean d;
    public int e;
    public int f;
    public long g;
    public long h;

    public zzaok(zzaga zzagaVar) {
        this.f4276a = zzagaVar;
    }

    public final void a(byte[] bArr, int i, int i2) {
        boolean z;
        if (this.f4277c) {
            int i3 = this.f;
            int i4 = (i + 1) - i3;
            if (i4 < i2) {
                if (((bArr[i4] & 192) >> 6) == 0) {
                    z = true;
                } else {
                    z = false;
                }
                this.d = z;
                this.f4277c = false;
                return;
            }
            this.f = (i2 - i) + i3;
        }
    }

    public final void b(int i, long j, boolean z) {
        boolean z2;
        if (this.h != -9223372036854775807L) {
            z2 = true;
        } else {
            z2 = false;
        }
        zzgqa.f(z2);
        if (this.e == 182 && z && this.b) {
            long j2 = j - this.g;
            boolean z3 = this.d;
            this.f4276a.d(this.h, z3 ? 1 : 0, (int) j2, i, null);
        }
        if (this.e != 179) {
            this.g = j;
        }
    }
}
