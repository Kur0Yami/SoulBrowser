package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.runtime.EncodedPayload;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.ProtoEncoderDoNotUse;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.backends.BackendRegistry;
import com.google.android.datatransport.runtime.backends.BackendRequest;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.android.datatransport.runtime.backends.TransportBackend;
import com.google.android.datatransport.runtime.firebase.transport.ClientMetrics;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.scheduling.persistence.ClientHealthMetricsStore;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.scheduling.persistence.PersistedEvent;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.firebase.encoders.proto.ProtobufEncoder;
import j$.util.Objects;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class Uploader {

    /* renamed from: a, reason: collision with root package name */
    public final Context f2885a;
    public final BackendRegistry b;

    /* renamed from: c, reason: collision with root package name */
    public final EventStore f2886c;
    public final WorkScheduler d;
    public final Executor e;
    public final SynchronizationGuard f;
    public final Clock g;
    public final Clock h;
    public final ClientHealthMetricsStore i;

    public Uploader(Context context, BackendRegistry backendRegistry, EventStore eventStore, WorkScheduler workScheduler, Executor executor, SynchronizationGuard synchronizationGuard, Clock clock, Clock clock2, ClientHealthMetricsStore clientHealthMetricsStore) {
        this.f2885a = context;
        this.b = backendRegistry;
        this.f2886c = eventStore;
        this.d = workScheduler;
        this.e = executor;
        this.f = synchronizationGuard;
        this.g = clock;
        this.h = clock2;
        this.i = clientHealthMetricsStore;
    }

    public final void a(final TransportContext transportContext, int i) {
        boolean z;
        BackendResponse a2;
        TransportBackend transportBackend = this.b.get(transportContext.b());
        final long j = 0;
        BackendResponse.e(0L);
        while (true) {
            final int i2 = 0;
            SynchronizationGuard.CriticalSection criticalSection = new SynchronizationGuard.CriticalSection(this) { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.e
                public final /* synthetic */ Uploader f;

                {
                    this.f = this;
                }

                @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                public final Object execute() {
                    switch (i2) {
                        case 0:
                            return Boolean.valueOf(this.f.f2886c.w0(transportContext));
                        default:
                            return this.f.f2886c.y(transportContext);
                    }
                }
            };
            SynchronizationGuard synchronizationGuard = this.f;
            if (((Boolean) synchronizationGuard.b(criticalSection)).booleanValue()) {
                final int i3 = 1;
                final Iterable iterable = (Iterable) synchronizationGuard.b(new SynchronizationGuard.CriticalSection(this) { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.e
                    public final /* synthetic */ Uploader f;

                    {
                        this.f = this;
                    }

                    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                    public final Object execute() {
                        switch (i3) {
                            case 0:
                                return Boolean.valueOf(this.f.f2886c.w0(transportContext));
                            default:
                                return this.f.f2886c.y(transportContext);
                        }
                    }
                });
                if (!iterable.iterator().hasNext()) {
                    return;
                }
                boolean z2 = false;
                if (transportBackend == null) {
                    Logging.a(transportContext, "Uploader", "Unknown backend for %s, deleting event batch for it...");
                    a2 = BackendResponse.a();
                } else {
                    ArrayList arrayList = new ArrayList();
                    Iterator it = iterable.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((PersistedEvent) it.next()).a());
                    }
                    if (transportContext.c() != null) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        ClientHealthMetricsStore clientHealthMetricsStore = this.i;
                        Objects.requireNonNull(clientHealthMetricsStore);
                        ClientMetrics clientMetrics = (ClientMetrics) synchronizationGuard.b(new c(0, clientHealthMetricsStore));
                        EventInternal.Builder a3 = EventInternal.a();
                        a3.f(this.g.a());
                        a3.h(this.h.a());
                        a3.g("GDT_CLIENT_METRICS");
                        Encoding encoding = new Encoding("proto");
                        clientMetrics.getClass();
                        ProtobufEncoder protobufEncoder = ProtoEncoderDoNotUse.f2825a;
                        protobufEncoder.getClass();
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            protobufEncoder.a(clientMetrics, byteArrayOutputStream);
                        } catch (IOException unused) {
                        }
                        a3.e(new EncodedPayload(encoding, byteArrayOutputStream.toByteArray()));
                        arrayList.add(transportBackend.b(a3.b()));
                    }
                    BackendRequest.Builder a4 = BackendRequest.a();
                    a4.b(arrayList);
                    a4.c(transportContext.c());
                    a2 = transportBackend.a(a4.a());
                }
                if (a2.c() == BackendResponse.Status.f) {
                    synchronizationGuard.b(new SynchronizationGuard.CriticalSection() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.f
                        @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                        public final Object execute() {
                            Uploader uploader = Uploader.this;
                            EventStore eventStore = uploader.f2886c;
                            eventStore.z0(iterable);
                            eventStore.c0(uploader.g.a() + j, transportContext);
                            return null;
                        }
                    });
                    this.d.b(transportContext, i + 1, true);
                    return;
                }
                synchronizationGuard.b(new androidx.transition.a(1, this, iterable));
                if (a2.c() == BackendResponse.Status.f2841c) {
                    j = Math.max(j, a2.b());
                    if (transportContext.c() != null) {
                        z2 = true;
                    }
                    if (z2) {
                        synchronizationGuard.b(new c(2, this));
                    }
                } else if (a2.c() == BackendResponse.Status.h) {
                    HashMap hashMap = new HashMap();
                    Iterator it2 = iterable.iterator();
                    while (it2.hasNext()) {
                        String h = ((PersistedEvent) it2.next()).a().h();
                        if (!hashMap.containsKey(h)) {
                            hashMap.put(h, 1);
                        } else {
                            hashMap.put(h, Integer.valueOf(((Integer) hashMap.get(h)).intValue() + 1));
                        }
                    }
                    synchronizationGuard.b(new androidx.transition.a(2, this, hashMap));
                }
            } else {
                synchronizationGuard.b(new SynchronizationGuard.CriticalSection() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.g
                    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                    public final Object execute() {
                        Uploader uploader = Uploader.this;
                        uploader.f2886c.c0(uploader.g.a() + j, transportContext);
                        return null;
                    }
                });
                return;
            }
        }
    }
}
