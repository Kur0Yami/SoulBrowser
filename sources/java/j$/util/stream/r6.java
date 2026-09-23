package j$.util.stream;

import com.google.api.client.http.HttpStatusCodes;
import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.function.DoubleConsumer$CC;
import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public class r6 extends x6 implements DoubleConsumer {
    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return DoubleConsumer$CC.$default$andThen(this, doubleConsumer);
    }

    @Override // j$.util.stream.x6
    public final void p(Object obj, int i, int i2, Object obj2) {
        double[] dArr = (double[]) obj;
        DoubleConsumer doubleConsumer = (DoubleConsumer) obj2;
        while (i < i2) {
            doubleConsumer.accept(dArr[i]);
            i++;
        }
    }

    @Override // j$.util.stream.x6
    public final int q(Object obj) {
        return ((double[]) obj).length;
    }

    @Override // java.lang.Iterable, j$.lang.Iterable
    public final void forEach(Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            g((DoubleConsumer) consumer);
        } else {
            if (p8.f21480a) {
                p8.a(getClass(), "{0} calling SpinedBuffer.OfDouble.forEach(Consumer)");
                throw null;
            }
            j$.com.android.tools.r8.a.e((q6) spliterator(), consumer);
        }
    }

    @Override // j$.util.stream.x6
    public final Object[] t() {
        return new double[8];
    }

    @Override // j$.util.stream.x6
    public final Object newArray(int i) {
        return new double[i];
    }

    @Override // java.util.function.DoubleConsumer
    public void accept(double d) {
        u();
        double[] dArr = (double[]) this.e;
        int i = this.b;
        this.b = i + 1;
        dArr[i] = d;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        Spliterator.OfDouble spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.c1(spliterator);
    }

    @Override // j$.util.stream.x6, java.lang.Iterable, j$.lang.Iterable, j$.util.Collection
    /* renamed from: v, reason: merged with bridge method [inline-methods] */
    public Spliterator.OfDouble spliterator() {
        return new q6(this, 0, this.f21391c, 0, this.b);
    }

    public final String toString() {
        double[] dArr = (double[]) b();
        if (dArr.length < 200) {
            return String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f21391c), Arrays.toString(dArr));
        }
        return String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(dArr.length), Integer.valueOf(this.f21391c), Arrays.toString(Arrays.copyOf(dArr, HttpStatusCodes.STATUS_CODE_OK)));
    }
}
