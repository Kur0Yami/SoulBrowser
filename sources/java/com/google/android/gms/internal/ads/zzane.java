package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import java.util.Arrays;

/* loaded from: classes.dex */
final class zzane {
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f4230c;
    public int[] d;
    public int e;
    public int f;
    public Rect g;

    /* renamed from: a, reason: collision with root package name */
    public final int[] f4229a = new int[4];
    public int h = -1;
    public int i = -1;

    public static int a(int i, int i2) {
        return (i & 16777215) | ((i2 * 17) << 24);
    }

    public final void b(zzeq zzeqVar, boolean z, Rect rect, int[] iArr) {
        int i;
        int i2;
        int i3 = !z ? 1 : 0;
        int width = rect.width();
        int i4 = i3 * width;
        int height = rect.height();
        while (true) {
            int i5 = 0;
            do {
                int i6 = 0;
                for (int i7 = 1; i6 < i7 && i7 <= 64; i7 <<= 2) {
                    if (zzeqVar.b() < 4) {
                        i = -1;
                        i2 = 0;
                        break;
                    }
                    i6 = (i6 << 4) | zzeqVar.h(4);
                }
                i = i6 & 3;
                if (i6 < 4) {
                    i2 = width;
                } else {
                    i2 = i6 >> 2;
                }
                int min = Math.min(i2, width - i5);
                if (min > 0) {
                    int i8 = i4 + min;
                    Arrays.fill(iArr, i4, i8, this.f4229a[i]);
                    i5 += min;
                    i4 = i8;
                }
            } while (i5 < width);
            i3 += 2;
            if (i3 >= height) {
                return;
            }
            i4 = i3 * width;
            zzeqVar.k();
        }
    }
}
