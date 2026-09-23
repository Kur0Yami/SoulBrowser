package j$.util.stream;

import j$.util.Spliterator;
import java.util.Deque;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public abstract class d3 extends f3 implements Spliterator.OfPrimitive {
    @Override // j$.util.Spliterator.OfPrimitive
    public final boolean tryAdvance(Object obj) {
        b2 b2Var;
        if (!c()) {
            return false;
        }
        boolean tryAdvance = ((Spliterator.OfPrimitive) this.d).tryAdvance((Spliterator.OfPrimitive) obj);
        if (!tryAdvance) {
            if (this.f21416c == null && (b2Var = (b2) f3.a(this.e)) != null) {
                Spliterator.OfPrimitive spliterator = b2Var.spliterator();
                this.d = spliterator;
                return spliterator.tryAdvance((Spliterator.OfPrimitive) obj);
            }
            this.f21415a = null;
        }
        return tryAdvance;
    }

    @Override // j$.util.Spliterator.OfPrimitive
    public final void forEachRemaining(Object obj) {
        if (this.f21415a == null) {
            return;
        }
        if (this.d == null) {
            Spliterator spliterator = this.f21416c;
            if (spliterator == null) {
                Deque b = b();
                while (true) {
                    b2 b2Var = (b2) f3.a(b);
                    if (b2Var != null) {
                        b2Var.g(obj);
                    } else {
                        this.f21415a = null;
                        return;
                    }
                }
            } else {
                ((Spliterator.OfPrimitive) spliterator).forEachRemaining((Spliterator.OfPrimitive) obj);
                return;
            }
        }
        do {
        } while (tryAdvance(obj));
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        forEachRemaining((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return tryAdvance((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        forEachRemaining((Object) longConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return tryAdvance((Object) longConsumer);
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        forEachRemaining((Object) doubleConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return tryAdvance((Object) doubleConsumer);
    }
}
