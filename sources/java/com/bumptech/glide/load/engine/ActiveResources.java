package com.bumptech.glide.load.engine;

import android.os.Process;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.Preconditions;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ActiveResources {

    /* renamed from: a, reason: collision with root package name */
    public final ExecutorService f2180a;
    public final HashMap b;

    /* renamed from: c, reason: collision with root package name */
    public final ReferenceQueue f2181c;
    public Engine d;

    /* renamed from: com.bumptech.glide.load.engine.ActiveResources$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(final Runnable runnable) {
            return new Thread(new Runnable() { // from class: com.bumptech.glide.load.engine.ActiveResources.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    Process.setThreadPriority(10);
                    runnable.run();
                }
            }, "glide-active-resources");
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public interface DequeuedResourceCallback {
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public static final class ResourceWeakReference extends WeakReference<EngineResource<?>> {

        /* renamed from: a, reason: collision with root package name */
        public final Key f2184a;
        public final boolean b;

        /* renamed from: c, reason: collision with root package name */
        public Resource f2185c;

        public ResourceWeakReference(Key key, EngineResource engineResource, ReferenceQueue referenceQueue) {
            super(engineResource, referenceQueue);
            Preconditions.c(key, "Argument must not be null");
            this.f2184a = key;
            boolean z = engineResource.f2223c;
            this.f2185c = null;
            this.b = z;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, java.util.concurrent.ThreadFactory] */
    public ActiveResources() {
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor(new Object());
        this.b = new HashMap();
        this.f2181c = new ReferenceQueue();
        this.f2180a = newSingleThreadExecutor;
        newSingleThreadExecutor.execute(new Runnable() { // from class: com.bumptech.glide.load.engine.ActiveResources.2
            @Override // java.lang.Runnable
            public final void run() {
                ActiveResources activeResources = ActiveResources.this;
                activeResources.getClass();
                while (true) {
                    try {
                        activeResources.b((ResourceWeakReference) activeResources.f2181c.remove());
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        });
    }

    public final synchronized void a(Key key, EngineResource engineResource) {
        ResourceWeakReference resourceWeakReference = (ResourceWeakReference) this.b.put(key, new ResourceWeakReference(key, engineResource, this.f2181c));
        if (resourceWeakReference != null) {
            resourceWeakReference.f2185c = null;
            resourceWeakReference.clear();
        }
    }

    public final void b(ResourceWeakReference resourceWeakReference) {
        Resource resource;
        synchronized (this) {
            this.b.remove(resourceWeakReference.f2184a);
            if (resourceWeakReference.b && (resource = resourceWeakReference.f2185c) != null) {
                this.d.c(resourceWeakReference.f2184a, new EngineResource(resource, true, false, resourceWeakReference.f2184a, this.d));
            }
        }
    }
}
