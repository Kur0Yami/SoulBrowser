package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class o6 extends c6 {
    public Object[] d;
    public int e;

    @Override // j$.util.stream.j5, j$.util.stream.n5
    public final void c(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.d = new Object[(int) j];
    }

    @Override // j$.util.stream.j5, j$.util.stream.n5
    public final void end() {
        int i = 0;
        Arrays.sort(this.d, 0, this.e, this.b);
        long j = this.e;
        n5 n5Var = this.f21442a;
        n5Var.c(j);
        if (!this.f21393c) {
            while (i < this.e) {
                n5Var.accept((n5) this.d[i]);
                i++;
            }
        } else {
            while (i < this.e && !n5Var.e()) {
                n5Var.accept((n5) this.d[i]);
                i++;
            }
        }
        n5Var.end();
        this.d = null;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        Object[] objArr = this.d;
        int i = this.e;
        this.e = i + 1;
        objArr[i] = obj;
    }
}
