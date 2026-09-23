package io.opencensus.metrics;

import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* loaded from: classes3.dex */
public abstract class DoubleGauge {

    /* loaded from: classes3.dex */
    public static abstract class DoublePoint {
    }

    /* loaded from: classes3.dex */
    public static final class NoopDoubleGauge extends DoubleGauge {

        /* loaded from: classes3.dex */
        public static final class NoopDoublePoint extends DoublePoint {
        }
    }
}
