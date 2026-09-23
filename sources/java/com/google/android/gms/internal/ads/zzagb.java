package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzagb {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f3996a = new byte[10];
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public int f3997c;
    public long d;
    public int e;
    public int f;
    public int g;

    public final void a(zzaep zzaepVar) {
        if (!this.b) {
            byte[] bArr = this.f3996a;
            zzaepVar.j(bArr, 0, 10);
            zzaepVar.zzl();
            if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111 && (bArr[7] & 254) == 186) {
                this.b = true;
            }
        }
    }

    public final void b(zzaga zzagaVar, long j, int i, int i2, int i3, zzafz zzafzVar) {
        boolean z;
        if (this.g <= i2 + i3) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.g("TrueHD chunk samples must be contiguous in the sample queue.", z);
        if (this.b) {
            int i4 = this.f3997c;
            int i5 = i4 + 1;
            this.f3997c = i5;
            if (i4 == 0) {
                this.d = j;
                this.e = i;
                this.f = 0;
            }
            this.f += i2;
            this.g = i3;
            if (i5 >= 16) {
                c(zzagaVar, zzafzVar);
            }
        }
    }

    public final void c(zzaga zzagaVar, zzafz zzafzVar) {
        if (this.f3997c > 0) {
            zzagaVar.d(this.d, this.e, this.f, this.g, zzafzVar);
            this.f3997c = 0;
        }
    }
}
