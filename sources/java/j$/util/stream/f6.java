package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class f6 extends b6 {

    /* renamed from: c, reason: collision with root package name */
    public v6 f21418c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [j$.util.stream.v6] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    @Override // j$.util.stream.i5, j$.util.stream.n5
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
        this.f21418c = r0;
    }

    @Override // j$.util.stream.i5, j$.util.stream.n5
    public final void end() {
        long[] jArr = (long[]) this.f21418c.b();
        Arrays.sort(jArr);
        long length = jArr.length;
        n5 n5Var = this.f21437a;
        n5Var.c(length);
        int i = 0;
        if (!this.b) {
            int length2 = jArr.length;
            while (i < length2) {
                n5Var.accept(jArr[i]);
                i++;
            }
        } else {
            int length3 = jArr.length;
            while (i < length3) {
                long j = jArr[i];
                if (n5Var.e()) {
                    break;
                }
                n5Var.accept(j);
                i++;
            }
        }
        n5Var.end();
    }

    @Override // j$.util.stream.m5, j$.util.stream.n5, java.util.function.LongConsumer
    public final void accept(long j) {
        this.f21418c.accept(j);
    }
}
