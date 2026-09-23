package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.util.Preconditions;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
final class DiskCacheWriteLocker {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f2252a = new HashMap();
    public final WriteLockPool b = new WriteLockPool();

    /* loaded from: classes.dex */
    public static class WriteLock {

        /* renamed from: a, reason: collision with root package name */
        public final ReentrantLock f2253a = new ReentrantLock();
        public int b;
    }

    /* loaded from: classes.dex */
    public static class WriteLockPool {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayDeque f2254a = new ArrayDeque();

        public final WriteLock a() {
            WriteLock writeLock;
            synchronized (this.f2254a) {
                writeLock = (WriteLock) this.f2254a.poll();
            }
            if (writeLock == null) {
                return new WriteLock();
            }
            return writeLock;
        }

        public final void b(WriteLock writeLock) {
            synchronized (this.f2254a) {
                try {
                    if (this.f2254a.size() < 10) {
                        this.f2254a.offer(writeLock);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void a(String str) {
        WriteLock writeLock;
        synchronized (this) {
            try {
                writeLock = (WriteLock) this.f2252a.get(str);
                Preconditions.c(writeLock, "Argument must not be null");
                int i = writeLock.b;
                if (i >= 1) {
                    int i2 = i - 1;
                    writeLock.b = i2;
                    if (i2 == 0) {
                        WriteLock writeLock2 = (WriteLock) this.f2252a.remove(str);
                        if (writeLock2.equals(writeLock)) {
                            this.b.b(writeLock2);
                        } else {
                            throw new IllegalStateException("Removed the wrong lock, expected to remove: " + writeLock + ", but actually removed: " + writeLock2 + ", safeKey: " + str);
                        }
                    }
                } else {
                    throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + writeLock.b);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        writeLock.f2253a.unlock();
    }
}
