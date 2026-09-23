package androidx.work;

import android.support.v4.media.a;
import androidx.work.impl.DefaultRunnableScheduler;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class Configuration {

    /* renamed from: a, reason: collision with root package name */
    public final ExecutorService f1825a;
    public final ExecutorService b;

    /* renamed from: c, reason: collision with root package name */
    public final WorkerFactory f1826c;
    public final InputMergerFactory d;
    public final DefaultRunnableScheduler e;
    public final int f;
    public final int g;
    public final int h;

    /* loaded from: classes.dex */
    public static final class Builder {
    }

    /* loaded from: classes.dex */
    public interface Provider {
        Configuration a();
    }

    /* JADX WARN: Type inference failed for: r6v14, types: [java.lang.Object, androidx.work.WorkerFactory] */
    /* JADX WARN: Type inference failed for: r6v15, types: [androidx.work.InputMergerFactory, java.lang.Object] */
    public Configuration(Builder builder) {
        final boolean z = true;
        final boolean z2 = false;
        this.f1825a = Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), new ThreadFactory() { // from class: androidx.work.Configuration.1

            /* renamed from: a, reason: collision with root package name */
            public final AtomicInteger f1827a = new AtomicInteger(0);

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                String str;
                if (z2) {
                    str = "WM.task-";
                } else {
                    str = "androidx.work-";
                }
                StringBuilder t = a.t(str);
                t.append(this.f1827a.incrementAndGet());
                return new Thread(runnable, t.toString());
            }
        });
        this.b = Executors.newFixedThreadPool(Math.max(2, Math.min(Runtime.getRuntime().availableProcessors() - 1, 4)), new ThreadFactory() { // from class: androidx.work.Configuration.1

            /* renamed from: a, reason: collision with root package name */
            public final AtomicInteger f1827a = new AtomicInteger(0);

            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                String str;
                if (z) {
                    str = "WM.task-";
                } else {
                    str = "androidx.work-";
                }
                StringBuilder t = a.t(str);
                t.append(this.f1827a.incrementAndGet());
                return new Thread(runnable, t.toString());
            }
        });
        String str = WorkerFactory.f1856a;
        this.f1826c = new Object();
        this.d = new Object();
        this.e = new DefaultRunnableScheduler();
        this.f = 4;
        this.g = Integer.MAX_VALUE;
        this.h = 20;
    }
}
