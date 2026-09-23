package j$.util.stream;

import j$.util.Spliterator;
import java.util.ArrayDeque;
import java.util.Comparator;
import java.util.Deque;

/* loaded from: classes2.dex */
public abstract class f3 implements Spliterator {

    /* renamed from: a, reason: collision with root package name */
    public c2 f21415a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public Spliterator f21416c;
    public Spliterator d;
    public Deque e;

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 64;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ Comparator getComparator() {
        return Spliterator.CC.$default$getComparator(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return Spliterator.CC.$default$getExactSizeIfKnown(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i) {
        return Spliterator.CC.$default$hasCharacteristics(this, i);
    }

    public f3(c2 c2Var) {
        this.f21415a = c2Var;
    }

    public final Deque b() {
        ArrayDeque arrayDeque = new ArrayDeque(8);
        int o = this.f21415a.o();
        while (true) {
            o--;
            if (o < this.b) {
                return arrayDeque;
            }
            arrayDeque.addFirst(this.f21415a.a(o));
        }
    }

    public static c2 a(Deque deque) {
        while (true) {
            ArrayDeque arrayDeque = (ArrayDeque) deque;
            c2 c2Var = (c2) arrayDeque.pollFirst();
            if (c2Var == null) {
                return null;
            }
            if (c2Var.o() != 0) {
                for (int o = c2Var.o() - 1; o >= 0; o--) {
                    arrayDeque.addFirst(c2Var.a(o));
                }
            } else if (c2Var.count() > 0) {
                return c2Var;
            }
        }
    }

    public final boolean c() {
        if (this.f21415a == null) {
            return false;
        }
        if (this.d != null) {
            return true;
        }
        Spliterator spliterator = this.f21416c;
        if (spliterator == null) {
            Deque b = b();
            this.e = b;
            c2 a2 = a(b);
            if (a2 != null) {
                this.d = a2.spliterator();
                return true;
            }
            this.f21415a = null;
            return false;
        }
        this.d = spliterator;
        return true;
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        c2 c2Var = this.f21415a;
        if (c2Var == null || this.d != null) {
            return null;
        }
        Spliterator spliterator = this.f21416c;
        if (spliterator != null) {
            return spliterator.trySplit();
        }
        if (this.b < c2Var.o() - 1) {
            c2 c2Var2 = this.f21415a;
            int i = this.b;
            this.b = i + 1;
            return c2Var2.a(i).spliterator();
        }
        c2 a2 = this.f21415a.a(this.b);
        this.f21415a = a2;
        if (a2.o() == 0) {
            Spliterator spliterator2 = this.f21415a.spliterator();
            this.f21416c = spliterator2;
            return spliterator2.trySplit();
        }
        c2 c2Var3 = this.f21415a;
        this.b = 1;
        return c2Var3.a(0).spliterator();
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        long j = 0;
        if (this.f21415a == null) {
            return 0L;
        }
        Spliterator spliterator = this.f21416c;
        if (spliterator != null) {
            return spliterator.estimateSize();
        }
        for (int i = this.b; i < this.f21415a.o(); i++) {
            j += this.f21415a.a(i).count();
        }
        return j;
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return (Spliterator.OfPrimitive) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.OfInt trySplit() {
        return (Spliterator.OfInt) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.OfLong trySplit() {
        return (Spliterator.OfLong) trySplit();
    }

    @Override // j$.util.Spliterator
    public /* bridge */ /* synthetic */ Spliterator.OfDouble trySplit() {
        return (Spliterator.OfDouble) trySplit();
    }
}
