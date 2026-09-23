package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

@GwtCompatible
/* loaded from: classes3.dex */
public final class Predicates {

    /* loaded from: classes3.dex */
    public static final class AndPredicate<T> implements Predicate<T>, Serializable {

        /* renamed from: c, reason: collision with root package name */
        public final List f12175c;

        public AndPredicate(List list) {
            this.f12175c = list;
        }

        @Override // com.google.common.base.Predicate
        public final boolean apply(Object obj) {
            int i = 0;
            while (true) {
                List list = this.f12175c;
                if (i < list.size()) {
                    if (!((Predicate) list.get(i)).apply(obj)) {
                        return false;
                    }
                    i++;
                } else {
                    return true;
                }
            }
        }

        @Override // com.google.common.base.Predicate
        public final boolean equals(Object obj) {
            if (obj instanceof AndPredicate) {
                return this.f12175c.equals(((AndPredicate) obj).f12175c);
            }
            return false;
        }

        public final int hashCode() {
            return this.f12175c.hashCode() + 306654252;
        }

        public final String toString() {
            return Predicates.a("and", this.f12175c);
        }
    }

    /* loaded from: classes3.dex */
    public static final class CompositionPredicate<A, B> implements Predicate<A>, Serializable {

        /* renamed from: c, reason: collision with root package name */
        public final Predicate f12176c;
        public final Function f;

        public CompositionPredicate(Predicate predicate, Function function) {
            predicate.getClass();
            this.f12176c = predicate;
            this.f = function;
        }

        @Override // com.google.common.base.Predicate
        public final boolean apply(Object obj) {
            return this.f12176c.apply(this.f.apply(obj));
        }

