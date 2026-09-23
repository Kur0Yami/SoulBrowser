package j$.util.stream;

import j$.util.Spliterator;

/* loaded from: classes2.dex */
public interface b2 extends c2 {
    @Override // j$.util.stream.c2
    b2 a(int i);

    Object b();

    void f(int i, Object obj);

    void g(Object obj);

    Object newArray(int i);

    @Override // j$.util.stream.c2
    Spliterator.OfPrimitive spliterator();
}
