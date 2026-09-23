package org.apache.commons.lang3.builder;

import java.io.Serializable;
import java.util.function.Supplier;

/* loaded from: classes4.dex */
public class DiffBuilder<T> implements org.apache.commons.lang3.builder.Builder<DiffResult<T>> {

    /* loaded from: classes4.dex */
    public static final class Builder<T> {
    }

    /* loaded from: classes4.dex */
    public static final class SDiff<T> extends Diff<T> {
        @Override // org.apache.commons.lang3.tuple.Pair
        public final Object a() {
            throw null;
        }

        @Override // org.apache.commons.lang3.tuple.Pair
        public final Object b() {
            throw null;
        }
    }

    /* loaded from: classes4.dex */
    public interface SerializableSupplier<T> extends Supplier<T>, Serializable {
    }
}
