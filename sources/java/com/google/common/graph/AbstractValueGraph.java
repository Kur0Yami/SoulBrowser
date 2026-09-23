package com.google.common.graph;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.c;
import com.google.common.annotations.Beta;
import com.google.common.collect.Maps;
import com.google.common.graph.AbstractBaseGraph;
import java.util.AbstractMap;
import java.util.Set;

@Beta
/* loaded from: classes3.dex */
public abstract class AbstractValueGraph<N, V> extends AbstractBaseGraph<N> implements ValueGraph<N, V> {

    /* renamed from: com.google.common.graph.AbstractValueGraph$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends AbstractGraph<Object> {
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

        @Override // com.google.common.graph.AbstractBaseGraph, com.google.common.graph.BaseGraph
        public final int f() {
            throw null;
        }

        @Override // com.google.common.graph.AbstractBaseGraph, com.google.common.graph.BaseGraph
        public final int g() {
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

        @Override // com.google.common.graph.AbstractBaseGraph
        public final int m(Object obj) {
            throw null;
        }
    }

    @Override // com.google.common.graph.ValueGraph
    public final Set a() {
        return new AbstractBaseGraph.AnonymousClass1();
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof ValueGraph) {
                ValueGraph valueGraph = (ValueGraph) obj;
                if (b() == valueGraph.b() && d().equals(valueGraph.d())) {
                    if (((AbstractMap) Maps.b(a(), new c(7, this))).equals(Maps.b(valueGraph.a(), new c(7, valueGraph)))) {
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
        return ((AbstractMap) Maps.b(a(), new c(7, this))).hashCode();
    }

    public final String toString() {
        return "isDirected: " + b() + ", allowsSelfLoops: " + c() + ", nodes: " + d() + ", edges: " + Maps.b(a(), new c(7, this));
    }
}
