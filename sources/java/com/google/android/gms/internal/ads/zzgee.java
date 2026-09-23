package com.google.android.gms.internal.ads;

import kotlin.KotlinVersion;

/* loaded from: classes.dex */
public final class zzgee {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f7870a = new byte[256];

    public zzgee(byte[] bArr) {
        for (int i = 0; i < 256; i++) {
            this.f7870a[i] = (byte) i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 256; i3++) {
            byte[] bArr2 = this.f7870a;
            byte b = bArr2[i3];
            i2 = (i2 + b + bArr[i3 % bArr.length]) & KotlinVersion.MAX_COMPONENT_VALUE;
            bArr2[i3] = bArr2[i2];
            bArr2[i2] = b;
        }
    }
}
