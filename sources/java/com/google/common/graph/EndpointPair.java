package com.google.common.graph;

import com.google.common.annotations.Beta;
import com.google.common.collect.Iterators;
import com.google.errorprone.annotations.Immutable;
import j$.util.Objects;
import java.util.Iterator;

@Immutable
@Beta
/* loaded from: classes3.dex */
public abstract class EndpointPair<N> implements Iterable<N> {

    /* renamed from: c, reason: collision with root package name */
    public final Object f12441c;
    public final Object f;

    /* loaded from: classes3.dex */
    public static final class Ordered<N> extends EndpointPair<N> {
        @Override // com.google.common.graph.EndpointPair
        public final boolean a() {
            return true;
        }

        @Override // com.google.common.graph.EndpointPair
        public final Object c() {
            return this.f12441c;
        }

        public final boolean equals(Object obj) {
            if (obj != this) {
                if (obj instanceof EndpointPair) {
                    EndpointPair endpointPair = (EndpointPair) obj;
                    if (true != endpointPair.a() || !this.f12441c.equals(endpointPair.c()) || !this.f.equals(endpointPair.g())) {
                        return false;
                    }
                } else {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.graph.EndpointPair
        public final Object g() {
            return this.f;
        }

        public final int hashCode() {
            return Objects.hash(this.f12441c, this.f);
        }

        @Override // com.google.common.graph.EndpointPair, java.lang.Iterable
        public final Iterator iterator() {
            return Iterators.f(this.f12441c, this.f);
        }

        public final String toString() {
            return "<" + this.f12441c + " -> " + this.f + ">";
        }
    }

    /* loaded from: classes3.dex */
    public static final class Unordered<N> extends EndpointPair<N> {
        @Override // com.google.common.graph.EndpointPair
        public final boolean a() {
            return false;
        }

        @Override // com.google.common.graph.EndpointPair
        public final Object c() {
            throw new UnsupportedOperationException("Cannot call source()/target() on a EndpointPair from an undirected graph. Consider calling adjacentNode(node) if you already have a node, or nodeU()/nodeV() if you don't.");
        }

        public final boolean equals(Object obj) {
            if (obj != this) {
                if (obj instanceof EndpointPair) {
                    EndpointPair endpointPair = (EndpointPair) obj;
                    Object obj2 = endpointPair.f;
                    Object obj3 = endpointPair.f12441c;
                    if (!endpointPair.a()) {
                        Object obj4 = this.f12441c;
                        boolean equals = obj4.equals(obj3);
                        Object obj5 = this.f;
                        if (equals) {
                            return obj5.equals(obj2);
                        }
                        if (obj4.equals(obj2) && obj5.equals(obj3)) {
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

        @Override // com.google.common.graph.EndpointPair
        public final Object g() {
            throw new UnsupportedOperationException("Cannot call source()/target() on a EndpointPair from an undirected graph. Consider calling adjacentNode(node) if you already have a node, or nodeU()/nodeV() if you don't.");
        }

        public final int hashCode() {
            return this.f.hashCode() + this.f12441c.hashCode();
        }

        @Override // com.google.common.graph.EndpointPair, java.lang.Iterable
        public final Iterator iterator() {
            return Iterators.f(this.f12441c, this.f);
        }

        public final String toString() {
            return "[" + this.f12441c + ", " + this.f + "]";
        }
    }

    public EndpointPair(Object obj, Object obj2) {
        obj.getClass();
        this.f12441c = obj;
        obj2.getClass();
        this.f = obj2;
    }

    public abstract boolean a();

    public abstract Object c();

    public abstract Object g();

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return Iterators.f(this.f12441c, this.f);
    }
}
