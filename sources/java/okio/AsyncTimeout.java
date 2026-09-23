package okio;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Lokio/AsyncTimeout;", "Lokio/Timeout;", "Watchdog", "Companion", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAsyncTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,514:1\n1#2:515\n*E\n"})
/* loaded from: classes4.dex */
public class AsyncTimeout extends Timeout {
    public static final PriorityQueue h;
    public static AsyncTimeout i;
    public static final ReentrantLock j;
    public static final Condition k;
    public static final long l;
    public static final long m;
    public int e;
    public int f = -1;
    public long g;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0007R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u0004¨\u0006\r"}, d2 = {"Lokio/AsyncTimeout$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "TIMEOUT_WRITE_SIZE", "I", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "IDLE_TIMEOUT_MILLIS", "J", "IDLE_TIMEOUT_NANOS", "STATE_IDLE", "STATE_IN_QUEUE", "STATE_TIMED_OUT", "STATE_CANCELED", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public static final void a(AsyncTimeout node) {
            PriorityQueue priorityQueue = AsyncTimeout.h;
            if (AsyncTimeout.i == null) {
                AsyncTimeout.i = new AsyncTimeout();
                Thread thread = new Thread("Okio Watchdog");
                thread.setDaemon(true);
                thread.start();
            }
            long nanoTime = System.nanoTime();
            long j = node.f22222c;
            boolean z = node.f22221a;
            if (j != 0 && z) {
                node.g = Math.min(j, node.c() - nanoTime) + nanoTime;
            } else if (j != 0) {
                node.g = nanoTime + j;
            } else if (z) {
                node.g = node.c();
            } else {
                throw new AssertionError();
            }
            PriorityQueue priorityQueue2 = AsyncTimeout.h;
            Intrinsics.checkNotNullParameter(node, "node");
            int i = priorityQueue2.f22213a + 1;
            priorityQueue2.f22213a = i;
            AsyncTimeout[] asyncTimeoutArr = priorityQueue2.b;
            if (i == asyncTimeoutArr.length) {
                AsyncTimeout[] asyncTimeoutArr2 = new AsyncTimeout[i * 2];
                ArraysKt___ArraysJvmKt.copyInto$default(asyncTimeoutArr, asyncTimeoutArr2, 0, 0, 0, 14, (Object) null);
                priorityQueue2.b = asyncTimeoutArr2;
            }
            priorityQueue2.a(i, node);
            if (node.f == 1) {
                AsyncTimeout.k.signal();
            }
        }

        public static AsyncTimeout b() {
            PriorityQueue priorityQueue = AsyncTimeout.h;
            AsyncTimeout asyncTimeout = priorityQueue.b[1];
            if (asyncTimeout == null) {
                long nanoTime = System.nanoTime();
                AsyncTimeout.k.await(AsyncTimeout.l, TimeUnit.MILLISECONDS);
                if (priorityQueue.b[1] != null || System.nanoTime() - nanoTime < AsyncTimeout.m) {
                    return null;
                }
                return AsyncTimeout.i;
            }
            long nanoTime2 = asyncTimeout.g - System.nanoTime();
            if (nanoTime2 > 0) {
                AsyncTimeout.k.await(nanoTime2, TimeUnit.NANOSECONDS);
                return null;
            }
            priorityQueue.b(asyncTimeout);
            asyncTimeout.e = 2;
            return asyncTimeout;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/AsyncTimeout$Watchdog;", "Ljava/lang/Thread;", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Watchdog extends Thread {
        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            ReentrantLock reentrantLock;
            AsyncTimeout b;
            while (true) {
                try {
                    PriorityQueue priorityQueue = AsyncTimeout.h;
                    reentrantLock = AsyncTimeout.j;
                    reentrantLock.lock();
                    try {
                        b = Companion.b();
                    } finally {
                        reentrantLock.unlock();
                    }
                } catch (InterruptedException unused) {
                    continue;
                }
                if (b == AsyncTimeout.i) {
                    AsyncTimeout.i = null;
                    return;
                }
                Unit unit = Unit.INSTANCE;
                reentrantLock.unlock();
                if (b != null) {
                    b.k();
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [okio.PriorityQueue, java.lang.Object] */
    static {
        ?? obj = new Object();
        obj.b = new AsyncTimeout[8];
        h = obj;
        ReentrantLock reentrantLock = new ReentrantLock();
        j = reentrantLock;
        Condition newCondition = reentrantLock.newCondition();
        Intrinsics.checkNotNullExpressionValue(newCondition, "newCondition(...)");
        k = newCondition;
        long millis = TimeUnit.SECONDS.toMillis(60L);
        l = millis;
        m = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    public final void h() {
        long j2 = this.f22222c;
        boolean z = this.f22221a;
        if (j2 == 0 && !z) {
            return;
        }
        ReentrantLock reentrantLock = j;
        reentrantLock.lock();
        try {
            if (this.e == 0) {
                this.e = 1;
                Companion.a(this);
                Unit unit = Unit.INSTANCE;
                return;
            }
            throw new IllegalStateException("Unbalanced enter/exit");
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean i() {
        ReentrantLock reentrantLock = j;
        reentrantLock.lock();
        try {
            int i2 = this.e;
            boolean z = false;
            this.e = 0;
            if (i2 == 1) {
                h.b(this);
                return false;
            }
            if (i2 == 2) {
                z = true;
            }
            return z;
        } finally {
            reentrantLock.unlock();
        }
    }

    public IOException j(IOException iOException) {
        throw null;
    }

    public void k() {
    }
}
