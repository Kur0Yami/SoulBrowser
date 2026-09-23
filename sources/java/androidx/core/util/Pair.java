package androidx.core.util;

import j$.util.Objects;

/* loaded from: classes.dex */
public class Pair<F, S> {

    /* renamed from: a, reason: collision with root package name */
    public final Object f755a;
    public final Object b;

    public Pair(Object obj, Object obj2) {
        this.f755a = obj;
        this.b = obj2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        if (!Objects.equals(pair.f755a, this.f755a) || !Objects.equals(pair.b, this.b)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        int i = 0;
        Object obj = this.f755a;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        Object obj2 = this.b;
        if (obj2 != null) {
            i = obj2.hashCode();
        }
        return i ^ hashCode;
    }

    public final String toString() {
        return "Pair{" + this.f755a + " " + this.b + "}";
    }
}
