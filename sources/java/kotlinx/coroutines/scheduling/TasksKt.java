package kotlinx.coroutines.scheduling;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.internal.SystemPropsKt;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class TasksKt {

    /* renamed from: a, reason: collision with root package name */
    public static final String f21911a;
    public static final long b;

    /* renamed from: c, reason: collision with root package name */
    public static final int f21912c;
    public static final int d;
    public static final long e;
    public static final NanoTimeSource f;
    public static final TaskContext g;
    public static final TaskContext h;

    static {
        String c2 = SystemPropsKt.c("kotlinx.coroutines.scheduler.default.name");
        if (c2 == null) {
            c2 = "DefaultDispatcher";
        }
        f21911a = c2;
        b = SystemPropsKt.b(100000L, 1L, LongCompanionObject.MAX_VALUE, "kotlinx.coroutines.scheduler.resolution.ns");
        f21912c = SystemPropsKt.d(RangesKt.coerceAtLeast(SystemPropsKt.a(), 2), 8, "kotlinx.coroutines.scheduler.core.pool.size");
        d = SystemPropsKt.d(2097150, 4, "kotlinx.coroutines.scheduler.max.pool.size");
        e = TimeUnit.SECONDS.toNanos(SystemPropsKt.b(60L, 1L, LongCompanionObject.MAX_VALUE, "kotlinx.coroutines.scheduler.keep.alive.sec"));
        f = NanoTimeSource.f21908a;
        g = new TaskContextImpl(0);
        h = new TaskContextImpl(1);
    }
}
