package j$.util.stream;

import com.google.api.client.http.HttpStatusCodes;
import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.function.IntConsumer$CC;
import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public class t6 extends x6 implements IntConsumer {
    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.stream.x6
    public final void p(Object obj, int i, int i2, Object obj2) {
        int[] iArr = (int[]) obj;
        IntConsumer intConsumer = (IntConsumer) obj2;
        while (i < i2) {
            intConsumer.accept(iArr[i]);
            i++;
        }
    }

    @Override // j$.util.stream.x6
    public final int q(Object obj) {
        return ((int[]) obj).length;
    }

    @Override // java.lang.Iterable, j$.lang.Iterable
    public final void forEach(Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            g((IntConsumer) consumer);
        } else {
            if (p8.f21480a) {
                p8.a(getClass(), "{0} calling SpinedBuffer.OfInt.forEach(Consumer)");
                throw null;
            }
            j$.com.android.tools.r8.a.f((s6) spliterator(), consumer);
        }
    }

    @Override // j$.util.stream.x6
    public final Object[] t() {
        return new int[8];
    }

    @Override // j$.util.stream.x6
    public final Object newArray(int i) {
        return new int[i];
    }

    @Override // java.util.function.IntConsumer
    public void accept(int i) {
        u();
        int[] iArr = (int[]) this.e;
        int i2 = this.b;
        this.b = i2 + 1;
        iArr[i2] = i;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        Spliterator.OfInt spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.a1(spliterator);
    }

    @Override // j$.util.stream.x6, java.lang.Iterable, j$.lang.Iterable, j$.util.Collection
    /* renamed from: v, reason: merged with bridge method [inline-methods] */
    public Spliterator.OfInt spliterator() {
        return new s6(this, 0, this.f21391c, 0, this.b);
    }

    public final String toString() {
        int[] iArr = (int[]) b();
        if (iArr.length < 200) {
            return String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f21391c), Arrays.toString(iArr));
        }
        return String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f21391c), Arrays.toString(Arrays.copyOf(iArr, HttpStatusCodes.STATUS_CODE_OK)));
    }
}
