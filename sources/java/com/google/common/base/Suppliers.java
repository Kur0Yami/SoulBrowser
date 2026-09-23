package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.annotations.VisibleForTesting;
import java.io.Serializable;

@GwtCompatible
/* loaded from: classes3.dex */
public final class Suppliers {

    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static final class ExpiringMemoizingSupplier<T> implements Supplier<T>, Serializable {
        @Override // com.google.common.base.Supplier
        public final Object get() {
            throw null;
        }

        public final String toString() {
            return "Suppliers.memoizeWithExpiration(null, 0, NANOS)";
        }
    }

    @VisibleForTesting
    /* loaded from: classes3.dex */
    public static final class MemoizingSupplier<T> implements Supplier<T>, Serializable {
        @Override // com.google.common.base.Supplier
        public final Object get() {
            throw null;
        }

        public final String toString() {
            return "Suppliers.memoize(" + ((Object) null) + ")";
        }
    }

    /* loaded from: classes3.dex */
    public static final class NonSerializableMemoizingSupplier<T> implements Supplier<T> {
        @Override // com.google.common.base.Supplier
        public final Object get() {
            throw null;
        }

        public final String toString() {
            return "Suppliers.memoize(" + ((Object) null) + ")";
        }
    }

    /* loaded from: classes3.dex */
    public static final class SupplierComposition<F, T> implements Supplier<T>, Serializable {
        public final boolean equals(Object obj) {
            if (!(obj instanceof SupplierComposition)) {
                return false;
            }
            throw null;
        }

        @Override // com.google.common.base.Supplier
        public final Object get() {
            throw null;
        }

        public final int hashCode() {
            return j$.util.Objects.hash(null, null);
        }

        public final String toString() {
            return "Suppliers.compose(null, null)";
        }
    }

    /* loaded from: classes3.dex */
    public interface SupplierFunction<T> extends Function<Supplier<T>, T> {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class SupplierFunctionImpl implements SupplierFunction<Object> {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ SupplierFunctionImpl[] f12189c = {new Enum("INSTANCE", 0)};

        /* JADX INFO: Fake field, exist only in values array */
        SupplierFunctionImpl EF5;

        public static SupplierFunctionImpl valueOf(String str) {
            return (SupplierFunctionImpl) Enum.valueOf(SupplierFunctionImpl.class, str);
        }

        public static SupplierFunctionImpl[] values() {
            return (SupplierFunctionImpl[]) f12189c.clone();
        }

        @Override // com.google.common.base.Function
        public final Object apply(Object obj) {
            return ((Supplier) obj).get();
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "Suppliers.supplierFunction()";
        }
    }

    /* loaded from: classes3.dex */
    public static final class SupplierOfInstance<T> implements Supplier<T>, Serializable {

        /* renamed from: c, reason: collision with root package name */
        public final Object f12190c;

        public SupplierOfInstance(Object obj) {
            this.f12190c = obj;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof SupplierOfInstance) {
                return j$.util.Objects.equals(this.f12190c, ((SupplierOfInstance) obj).f12190c);
            }
            return false;
        }

        @Override // com.google.common.base.Supplier
        public final Object get() {
            return this.f12190c;
        }

        public final int hashCode() {
            return j$.util.Objects.hash(this.f12190c);
        }

        public final String toString() {
            return "Suppliers.ofInstance(" + this.f12190c + ")";
        }
    }

    @J2ktIncompatible
    /* loaded from: classes3.dex */
    public static final class ThreadSafeSupplier<T> implements Supplier<T>, Serializable {
        @Override // com.google.common.base.Supplier
        public final Object get() {
            throw null;
        }

        public final String toString() {
            return "Suppliers.synchronizedSupplier(null)";
        }
    }

    public static Supplier a(Object obj) {
        return new SupplierOfInstance(obj);
    }
}
