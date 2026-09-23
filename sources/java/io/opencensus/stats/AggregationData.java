package io.opencensus.stats;

import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public abstract class AggregationData {

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class CountData extends AggregationData {
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class DistributionData extends AggregationData {
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class LastValueDataDouble extends AggregationData {
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class LastValueDataLong extends AggregationData {
    }

    @Deprecated
    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class MeanData extends AggregationData {
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class SumDataDouble extends AggregationData {
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class SumDataLong extends AggregationData {
    }
}
