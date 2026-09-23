package org.apache.commons.lang3.function;

import java.lang.Throwable;

@FunctionalInterface
/* loaded from: classes4.dex */
public interface FailableBiConsumer<T, U, E extends Throwable> {
    void a(StringBuilder sb, Object obj);
}
