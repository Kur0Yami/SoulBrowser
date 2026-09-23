package j$.util.stream;

import j$.util.Collection;
import j$.util.Spliterator;
import java.util.Collection;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class g2 implements c2 {

    /* renamed from: a, reason: collision with root package name */
    public final Collection f21422a;

    @Override // j$.util.stream.c2
    public final /* synthetic */ c2 i(long j, long j2, IntFunction intFunction) {
        return v3.V(this, j, j2, intFunction);
    }

    @Override // j$.util.stream.c2
    public final /* synthetic */ int o() {
        return 0;
    }

    @Override // j$.util.stream.c2
    public final c2 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    public g2(Collection collection) {
        this.f21422a = collection;
    }

    @Override // j$.util.stream.c2
    public final Spliterator spliterator() {
        return Collection.EL.stream(this.f21422a).spliterator();
    }

    @Override // j$.util.stream.c2
    public final void k(Object[] objArr, int i) {
        Iterator it = this.f21422a.iterator();
        while (it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
    }

    @Override // j$.util.stream.c2
    public final Object[] m(IntFunction intFunction) {
        java.util.Collection collection = this.f21422a;
        return collection.toArray((Object[]) intFunction.apply(collection.size()));
    }

    @Override // j$.util.stream.c2
    public final long count() {
        return this.f21422a.size();
    }

    @Override // j$.util.stream.c2
    public final void forEach(Consumer consumer) {
        Collection.EL.a(this.f21422a, consumer);
    }

    public final String toString() {
        return String.format("CollectionNode[%d][%s]", Integer.valueOf(this.f21422a.size()), this.f21422a);
    }
}
