package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;

@GwtCompatible
/* loaded from: classes3.dex */
public final class Functions {

    /* loaded from: classes3.dex */
    public static final class ConstantFunction<E> implements Function<Object, E>, Serializable {
        @Override // com.google.common.base.Function
        public final Object apply(Object obj) {
            return null;
        }

        @Override // com.google.common.base.Function
        public final boolean equals(Object obj) {
            if (obj instanceof ConstantFunction) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return 0;
        }

        public final String toString() {
            return "Functions.constant(null)";
        }
    }

    /* loaded from: classes3.dex */
    public static final class ForMapWithDefault<K, V> implements Function<K, V>, Serializable {
        @Override // com.google.common.base.Function
        public final Object apply(Object obj) {
            throw null;
        }

        @Override // com.google.common.base.Function
        public final boolean equals(Object obj) {
            if (!(obj instanceof ForMapWithDefault)) {
                return false;
            }
            throw null;
        }

        public final int hashCode() {
            return j$.util.Objects.hash(null, null);
        }

        public final String toString() {
            return "Functions.forMap(null, defaultValue=null)";
        }
    }

    /* loaded from: classes3.dex */
    public static final class FunctionComposition<A, B, C> implements Function<A, C>, Serializable {
        @Override // com.google.common.base.Function
        public final Object apply(Object obj) {
            throw null;
        }

        @Override // com.google.common.base.Function
        public final boolean equals(Object obj) {
            if (!(obj instanceof FunctionComposition)) {
                return false;
            }
            throw null;
        }

        public final int hashCode() {
            throw null;
        }

        public final String toString() {
            return "null(null)";
        }
    }

    /* loaded from: classes3.dex */
    public static final class FunctionForMapNoDefault<K, V> implements Function<K, V>, Serializable {
        @Override // com.google.common.base.Function
        public final Object apply(Object obj) {
            throw null;
        }

        @Override // com.google.common.base.Function
        public final boolean equals(Object obj) {
            if (!(obj instanceof FunctionForMapNoDefault)) {
                return false;
            }
            throw null;
        }

        public final int hashCode() {
            throw null;
        }

        public final String toString() {
            return "Functions.forMap(null)";
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class IdentityFunction implements Function<Object, Object> {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ IdentityFunction[] f12165c = {new Enum("INSTANCE", 0)};

        /* JADX INFO: Fake field, exist only in values array */
        IdentityFunction EF5;

        public static IdentityFunction valueOf(String str) {
            return (IdentityFunction) Enum.valueOf(IdentityFunction.class, str);
        }

        public static IdentityFunction[] values() {
            return (IdentityFunction[]) f12165c.clone();
        }

        @Override // com.google.common.base.Function
        public final Object apply(Object obj) {
            return obj;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "Functions.identity()";
        }
    }

    /* loaded from: classes3.dex */
    public static final class PredicateFunction<T> implements Function<T, Boolean>, Serializable {
        @Override // com.google.common.base.Function
        public final Object apply(Object obj) {
            throw null;
        }

        @Override // com.google.common.base.Function
        public final boolean equals(Object obj) {
            if (!(obj instanceof PredicateFunction)) {
                return false;
            }
            throw null;
        }

        public final int hashCode() {
            throw null;
        }

        public final String toString() {
            return "Functions.forPredicate(null)";
        }
    }

    /* loaded from: classes3.dex */
    public static final class SupplierFunction<F, T> implements Function<F, T>, Serializable {
        @Override // com.google.common.base.Function
        public final Object apply(Object obj) {
            throw null;
        }

        @Override // com.google.common.base.Function
        public final boolean equals(Object obj) {
            if (!(obj instanceof SupplierFunction)) {
                return false;
            }
            throw null;
        }

        public final int hashCode() {
            throw null;
        }

        public final String toString() {
            return "Functions.forSupplier(null)";
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class ToStringFunction implements Function<Object, String> {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ ToStringFunction[] f12166c = {new Enum("INSTANCE", 0)};

        /* JADX INFO: Fake field, exist only in values array */
        ToStringFunction EF5;

        public static ToStringFunction valueOf(String str) {
            return (ToStringFunction) Enum.valueOf(ToStringFunction.class, str);
        }

        public static ToStringFunction[] values() {
            return (ToStringFunction[]) f12166c.clone();
        }

        @Override // com.google.common.base.Function
        public final Object apply(Object obj) {
            obj.getClass();
            return obj.toString();
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "Functions.toStringFunction()";
        }
    }
}
