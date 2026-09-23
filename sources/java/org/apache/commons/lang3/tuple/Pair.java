package org.apache.commons.lang3.tuple;

import j$.util.Objects;
import java.io.Serializable;
import java.util.Map;
import org.apache.commons.lang3.builder.CompareToBuilder;

/* loaded from: classes4.dex */
public abstract class Pair<L, R> implements Map.Entry<L, R>, Comparable<Pair<L, R>>, Serializable {
    public abstract Object a();

    public abstract Object b();

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        Pair pair = (Pair) obj;
        CompareToBuilder compareToBuilder = new CompareToBuilder();
        compareToBuilder.a(a(), pair.a());
        compareToBuilder.a(b(), pair.b());
        return compareToBuilder.f22367c;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            if (Objects.equals(a(), entry.getKey()) && Objects.equals(b(), entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return a();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return b();
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return Objects.hashCode(a()) ^ Objects.hashCode(b());
    }

    public String toString() {
        return "(" + a() + ',' + b() + ')';
    }
}
