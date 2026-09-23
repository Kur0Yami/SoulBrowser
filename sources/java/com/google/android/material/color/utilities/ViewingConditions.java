package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;

@RestrictTo
/* loaded from: classes3.dex */
public final class ViewingConditions {
    static {
        double a2 = (ColorUtils.a(50.0d) * 63.66197723675813d) / 100.0d;
        double max = Math.max(0.1d, 50.0d);
        double[] dArr = ColorUtils.f11736a;
        double d = dArr[0];
        double[][] dArr2 = Cam16.f11735a;
        double[] dArr3 = dArr2[0];
        double d2 = dArr3[0] * d;
        double d3 = dArr[1];
        double d4 = (dArr3[1] * d3) + d2;
        double d5 = dArr[2];
        double d6 = (dArr3[2] * d5) + d4;
        double[] dArr4 = dArr2[1];
        double d7 = (dArr4[2] * d5) + (dArr4[1] * d3) + (dArr4[0] * d);
        double[] dArr5 = dArr2[2];
        double d8 = (d5 * dArr5[2]) + (d3 * dArr5[1]) + (d * dArr5[0]);
        double exp = (1.0d - (Math.exp(((-a2) - 42.0d) / 92.0d) * 0.2777777777777778d)) * 1.0d;
        if (exp < 0.0d) {
            exp = 0.0d;
        } else if (exp > 1.0d) {
            exp = 1.0d;
        }
        double[] dArr6 = {(((100.0d / d6) * exp) + 1.0d) - exp, (((100.0d / d7) * exp) + 1.0d) - exp, (((100.0d / d8) * exp) + 1.0d) - exp};
        double d9 = 5.0d * a2;
        double d10 = 1.0d / (d9 + 1.0d);
        double d11 = d10 * d10 * d10 * d10;
        double d12 = 1.0d - d11;
        double cbrt = (Math.cbrt(d9) * 0.1d * d12 * d12) + (d11 * a2);
        double a3 = ColorUtils.a(max) / dArr[1];
        Math.sqrt(a3);
        Math.pow(a3, 0.2d);
        Math.pow(((dArr6[0] * cbrt) * d6) / 100.0d, 0.42d);
        Math.pow(((dArr6[1] * cbrt) * d7) / 100.0d, 0.42d);
        Math.pow(((dArr6[2] * cbrt) * d8) / 100.0d, 0.42d);
        Math.pow(cbrt, 0.25d);
    }

    public ViewingConditions(double d, double d2, double d3, double d4, double d5, double d6, double[] dArr, double d7, double d8, double d9) {
    }
}
