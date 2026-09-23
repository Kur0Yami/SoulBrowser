package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final class i3 extends v6 implements a2, t1 {
    @Override // j$.util.stream.n5, java.util.function.DoubleConsumer
    public final /* synthetic */ void accept(double d) {
        v3.C();
        throw null;
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ void accept(int i) {
        v3.J();
        throw null;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        l((Long) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.t1, j$.util.stream.u1
    public final a2 build() {
        return this;
    }

    @Override // j$.util.stream.u1
    public final c2 build() {
        return this;
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.n5
    public final void end() {
    }

    @Override // j$.util.stream.c2
    public final /* synthetic */ c2 i(long j, long j2, IntFunction intFunction) {
        return v3.U(this, j, j2);
    }

    @Override // j$.util.stream.m5
    public final /* synthetic */ void l(Long l) {
        v3.H(this, l);
    }

    @Override // j$.util.stream.c2
    public final /* synthetic */ Object[] m(IntFunction intFunction) {
        return v3.L(this, intFunction);
    }

    @Override // j$.util.stream.c2
    public final /* synthetic */ int o() {
        return 0;
    }

    @Override // j$.util.stream.c2
    public final /* bridge */ /* synthetic */ c2 a(int i) {
        a(i);
        throw null;
    }

    @Override // j$.util.stream.b2, j$.util.stream.c2
    public final b2 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.c2
    public final /* synthetic */ void k(Object[] objArr, int i) {
        v3.O(this, (Long[]) objArr, i);
    }

    @Override // j$.util.stream.x6, j$.util.stream.b2
    public final void f(int i, Object obj) {
        super.f(i, (long[]) obj);
    }

    @Override // j$.util.stream.x6, j$.util.stream.b2
    public final void g(Object obj) {
        super.g((LongConsumer) obj);
    }

    @Override // j$.util.stream.v6, j$.util.stream.x6, java.lang.Iterable, j$.lang.Iterable, j$.util.Collection
    public final Spliterator.OfPrimitive spliterator() {
        return super.spliterator();
    }

    @Override // j$.util.stream.v6, j$.util.stream.x6, java.lang.Iterable, j$.lang.Iterable, j$.util.Collection
    public final Spliterator spliterator() {
        return super.spliterator();
    }

    @Override // j$.util.stream.n5
    public final void c(long j) {
        clear();
        s(j);
    }

    @Override // j$.util.stream.x6, j$.util.stream.b2
    public final Object b() {
        return (long[]) super.b();
    }
}
