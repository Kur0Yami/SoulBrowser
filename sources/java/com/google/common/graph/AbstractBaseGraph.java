package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.Maps;
import com.google.common.primitives.Ints;
import java.util.AbstractSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public abstract class AbstractBaseGraph<N> implements BaseGraph<N> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.graph.AbstractBaseGraph$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends AbstractSet<EndpointPair<Object>> {
        public AnonymousClass1() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (obj instanceof EndpointPair) {
                EndpointPair endpointPair = (EndpointPair) obj;
                Object obj2 = endpointPair.f12441c;
                boolean a2 = endpointPair.a();
                AbstractBaseGraph abstractBaseGraph = AbstractBaseGraph.this;
                if (a2 == abstractBaseGraph.b() && abstractBaseGraph.d().contains(obj2) && abstractBaseGraph.k(obj2).contains(endpointPair.f)) {
                    return true;
                }
            }
            return false;
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [com.google.common.graph.EndpointPairIterator$Undirected, java.util.Iterator, com.google.common.graph.EndpointPairIterator] */
        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            AbstractBaseGraph abstractBaseGraph = AbstractBaseGraph.this;
            if (abstractBaseGraph.b()) {
                return new EndpointPairIterator(abstractBaseGraph);
            }
            ?? endpointPairIterator = new EndpointPairIterator(abstractBaseGraph);
            endpointPairIterator.k = new HashSet(Maps.c(abstractBaseGraph.d().size() + 1));
            return endpointPairIterator;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return Ints.c(AbstractBaseGraph.this.n());
        }
    }

    /* renamed from: com.google.common.graph.AbstractBaseGraph$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends IncidentEdgeSet<Object> {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int f12437c = 0;

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            throw null;
        }
    }

    @Override // com.google.common.graph.BaseGraph
    public int f() {
        if (b()) {
            return k(null).size();
        }
        return m(null);
    }

    @Override // com.google.common.graph.BaseGraph
    public int g() {
        if (b()) {
            return j(null).size();
        }
        return m(null);
    }

    public int m(Object obj) {
        int i;
        if (b()) {
            return Ints.c(j(obj).size() + k(obj).size());
        }
        Set l = l(obj);
        if (c() && l.contains(obj)) {
            i = 1;
        } else {
            i = 0;
        }
        return Ints.c(l.size() + i);
    }

    public long n() {
        boolean z;
        long j = 0;
        while (d().iterator().hasNext()) {
            j += m(r0.next());
        }
        if ((1 & j) == 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.l(z);
        return j >>> 1;
    }
}
