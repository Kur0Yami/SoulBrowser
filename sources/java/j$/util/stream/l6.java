package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class l6 extends z5 {

    /* renamed from: c, reason: collision with root package name */
    public double[] f21451c;
    public int d;

    @Override // j$.util.stream.g5, j$.util.stream.n5
    public final void c(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f21451c = new double[(int) j];
    }

    @Override // j$.util.stream.g5, j$.util.stream.n5
    public final void end() {
        int i = 0;
        Arrays.sort(this.f21451c, 0, this.d);
        long j = this.d;
        n5 n5Var = this.f21426a;
        n5Var.c(j);
        if (!this.b) {
            while (i < this.d) {
                n5Var.accept(this.f21451c[i]);
                i++;
            }
        } else {
            while (i < this.d && !n5Var.e()) {
                n5Var.accept(this.f21451c[i]);
                i++;
            }
        }
        n5Var.end();
        this.f21451c = null;
    }

    @Override // j$.util.stream.k5, j$.util.stream.n5, java.util.function.DoubleConsumer
    public final void accept(double d) {
        double[] dArr = this.f21451c;
        int i = this.d;
        this.d = i + 1;
        dArr[i] = d;
    }
}
