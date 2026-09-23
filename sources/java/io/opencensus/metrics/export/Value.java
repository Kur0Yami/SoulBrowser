package io.opencensus.metrics.export;

import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public abstract class Value {

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class ValueDistribution extends Value {
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class ValueDouble extends Value {
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class ValueLong extends Value {
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class ValueSummary extends Value {
    }
}
