package com.google.common.graph;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.c;
import com.google.common.annotations.Beta;
import com.google.common.collect.Maps;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Set;

@Beta
/* loaded from: classes3.dex */
public abstract class AbstractNetwork<N, E> implements Network<N, E> {

    /* renamed from: com.google.common.graph.AbstractNetwork$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends AbstractGraph<Object> {

        /* renamed from: com.google.common.graph.AbstractNetwork$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes3.dex */
        class C00281 extends AbstractSet<EndpointPair<Object>> {
            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean contains(Object obj) {
                throw null;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public final Iterator iterator() {
                throw null;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final int size() {
                throw null;
            }
        }

        @Override // com.google.common.graph.AbstractGraph, com.google.common.graph.Graph
        public final Set a() {
            throw null;
        }

        @Override // com.google.common.graph.BaseGraph
        public final boolean b() {
            throw null;
        }

        @Override // com.google.common.graph.BaseGraph
        public final boolean c() {
            throw null;
        }

        @Override // com.google.common.graph.BaseGraph
        public final Set d() {
            throw null;
        }

        @Override // com.google.common.graph.BaseGraph
        public final Set j(Object obj) {
            throw null;
        }

        @Override // com.google.common.graph.BaseGraph
        public final Set k(Object obj) {
            throw null;
        }

        @Override // com.google.common.graph.BaseGraph
        public final Set l(Object obj) {
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof Network) {
                Network network = (Network) obj;
                if (b() == network.b() && d().equals(network.d())) {
                    if (((AbstractMap) Maps.b(a(), new c(6, this))).equals(Maps.b(network.a(), new c(6, network)))) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return ((AbstractMap) Maps.b(a(), new c(6, this))).hashCode();
    }

    public final String toString() {
        return "isDirected: " + b() + ", allowsParallelEdges: " + h() + ", allowsSelfLoops: " + c() + ", nodes: " + d() + ", edges: " + Maps.b(a(), new c(6, this));
    }
}
