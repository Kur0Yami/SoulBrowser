package androidx.core.view;

import android.view.VelocityTracker;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import j$.util.DesugarCollections;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class VelocityTrackerCompat {

    /* renamed from: a, reason: collision with root package name */
    public static final Map f789a = DesugarCollections.synchronizedMap(new WeakHashMap());

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api34Impl {
        public static float a(VelocityTracker velocityTracker, int i) {
            return velocityTracker.getAxisVelocity(i);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface VelocityTrackableMotionEventAxis {
    }
}
