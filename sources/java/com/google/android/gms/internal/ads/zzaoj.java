package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes.dex */
final class zzaoj {
    public static final byte[] f = {0, 0, 1};

    /* renamed from: a, reason: collision with root package name */
    public boolean f4274a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f4275c;
    public int d;
    public byte[] e;

    public final void a(byte[] bArr, int i, int i2) {
        if (!this.f4274a) {
            return;
        }
        int i3 = i2 - i;
        byte[] bArr2 = this.e;
        int length = bArr2.length;
        int i4 = this.f4275c + i3;
        if (length < i4) {
            this.e = Arrays.copyOf(bArr2, i4 + i4);
        }
        System.arraycopy(bArr, i, this.e, this.f4275c, i3);
        this.f4275c += i3;
    }
}
