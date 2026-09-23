package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.ImmutableSet;
import j$.util.Objects;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes3.dex */
abstract class EndpointPairIterator<N> extends AbstractIterator<EndpointPair<N>> {
    public final BaseGraph g;
    public final Iterator h;
    public Object i = null;
    public Iterator j = ImmutableSet.w().iterator();

    /* loaded from: classes3.dex */
    public static final class Directed<N> extends EndpointPairIterator<N> {
        @Override // com.google.common.collect.AbstractIterator
        public final Object a() {
            while (!this.j.hasNext()) {
                if (!c()) {
                    b();
                    return null;
                }
            }
            Object obj = this.i;
            Objects.requireNonNull(obj);
            return new EndpointPair(obj, this.j.next());
        }
    }

    /* loaded from: classes3.dex */
    public static final class Undirected<N> extends EndpointPairIterator<N> {
        public HashSet k;

        @Override // com.google.common.collect.AbstractIterator
        public final Object a() {
            do {
                Objects.requireNonNull(this.k);
                while (this.j.hasNext()) {
                    Object next = this.j.next();
                    if (!this.k.contains(next)) {
                        Object obj = this.i;
                        Objects.requireNonNull(obj);
                        return new EndpointPair(next, obj);
                    }
                }
                this.k.add(this.i);
            } while (c());
            this.k = null;
            b();
            return null;
        }
    }

    public EndpointPairIterator(BaseGraph baseGraph) {
        this.g = baseGraph;
        this.h = baseGraph.d().iterator();
    }

    public final boolean c() {
        Preconditions.l(!this.j.hasNext());
        Iterator it = this.h;
        if (!it.hasNext()) {
            return false;
        }
        Object next = it.next();
        this.i = next;
        this.j = this.g.k(next).iterator();
        return true;
    }
}
