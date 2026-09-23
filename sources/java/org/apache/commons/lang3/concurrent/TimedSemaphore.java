package org.apache.commons.lang3.concurrent;

import java.util.function.Supplier;

/* loaded from: classes4.dex */
public class TimedSemaphore {

    /* loaded from: classes4.dex */
    public static class Builder implements Supplier<TimedSemaphore> {
        @Override // java.util.function.Supplier
        public final TimedSemaphore get() {
            throw new IllegalArgumentException("Time period must be greater than 0.");
        }
    }
}
