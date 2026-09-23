package androidx.lifecycle;

import android.os.Handler;
import androidx.lifecycle.Lifecycle;
import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/lifecycle/ServiceLifecycleDispatcher;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "DispatchRunnable", "lifecycle-service_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public class ServiceLifecycleDispatcher {

    /* renamed from: a, reason: collision with root package name */
    public final LifecycleRegistry f1226a;
    public final Handler b;

    /* renamed from: c, reason: collision with root package name */
    public DispatchRunnable f1227c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;", "Ljava/lang/Runnable;", "lifecycle-service_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DispatchRunnable implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final LifecycleRegistry f1228c;
        public final Lifecycle.Event f;
        public boolean g;

        public DispatchRunnable(LifecycleRegistry registry, Lifecycle.Event event) {
            Intrinsics.checkNotNullParameter(registry, "registry");
            Intrinsics.checkNotNullParameter(event, "event");
            this.f1228c = registry;
            this.f = event;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (!this.g) {
                this.f1228c.f(this.f);
                this.g = true;
            }
        }
    }

    public ServiceLifecycleDispatcher(LifecycleService provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.f1226a = new LifecycleRegistry(provider);
        this.b = new Handler();
    }

    public final void a(Lifecycle.Event event) {
        DispatchRunnable dispatchRunnable = this.f1227c;
        if (dispatchRunnable != null) {
            dispatchRunnable.run();
        }
        DispatchRunnable dispatchRunnable2 = new DispatchRunnable(this.f1226a, event);
        this.f1227c = dispatchRunnable2;
        Intrinsics.checkNotNull(dispatchRunnable2);
        this.b.postAtFrontOfQueue(dispatchRunnable2);
    }
}
