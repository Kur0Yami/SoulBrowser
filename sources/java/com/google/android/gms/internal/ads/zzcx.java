package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.text.Layout;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzcx {
    public static final String A;
    public static final String B;
    public static final String C;
    public static final String D;
    public static final String E;
    public static final String F;
    public static final String G;
    public static final String H;
    public static final String I;
    public static final String q;
    public static final String r;
    public static final String s;
    public static final String t;
    public static final String u;
    public static final String v;
    public static final String w;
    public static final String x;
    public static final String y;
    public static final String z;

    /* renamed from: a, reason: collision with root package name */
    public final CharSequence f5553a;
    public final Layout.Alignment b;

    /* renamed from: c, reason: collision with root package name */
    public final Layout.Alignment f5554c;
    public final Bitmap d;
    public final float e;
    public final int f;
    public final int g;
    public final float h;
    public final int i;
    public final float j;
    public final float k;
    public final int l;
    public final float m;
    public final int n;
    public final float o;
    public final int p;

    static {
        zzcw zzcwVar = new zzcw();
        zzcwVar.a(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        zzcwVar.b();
        String str = zzfj.f7405a;
        q = Integer.toString(0, 36);
        r = Integer.toString(17, 36);
        s = Integer.toString(1, 36);
        t = Integer.toString(2, 36);
        Integer.toString(3, 36);
        u = Integer.toString(18, 36);
        v = Integer.toString(4, 36);
        w = Integer.toString(5, 36);
        x = Integer.toString(6, 36);
        y = Integer.toString(7, 36);
        z = Integer.toString(8, 36);
        A = Integer.toString(9, 36);
        B = Integer.toString(10, 36);
        C = Integer.toString(11, 36);
        D = Integer.toString(12, 36);
        E = Integer.toString(13, 36);
        F = Integer.toString(14, 36);
        G = Integer.toString(15, 36);
        H = Integer.toString(16, 36);
        I = Integer.toString(19, 36);
    }

    public /* synthetic */ zzcx(CharSequence charSequence, Layout.Alignment alignment, Layout.Alignment alignment2, Bitmap bitmap, float f, int i, int i2, float f2, int i3, int i4, float f3, float f4, float f5, int i5, float f6, int i6) {
        boolean z2;
        String str;
        if (charSequence == null) {
            bitmap.getClass();
        } else {
            if (bitmap == null) {
                z2 = true;
            } else {
                z2 = false;
            }
            zzgqa.a(z2);
        }
        if (charSequence instanceof Spanned) {
            this.f5553a = SpannedString.valueOf(charSequence);
        } else {
            if (charSequence != null) {
                str = charSequence.toString();
            } else {
                str = null;
            }
            this.f5553a = str;
        }
        this.b = alignment;
        this.f5554c = alignment2;
        this.d = bitmap;
        this.e = f;
        this.f = i;
        this.g = i2;
        this.h = f2;
        this.i = i3;
        this.j = f4;
        this.k = f5;
        this.l = i4;
        this.m = f3;
        this.n = i5;
        this.o = f6;
        this.p = i6;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && zzcx.class == obj.getClass()) {
                zzcx zzcxVar = (zzcx) obj;
                Bitmap bitmap = zzcxVar.d;
                if (TextUtils.equals(this.f5553a, zzcxVar.f5553a) && this.b == zzcxVar.b && this.f5554c == zzcxVar.f5554c) {
                    Bitmap bitmap2 = this.d;
                    if (bitmap2 == null) {
                        if (bitmap != null) {
                            return false;
                        }
                    } else if (bitmap == null || !bitmap2.sameAs(bitmap)) {
                        return false;
                    }
                    if (this.e == zzcxVar.e && this.f == zzcxVar.f && this.g == zzcxVar.g && this.h == zzcxVar.h && this.i == zzcxVar.i && this.j == zzcxVar.j && this.k == zzcxVar.k && this.l == zzcxVar.l && this.m == zzcxVar.m && this.n == zzcxVar.n && this.o == zzcxVar.o && this.p == zzcxVar.p) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(this.f5553a, this.b, this.f5554c, this.d, Float.valueOf(this.e), Integer.valueOf(this.f), Integer.valueOf(this.g), Float.valueOf(this.h), Integer.valueOf(this.i), Float.valueOf(this.j), Float.valueOf(this.k), Boolean.FALSE, -16777216, Integer.valueOf(this.l), Float.valueOf(this.m), Integer.valueOf(this.n), Float.valueOf(this.o), Integer.valueOf(this.p));
    }
}
