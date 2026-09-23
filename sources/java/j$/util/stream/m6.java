package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class m6 extends a6 {

    /* renamed from: c, reason: collision with root package name */
    public int[] f21455c;
    public int d;

    @Override // j$.util.stream.h5, j$.util.stream.n5
    public final void c(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f21455c = new int[(int) j];
    }

    @Override // j$.util.stream.h5, j$.util.stream.n5
    public final void end() {
        int i = 0;
        Arrays.sort(this.f21455c, 0, this.d);
        long j = this.d;
        n5 n5Var = this.f21430a;
        n5Var.c(j);
        if (!this.b) {
            while (i < this.d) {
                n5Var.accept(this.f21455c[i]);
                i++;
            }
        } else {
            while (i < this.d && !n5Var.e()) {
                n5Var.accept(this.f21455c[i]);
                i++;
            }
        }
        n5Var.end();
        this.f21455c = null;
    }

    @Override // j$.util.stream.l5, j$.util.stream.n5
    public final void accept(int i) {
        int[] iArr = this.f21455c;
        int i2 = this.d;
        this.d = i2 + 1;
        iArr[i2] = i;
    }
}
