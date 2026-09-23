package org.apache.commons.lang3.concurrent;

/* loaded from: classes4.dex */
public class ConstantInitializer<T> implements ConcurrentInitializer<T> {
    public final boolean equals(Object obj) {
        if (this == obj || (obj instanceof ConstantInitializer)) {
            return true;
        }
        return false;
    }

    @Override // org.apache.commons.lang3.function.FailableSupplier
    public final Object get() {
        return null;
    }

    public final int hashCode() {
        return 0;
    }

    public final String toString() {
        return String.format("ConstantInitializer@%d [ object = %s ]", Integer.valueOf(System.identityHashCode(this)), null);
    }
}
