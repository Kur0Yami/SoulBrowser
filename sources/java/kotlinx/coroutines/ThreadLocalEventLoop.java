package kotlinx.coroutines;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/ThreadLocalEventLoop;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/ThreadLocalEventLoop\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,540:1\n1#2:541\n*E\n"})
/* loaded from: classes4.dex */
public final class ThreadLocalEventLoop {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f21604a = new ThreadLocal();

    public static EventLoop a() {
        ThreadLocal threadLocal = f21604a;
        EventLoop eventLoop = (EventLoop) threadLocal.get();
        if (eventLoop == null) {
            BlockingEventLoop blockingEventLoop = new BlockingEventLoop(Thread.currentThread());
            threadLocal.set(blockingEventLoop);
            return blockingEventLoop;
        }
        return eventLoop;
    }
}
