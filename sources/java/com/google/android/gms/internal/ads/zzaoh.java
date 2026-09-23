package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes.dex */
final class zzaoh {
    public static final byte[] e = {0, 0, 1};

    /* renamed from: a, reason: collision with root package name */
    public boolean f4270a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f4271c;
    public byte[] d;

    public final void a(byte[] bArr, int i, int i2) {
        if (!this.f4270a) {
            return;
        }
        int i3 = i2 - i;
        byte[] bArr2 = this.d;
        int length = bArr2.length;
        int i4 = this.b + i3;
        if (length < i4) {
            this.d = Arrays.copyOf(bArr2, i4 + i4);
        }
        System.arraycopy(bArr, i, this.d, this.b, i3);
        this.b += i3;
    }
}
