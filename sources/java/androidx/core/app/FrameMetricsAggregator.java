package androidx.core.app;

import android.view.FrameMetrics;
import android.view.Window;
import android.view.Window$OnFrameMetricsAvailableListener;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class FrameMetricsAggregator {

    @RequiresApi
    /* loaded from: classes.dex */
    public static class FrameMetricsApi24Impl extends FrameMetricsBaseImpl {

        /* renamed from: androidx.core.app.FrameMetricsAggregator$FrameMetricsApi24Impl$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements Window$OnFrameMetricsAvailableListener {
            public final void onFrameMetricsAvailable(Window window, FrameMetrics frameMetrics, int i) {
                throw null;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class FrameMetricsBaseImpl {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface MetricType {
    }
}
