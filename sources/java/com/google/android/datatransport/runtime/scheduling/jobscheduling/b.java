package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import j$.util.Objects;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Uploader f2893c;
    public final /* synthetic */ TransportContext f;
    public final /* synthetic */ int g;
    public final /* synthetic */ Runnable h;

    public /* synthetic */ b(Uploader uploader, TransportContext transportContext, int i, Runnable runnable) {
        this.f2893c = uploader;
        this.f = transportContext;
        this.g = i;
        this.h = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final TransportContext transportContext = this.f;
        final int i = this.g;
        Runnable runnable = this.h;
        final Uploader uploader = this.f2893c;
        SynchronizationGuard synchronizationGuard = uploader.f;
        try {
            try {
                EventStore eventStore = uploader.f2886c;
                Objects.requireNonNull(eventStore);
                synchronizationGuard.b(new c(1, eventStore));
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) uploader.f2885a.getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                    uploader.a(transportContext, i);
                } else {
                    synchronizationGuard.b(new SynchronizationGuard.CriticalSection() { // from class: com.google.android.datatransport.runtime.scheduling.jobscheduling.d
                        @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                        public final Object execute() {
                            Uploader.this.d.a(transportContext, i + 1);
                            return null;
                        }
                    });
                }
                runnable.run();
            } catch (SynchronizationException unused) {
                uploader.d.a(transportContext, i + 1);
                runnable.run();
            }
        } catch (Throwable th) {
            runnable.run();
            throw th;
        }
    }
}
