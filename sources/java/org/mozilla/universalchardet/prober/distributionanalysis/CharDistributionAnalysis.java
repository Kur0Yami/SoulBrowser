package org.mozilla.universalchardet.prober.distributionanalysis;

/* loaded from: classes4.dex */
public abstract class CharDistributionAnalysis {

    /* renamed from: a, reason: collision with root package name */
    public int f22676a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int[] f22677c;
    public float d;

    public CharDistributionAnalysis() {
        d();
    }

    public final float a() {
        int i;
        int i2 = this.b;
        if (i2 > 0 && (i = this.f22676a) > 4) {
            if (i2 != i) {
                float f = i / ((i2 - i) * this.d);
                if (f < 0.99f) {
                    return f;
                }
            }
            return 0.99f;
        }
        return 0.01f;
    }

    public abstract int b(byte[] bArr, int i);

    public final void c(byte[] bArr, int i, int i2) {
        int i3;
        if (i2 == 2) {
            i3 = b(bArr, i);
        } else {
            i3 = -1;
        }
        if (i3 >= 0) {
            this.b++;
            int[] iArr = this.f22677c;
            if (i3 < iArr.length && 512 > iArr[i3]) {
                this.f22676a++;
            }
        }
    }

    public final void d() {
        this.b = 0;
        this.f22676a = 0;
    }
}
