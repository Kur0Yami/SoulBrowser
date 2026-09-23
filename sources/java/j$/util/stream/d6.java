package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class d6 extends z5 {

    /* renamed from: c, reason: collision with root package name */
    public r6 f21403c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [j$.util.stream.r6] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    @Override // j$.util.stream.g5, j$.util.stream.n5
    public final void c(long j) {
        ?? r0;
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        if (j <= 0) {
            r0 = new x6();
        } else {
            r0 = new x6((int) j);
        }
        this.f21403c = r0;
    }

    @Override // j$.util.stream.g5, j$.util.stream.n5
    public final void end() {
        double[] dArr = (double[]) this.f21403c.b();
        Arrays.sort(dArr);
        long length = dArr.length;
        n5 n5Var = this.f21426a;
        n5Var.c(length);
        int i = 0;
        if (!this.b) {
            int length2 = dArr.length;
            while (i < length2) {
                n5Var.accept(dArr[i]);
                i++;
            }
        } else {
            int length3 = dArr.length;
            while (i < length3) {
                double d = dArr[i];
                if (n5Var.e()) {
                    break;
                }
                n5Var.accept(d);
                i++;
            }
        }
        n5Var.end();
    }

    @Override // j$.util.stream.k5, j$.util.stream.n5, java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.f21403c.accept(d);
    }
}
