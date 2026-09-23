package j$.util.stream;

import com.google.api.client.http.HttpStatusCodes;
import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.function.LongConsumer$CC;
import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public class v6 extends x6 implements LongConsumer {
    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return LongConsumer$CC.$default$andThen(this, longConsumer);
    }

    @Override // j$.util.stream.x6
    public final void p(Object obj, int i, int i2, Object obj2) {
        long[] jArr = (long[]) obj;
        LongConsumer longConsumer = (LongConsumer) obj2;
        while (i < i2) {
            longConsumer.accept(jArr[i]);
            i++;
        }
    }

    @Override // j$.util.stream.x6
    public final int q(Object obj) {
        return ((long[]) obj).length;
    }

    @Override // java.lang.Iterable, j$.lang.Iterable
    public final void forEach(Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            g((LongConsumer) consumer);
        } else {
            if (p8.f21480a) {
                p8.a(getClass(), "{0} calling SpinedBuffer.OfLong.forEach(Consumer)");
                throw null;
            }
            j$.com.android.tools.r8.a.g((u6) spliterator(), consumer);
        }
    }

    @Override // j$.util.stream.x6
    public final Object[] t() {
        return new long[8];
    }

    @Override // j$.util.stream.x6
    public final Object newArray(int i) {
        return new long[i];
    }

    @Override // java.util.function.LongConsumer
    public void accept(long j) {
        u();
        long[] jArr = (long[]) this.e;
        int i = this.b;
        this.b = i + 1;
        jArr[i] = j;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        Spliterator.OfLong spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.b1(spliterator);
    }

    @Override // j$.util.stream.x6, java.lang.Iterable, j$.lang.Iterable, j$.util.Collection
    /* renamed from: v, reason: merged with bridge method [inline-methods] */
    public Spliterator.OfLong spliterator() {
        return new u6(this, 0, this.f21391c, 0, this.b);
    }

    public final String toString() {
        long[] jArr = (long[]) b();
        if (jArr.length < 200) {
            return String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f21391c), Arrays.toString(jArr));
        }
        return String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f21391c), Arrays.toString(Arrays.copyOf(jArr, HttpStatusCodes.STATUS_CODE_OK)));
    }
}
