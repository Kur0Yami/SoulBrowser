package com.google.android.gms.internal.ads;

import kotlin.KotlinVersion;
import kotlin.UByte;

/* loaded from: classes.dex */
public final class zzagc {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f3998a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public int f3999c;
    public int d;

    public zzagc(byte[] bArr) {
        this.f3998a = bArr;
        this.b = bArr.length;
    }

    public final boolean a() {
        int i = (this.f3998a[this.f3999c] & UByte.MAX_VALUE) >> this.d;
        c(1);
        if (1 == (i & 1)) {
            return true;
        }
        return false;
    }

    public final int b(int i) {
        int i2 = this.f3999c;
        int i3 = i2 + 1;
        int min = Math.min(i, 8 - this.d);
        byte[] bArr = this.f3998a;
        int i4 = ((bArr[i2] & UByte.MAX_VALUE) >> this.d) & (KotlinVersion.MAX_COMPONENT_VALUE >> (8 - min));
        while (min < i) {
            i4 |= (bArr[i3] & UByte.MAX_VALUE) << min;
            min += 8;
            i3++;
        }
        int i5 = i4 & ((-1) >>> (32 - i));
        c(i);
        return i5;
    }

    public final void c(int i) {
        int i2;
        int i3 = i / 8;
        int i4 = this.f3999c + i3;
        this.f3999c = i4;
        int i5 = (i - (i3 * 8)) + this.d;
        this.d = i5;
        if (i5 > 7) {
            i4++;
            this.f3999c = i4;
            i5 -= 8;
            this.d = i5;
        }
        boolean z = false;
        if (i4 >= 0 && (i4 < (i2 = this.b) || (i4 == i2 && i5 == 0))) {
            z = true;
        }
        zzgqa.f(z);
    }
}
