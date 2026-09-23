package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class e6 extends a6 {

    /* renamed from: c, reason: collision with root package name */
    public t6 f21409c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [j$.util.stream.t6] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    @Override // j$.util.stream.h5, j$.util.stream.n5
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
        this.f21409c = r0;
    }

    @Override // j$.util.stream.h5, j$.util.stream.n5
    public final void end() {
        int[] iArr = (int[]) this.f21409c.b();
        Arrays.sort(iArr);
        long length = iArr.length;
        n5 n5Var = this.f21430a;
        n5Var.c(length);
        int i = 0;
        if (!this.b) {
            int length2 = iArr.length;
            while (i < length2) {
                n5Var.accept(iArr[i]);
                i++;
            }
        } else {
            int length3 = iArr.length;
            while (i < length3) {
                int i2 = iArr[i];
                if (n5Var.e()) {
                    break;
                }
                n5Var.accept(i2);
                i++;
            }
        }
        n5Var.end();
    }

    @Override // j$.util.stream.l5, j$.util.stream.n5
    public final void accept(int i) {
        this.f21409c.accept(i);
    }
}
