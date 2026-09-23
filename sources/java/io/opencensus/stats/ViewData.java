package io.opencensus.stats;

import io.opencensus.common.Function;
import io.opencensus.stats.Aggregation;
import io.opencensus.stats.Measure;
import io.opencensus.stats.View;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public abstract class ViewData {

    /* renamed from: io.opencensus.stats.ViewData$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements Function<AggregationWindowData.CumulativeData, ViewData> {
    }

    /* renamed from: io.opencensus.stats.ViewData$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements Function<AggregationWindowData.IntervalData, ViewData> {
    }

    /* renamed from: io.opencensus.stats.ViewData$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements Function<View.AggregationWindow.Cumulative, Void> {
    }

    /* renamed from: io.opencensus.stats.ViewData$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 implements Function<View.AggregationWindow.Interval, Void> {
    }

    /* renamed from: io.opencensus.stats.ViewData$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass5 implements Function<Aggregation.Sum, Void> {

        /* renamed from: io.opencensus.stats.ViewData$5$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Function<Measure.MeasureDouble, Void> {
        }

        /* renamed from: io.opencensus.stats.ViewData$5$2, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass2 implements Function<Measure.MeasureLong, Void> {
        }
    }

    /* renamed from: io.opencensus.stats.ViewData$6, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass6 implements Function<Aggregation.Count, Void> {
    }

    /* renamed from: io.opencensus.stats.ViewData$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 implements Function<Aggregation.Distribution, Void> {
    }

    /* renamed from: io.opencensus.stats.ViewData$8, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass8 implements Function<Aggregation.LastValue, Void> {

        /* renamed from: io.opencensus.stats.ViewData$8$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Function<Measure.MeasureDouble, Void> {
        }

        /* renamed from: io.opencensus.stats.ViewData$8$2, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass2 implements Function<Measure.MeasureLong, Void> {
        }
    }

    /* renamed from: io.opencensus.stats.ViewData$9, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass9 implements Function<Aggregation, Void> {
    }

    @Deprecated
    @Immutable
    /* loaded from: classes3.dex */
    public static abstract class AggregationWindowData {

        @Deprecated
        @Immutable
        /* loaded from: classes3.dex */
        public static abstract class CumulativeData extends AggregationWindowData {
        }

        @Deprecated
        @Immutable
        /* loaded from: classes3.dex */
        public static abstract class IntervalData extends AggregationWindowData {
        }
    }
}
