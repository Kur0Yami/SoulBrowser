package androidx.work.impl.background.greedy;

import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.RunnableScheduler;
import androidx.work.impl.DefaultRunnableScheduler;
import java.util.HashMap;

@RestrictTo
/* loaded from: classes.dex */
public class DelayedWorkTracker {
    public static final String d = Logger.e("DelayedWorkTracker");

    /* renamed from: a, reason: collision with root package name */
    public final GreedyScheduler f1882a;
    public final RunnableScheduler b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f1883c = new HashMap();

    public DelayedWorkTracker(GreedyScheduler greedyScheduler, DefaultRunnableScheduler defaultRunnableScheduler) {
        this.f1882a = greedyScheduler;
        this.b = defaultRunnableScheduler;
    }
}
