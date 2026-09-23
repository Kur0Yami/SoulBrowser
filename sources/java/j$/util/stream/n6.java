package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class n6 extends b6 {

    /* renamed from: c, reason: collision with root package name */
    public long[] f21462c;
    public int d;

    @Override // j$.util.stream.i5, j$.util.stream.n5
    public final void c(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f21462c = new long[(int) j];
    }

    @Override // j$.util.stream.i5, j$.util.stream.n5
    public final void end() {
        int i = 0;
        Arrays.sort(this.f21462c, 0, this.d);
        long j = this.d;
        n5 n5Var = this.f21437a;
        n5Var.c(j);
        if (!this.b) {
            while (i < this.d) {
                n5Var.accept(this.f21462c[i]);
                i++;
            }
        } else {
            while (i < this.d && !n5Var.e()) {
                n5Var.accept(this.f21462c[i]);
                i++;
            }
        }
        n5Var.end();
        this.f21462c = null;
    }

    @Override // j$.util.stream.m5, j$.util.stream.n5, java.util.function.LongConsumer
    public final void accept(long j) {
        long[] jArr = this.f21462c;
        int i = this.d;
        this.d = i + 1;
        jArr[i] = j;
    }
}
