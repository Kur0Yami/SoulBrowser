package com.google.android.datatransport.runtime.scheduling.persistence;

import androidx.annotation.WorkerThread;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import java.io.Closeable;

@WorkerThread
/* loaded from: classes.dex */
public interface EventStore extends Closeable {
    Iterable E();

    void c0(long j, TransportContext transportContext);

    int g();

    PersistedEvent o0(TransportContext transportContext, EventInternal eventInternal);

    void q(Iterable iterable);

    long u0(TransportContext transportContext);

    boolean w0(TransportContext transportContext);

    Iterable y(TransportContext transportContext);

    void z0(Iterable iterable);
}
