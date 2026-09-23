package com.google.android.datatransport.runtime.scheduling;

import androidx.credentials.playservices.b;
import androidx.privacysandbox.ads.adservices.topics.a;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.TransportRuntime;
import com.google.android.datatransport.runtime.backends.BackendRegistry;
import com.google.android.datatransport.runtime.backends.TransportBackend;
import com.google.android.datatransport.runtime.scheduling.DefaultScheduler;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkScheduler;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import java.util.concurrent.Executor;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public class DefaultScheduler implements Scheduler {
    public static final Logger f = Logger.getLogger(TransportRuntime.class.getName());

    /* renamed from: a, reason: collision with root package name */
    public final WorkScheduler f2868a;
    public final Executor b;

    /* renamed from: c, reason: collision with root package name */
    public final BackendRegistry f2869c;
    public final EventStore d;
    public final SynchronizationGuard e;

    public DefaultScheduler(Executor executor, BackendRegistry backendRegistry, WorkScheduler workScheduler, EventStore eventStore, SynchronizationGuard synchronizationGuard) {
        this.b = executor;
        this.f2869c = backendRegistry;
        this.f2868a = workScheduler;
        this.d = eventStore;
        this.e = synchronizationGuard;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.Scheduler
    public final void a(final TransportContext transportContext, final EventInternal eventInternal, final a aVar) {
        this.b.execute(new Runnable(transportContext, aVar, eventInternal) { // from class: c.a
            public final /* synthetic */ TransportContext f;
            public final /* synthetic */ EventInternal g;

            {
                this.g = eventInternal;
            }

            @Override // java.lang.Runnable
            public final void run() {
                DefaultScheduler defaultScheduler = DefaultScheduler.this;
                TransportContext transportContext2 = this.f;
                EventInternal eventInternal2 = this.g;
                Logger logger = DefaultScheduler.f;
                try {
                    TransportBackend transportBackend = defaultScheduler.f2869c.get(transportContext2.b());
                    if (transportBackend == null) {
                        String str = "Transport backend '" + transportContext2.b() + "' is not registered";
                        logger.warning(str);
                        new IllegalArgumentException(str);
                        return;
                    }
                    defaultScheduler.e.b(new b(defaultScheduler, transportContext2, transportBackend.b(eventInternal2)));
                } catch (Exception e) {
                    logger.warning("Error scheduling event " + e.getMessage());
                }
            }
        });
    }
}
