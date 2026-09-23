package io.opencensus.stats;

import java.util.logging.Logger;
import javax.annotation.concurrent.Immutable;
import javax.annotation.concurrent.ThreadSafe;

/* loaded from: classes3.dex */
final class NoopStats {

    /* loaded from: classes3.dex */
    public static final class NoopMeasureMap extends MeasureMap {
        static {
            Logger.getLogger(NoopMeasureMap.class.getName());
        }
    }

    @ThreadSafe
    /* loaded from: classes3.dex */
    public static final class NoopStatsComponent extends StatsComponent {
    }

    @Immutable
    /* loaded from: classes3.dex */
    public static final class NoopStatsRecorder extends StatsRecorder {
    }

    @ThreadSafe
    /* loaded from: classes3.dex */
    public static final class NoopViewManager extends ViewManager {
    }
}
