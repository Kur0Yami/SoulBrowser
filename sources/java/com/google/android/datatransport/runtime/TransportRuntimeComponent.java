package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.dagger.Component;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import java.io.Closeable;
import javax.inject.Singleton;

/* JADX INFO: Access modifiers changed from: package-private */
@Singleton
@Component
/* loaded from: classes.dex */
public abstract class TransportRuntimeComponent implements Closeable {

    @Component.Builder
    /* loaded from: classes.dex */
    public interface Builder {
    }

    public abstract EventStore a();

    public abstract TransportRuntime b();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        a().close();
    }
}