        @Override // com.google.common.base.Predicate
        public final boolean equals(Object obj) {
            if (obj instanceof CompositionPredicate) {
                CompositionPredicate compositionPredicate = (CompositionPredicate) obj;
                if (this.f.equals(compositionPredicate.f) && this.f12176c.equals(compositionPredicate.f12176c)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return this.f.hashCode() ^ this.f12176c.hashCode();
        }

        public final String toString() {
            return this.f12176c + "(" + this.f + ")";
        }
    }

    @GwtIncompatible
    /* loaded from: classes3.dex */
    public static final class ContainsPatternFromStringPredicate extends ContainsPatternPredicate {
        @Override // com.google.common.base.Predicates.ContainsPatternPredicate
        public final String toString() {
            throw null;
        }
    }

    @GwtIncompatible
    /* loaded from: classes3.dex */
    public static class ContainsPatternPredicate implements Predicate<CharSequence>, Serializable {
        @Override // com.google.common.base.Predicate
        public final boolean apply(Object obj) {
            throw null;
        }

        @Override // com.google.common.base.Predicate
        public final boolean equals(Object obj) {
            if (!(obj instanceof ContainsPatternPredicate)) {
                return false;
            }
            throw null;
        }

        public final int hashCode() {
            throw null;
        }

        public String toString() {
            MoreObjects.b(null);
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class InPredicate<T> implements Predicate<T>, Serializable {

        /* renamed from: c, reason: collision with root package name */
        public final Collection f12177c;

        public InPredicate(Collection collection) {
            collection.getClass();
            this.f12177c = collection;
        }

        @Override // com.google.common.base.Predicate
        public final boolean apply(Object obj) {
            try {
                return this.f12177c.contains(obj);
            } catch (ClassCastException | NullPointerException unused) {
                return false;
            }
        }

        @Override // com.google.common.base.Predicate
        public final boolean equals(Object obj) {
            if (obj instanceof InPredicate) {
                return this.f12177c.equals(((InPredicate) obj).f12177c);
            }
            return false;
        }

        public final int hashCode() {
            return this.f12177c.hashCode();
        }

        public final String toString() {
            return "Predicates.in(" + this.f12177c + ")";
        }
    }

    @GwtIncompatible
    /* loaded from: classes3.dex */
    public static final class InstanceOfPredicate<T> implements Predicate<T>, Serializable {

        /* renamed from: c, reason: collision with root package name */
        public final Class f12178c;

        public InstanceOfPredicate(Class cls) {
            cls.getClass();
            this.f12178c = cls;
        }

        @Override // com.google.common.base.Predicate
        public final boolean apply(Object obj) {
            return this.f12178c.isInstance(obj);
        }

        @Override // com.google.common.base.Predicate
        public final boolean equals(Object obj) {
            if (!(obj instanceof InstanceOfPredicate) || this.f12178c != ((InstanceOfPredicate) obj).f12178c) {
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return this.f12178c.hashCode();
        }

        public final String toString() {
            return "Predicates.instanceOf(" + this.f12178c.getName() + ")";
        }
    }

    /* loaded from: classes3.dex */
    public static final class IsEqualToPredicate implements Predicate<Object>, Serializable {

        /* renamed from: c, reason: collision with root package name */
        public final Object f12179c;

        public IsEqualToPredicate(Object obj) {
            this.f12179c = obj;
        }

        @Override // com.google.common.base.Predicate
        public final boolean apply(Object obj) {
            return this.f12179c.equals(obj);
        }

        @Override // com.google.common.base.Predicate
        public final boolean equals(Object obj) {
            if (obj instanceof IsEqualToPredicate) {
                return this.f12179c.equals(((IsEqualToPredicate) obj).f12179c);
            }
            return false;
        }

        public final int hashCode() {
            return this.f12179c.hashCode();
        }

        public final String toString() {
            return "Predicates.equalTo(" + this.f12179c + ")";
        }
    }

    /* loaded from: classes3.dex */
    public static final class NotPredicate<T> implements Predicate<T>, Serializable {

        /* renamed from: c, reason: collision with root package name */
        public final Object f12180c;

        public NotPredicate(Predicate predicate) {
            this.f12180c = predicate;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.base.Predicate, java.lang.Object] */
        @Override // com.google.common.base.Predicate
        public final boolean apply(Object obj) {
            return !this.f12180c.apply(obj);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [com.google.common.base.Predicate, java.lang.Object] */
        @Override // com.google.common.base.Predicate
        public final boolean equals(Object obj) {
            if (obj instanceof NotPredicate) {
                return this.f12180c.equals(((NotPredicate) obj).f12180c);
            }
            return false;
        }

        public final int hashCode() {
            return ~this.f12180c.hashCode();
        }

        public final String toString() {
            return "Predicates.not(" + this.f12180c + ")";
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static abstract class ObjectPredicate implements Predicate<Object> {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ ObjectPredicate[] f12181c = {new ObjectPredicate() { // from class: com.google.common.base.Predicates.ObjectPredicate.1
            @Override // com.google.common.base.Predicate
            public final boolean apply(Object obj) {
                return true;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "Predicates.alwaysTrue()";
            }
        }, new ObjectPredicate() { // from class: com.google.common.base.Predicates.ObjectPredicate.2
            @Override // com.google.common.base.Predicate
            public final boolean apply(Object obj) {
                return false;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "Predicates.alwaysFalse()";
            }
        }, new ObjectPredicate() { // from class: com.google.common.base.Predicates.ObjectPredicate.3
            @Override // com.google.common.base.Predicate
            public final boolean apply(Object obj) {
                return obj == null;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "Predicates.isNull()";
            }
        }, new ObjectPredicate() { // from class: com.google.common.base.Predicates.ObjectPredicate.4
            @Override // com.google.common.base.Predicate
            public final boolean apply(Object obj) {
                return obj != null;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "Predicates.notNull()";
            }
        }};

        /* JADX INFO: Fake field, exist only in values array */
        ObjectPredicate EF2;

        public static ObjectPredicate valueOf(String str) {
            return (ObjectPredicate) Enum.valueOf(ObjectPredicate.class, str);
        }

        public static ObjectPredicate[] values() {
            return (ObjectPredicate[]) f12181c.clone();
        }
    }

    /* loaded from: classes3.dex */
    public static final class OrPredicate<T> implements Predicate<T>, Serializable {
        @Override // com.google.common.base.Predicate
        public final boolean apply(Object obj) {
            throw null;
        }

        @Override // com.google.common.base.Predicate
        public final boolean equals(Object obj) {
            if (!(obj instanceof OrPredicate)) {
                return false;
            }
            throw null;
        }

        public final int hashCode() {
            throw null;
        }

        public final String toString() {
            return Predicates.a("or", null);
        }
    }

    @GwtIncompatible
    @J2ktIncompatible
    /* loaded from: classes3.dex */
    public static final class SubtypeOfPredicate implements Predicate<Class<?>>, Serializable {
        @Override // com.google.common.base.Predicate
        public final boolean apply(Object obj) {
            throw null;
        }

        @Override // com.google.common.base.Predicate
        public final boolean equals(Object obj) {
            if (obj instanceof SubtypeOfPredicate) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            throw null;
        }

        public final String toString() {
            throw null;
        }
    }

    public static String a(String str, Iterable iterable) {
        StringBuilder sb = new StringBuilder("Predicates.");
        sb.append(str);
        sb.append('(');
        boolean z = true;
        for (Object obj : iterable) {
            if (!z) {
                sb.append(',');
            }
            sb.append(obj);
            z = false;
        }
        sb.append(')');
        return sb.toString();
    }

    public static Predicate b(Predicate predicate, Predicate predicate2) {
        predicate.getClass();
        predicate2.getClass();
        return new AndPredicate(Arrays.asList(predicate, predicate2));
    }

    public static Predicate c(Predicate predicate, Function function) {
        return new CompositionPredicate(predicate, function);
    }

    public static Predicate d(Object obj) {
        return new IsEqualToPredicate(obj);
    }

    public static Predicate e(Collection collection) {
        return new InPredicate(collection);
    }

    public static Predicate f(Class cls) {
        return new InstanceOfPredicate(cls);
    }

    public static Predicate g(Predicate predicate) {
        return new NotPredicate(predicate);
    }
}
