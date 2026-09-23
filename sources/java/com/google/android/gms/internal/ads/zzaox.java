package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzaox {

    /* renamed from: a, reason: collision with root package name */
    public final int f4298a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4299c;
    public byte[] d;
    public int e;

    public zzaox(int i) {
        this.f4298a = i;
        byte[] bArr = new byte[131];
        this.d = bArr;
        bArr[2] = 1;
    }

    public final void a() {
        this.b = false;
        this.f4299c = false;
    }

    public final void b(int i) {
        boolean z = true;
        zzgqa.f(!this.b);
        if (i != this.f4298a) {
            z = false;
        }
        this.b = z;
        if (z) {
            this.e = 3;
            this.f4299c = false;
        }
    }

    public final void c(byte[] bArr, int i, int i2) {
        if (!this.b) {
            return;
        }
        int i3 = i2 - i;
        byte[] bArr2 = this.d;
        int length = bArr2.length;
        int i4 = this.e + i3;
        if (length < i4) {
            this.d = Arrays.copyOf(bArr2, i4 + i4);
        }
        System.arraycopy(bArr, i, this.d, this.e, i3);
        this.e += i3;
    }

    public final boolean d(int i) {
        if (!this.b) {
            return false;
        }
        this.e -= i;
        this.b = false;
        this.f4299c = true;
        return true;
    }
}
