package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class l8 extends e7 {
    @Override // j$.util.stream.e7
    public final e7 e(Spliterator spliterator) {
        return new e7(this.b, spliterator, this.f21410a);
    }

    @Override // j$.util.stream.e7
    public final void d() {
        y6 y6Var = new y6();
        this.h = y6Var;
        Objects.requireNonNull(y6Var);
        this.e = this.b.w0(new k8(y6Var, 0));
        this.f = new j$.util.p(13, this);
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Object obj;
        Objects.requireNonNull(consumer);
        boolean a2 = a();
        if (!a2) {
            return a2;
        }
        y6 y6Var = (y6) this.h;
        long j = this.g;
        if (y6Var.f21391c != 0) {
            if (j >= y6Var.count()) {
                throw new IndexOutOfBoundsException(Long.toString(j));
            }
            for (int i = 0; i <= y6Var.f21391c; i++) {
                long j2 = y6Var.d[i];
                Object[] objArr = y6Var.f[i];
                if (j < objArr.length + j2) {
                    obj = objArr[(int) (j - j2)];
                }
            }
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
        if (j < y6Var.b) {
            obj = y6Var.e[(int) j];
        } else {
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
        consumer.n(obj);
        return a2;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        if (this.h == null && !this.i) {
            Objects.requireNonNull(consumer);
            c();
            Objects.requireNonNull(consumer);
            k8 k8Var = new k8(consumer, 1);
            this.b.v0(this.d, k8Var);
            this.i = true;
            return;
        }
        do {
        } while (tryAdvance(consumer));
    }
}
