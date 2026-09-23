package io.opencensus.metrics;

import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* loaded from: classes3.dex */
public abstract class LongCumulative {

    /* loaded from: classes3.dex */
    public static abstract class LongPoint {
    }

    /* loaded from: classes3.dex */
    public static final class NoopLongCumulative extends LongCumulative {

        /* loaded from: classes3.dex */
        public static final class NoopLongPoint extends LongPoint {
        }
    }
}
