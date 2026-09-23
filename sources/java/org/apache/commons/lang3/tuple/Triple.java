package org.apache.commons.lang3.tuple;

import j$.util.Objects;
import java.io.Serializable;
import org.apache.commons.lang3.builder.CompareToBuilder;

/* loaded from: classes4.dex */
public abstract class Triple<L, M, R> implements Comparable<Triple<L, M, R>>, Serializable {
    public abstract Object a();

    public abstract Object b();

    public abstract Object c();

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        Triple triple = (Triple) obj;
        CompareToBuilder compareToBuilder = new CompareToBuilder();
        compareToBuilder.a(a(), triple.a());
        compareToBuilder.a(b(), triple.b());
        compareToBuilder.a(c(), triple.c());
        return compareToBuilder.f22367c;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof Triple) {
                Triple triple = (Triple) obj;
                if (Objects.equals(a(), triple.a()) && Objects.equals(b(), triple.b()) && Objects.equals(c(), triple.c())) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (Objects.hashCode(a()) ^ Objects.hashCode(b())) ^ Objects.hashCode(c());
    }

    public final String toString() {
        return "(" + a() + "," + b() + "," + c() + ")";
    }
}
