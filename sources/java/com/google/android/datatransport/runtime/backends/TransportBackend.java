package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.runtime.EventInternal;

/* loaded from: classes.dex */
public interface TransportBackend {
    BackendResponse a(BackendRequest backendRequest);

    EventInternal b(EventInternal eventInternal);
}
