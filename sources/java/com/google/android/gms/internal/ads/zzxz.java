package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Random;

/* loaded from: classes.dex */
public final class zzxz {

    /* renamed from: a, reason: collision with root package name */
    public final Random f9379a;
    public final int[] b;

    /* renamed from: c, reason: collision with root package name */
    public final int[] f9380c;

    public zzxz() {
        this(new Random());
    }

    public final zzxz a(int i) {
        int[] iArr;
        Random random;
        int[] iArr2 = new int[i];
        int[] iArr3 = new int[i];
        int i2 = 0;
        while (true) {
            iArr = this.b;
            random = this.f9379a;
            if (i2 >= i) {
                break;
            }
            iArr2[i2] = random.nextInt(iArr.length + 1);
            int i3 = i2 + 1;
            int nextInt = random.nextInt(i3);
            iArr3[i2] = iArr3[nextInt];
            iArr3[nextInt] = i2;
            i2 = i3;
        }
        Arrays.sort(iArr2);
        int[] iArr4 = new int[iArr.length + i];
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < iArr.length + i; i6++) {
            if (i4 < i && i5 == iArr2[i4]) {
                iArr4[i6] = iArr3[i4];
                i4++;
            } else {
                int i7 = i5 + 1;
                int i8 = iArr[i5];
                iArr4[i6] = i8;
                if (i8 >= 0) {
                    iArr4[i6] = i8 + i;
                }
                i5 = i7;
            }
        }
        return new zzxz(iArr4, new Random(random.nextLong()));
    }

    public zzxz(Random random) {
        this(new int[0], random);
    }

    public zzxz(int[] iArr, Random random) {
        this.b = iArr;
        this.f9379a = random;
        this.f9380c = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            this.f9380c[iArr[i]] = i;
        }
    }
}
