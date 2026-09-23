package com.nostra13.universalimageloader.core;

import android.app.ActivityManager;
import android.content.Context;
import android.support.v4.media.a;
import com.nostra13.universalimageloader.cache.memory.impl.LruMemoryCache;
import com.nostra13.universalimageloader.core.assist.QueueProcessingType;
import com.nostra13.universalimageloader.core.assist.deque.LinkedBlockingDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public class DefaultConfigurationFactory {

    /* loaded from: classes3.dex */
    public static class DefaultThreadFactory implements ThreadFactory {
        public static final AtomicInteger e = new AtomicInteger(1);

        /* renamed from: c, reason: collision with root package name */
        public final String f20956c;
        public final int d;
        public final AtomicInteger b = new AtomicInteger(1);

        /* renamed from: a, reason: collision with root package name */
        public final ThreadGroup f20955a = Thread.currentThread().getThreadGroup();

        public DefaultThreadFactory(int i, String str) {
            this.d = i;
            StringBuilder t = a.t(str);
            t.append(e.getAndIncrement());
            t.append("-thread-");
            this.f20956c = t.toString();
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(this.f20955a, runnable, this.f20956c + this.b.getAndIncrement(), 0L);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            thread.setPriority(this.d);
            return thread;
        }
    }

    public static ThreadPoolExecutor a(int i, QueueProcessingType queueProcessingType) {
        BlockingQueue linkedBlockingQueue;
        if (queueProcessingType == QueueProcessingType.f) {
            linkedBlockingQueue = new LinkedBlockingDeque();
        } else {
            linkedBlockingQueue = new LinkedBlockingQueue();
        }
        return new ThreadPoolExecutor(3, 3, 0L, TimeUnit.MILLISECONDS, (BlockingQueue<Runnable>) linkedBlockingQueue, new DefaultThreadFactory(i, "uil-pool-"));
    }

    public static LruMemoryCache b(Context context, int i) {
        if (i == 0) {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            int memoryClass = activityManager.getMemoryClass();
            if ((context.getApplicationInfo().flags & 1048576) != 0) {
                memoryClass = activityManager.getLargeMemoryClass();
            }
            i = (memoryClass * 1048576) / 8;
        }
        return new LruMemoryCache(i);
    }
}
