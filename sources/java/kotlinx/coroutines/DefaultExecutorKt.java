package kotlinx.coroutines;

import kotlin.Metadata;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.internal.MainDispatchersKt;
import kotlinx.coroutines.internal.SystemPropsKt;
import kotlinx.coroutines.scheduling.DefaultScheduler;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class DefaultExecutorKt {

    /* renamed from: a, reason: collision with root package name */
    public static final Delay f21582a;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        boolean z;
        Delay delay;
        String c2 = SystemPropsKt.c("kotlinx.coroutines.main.delay");
        if (c2 != null) {
            z = Boolean.parseBoolean(c2);
        } else {
            z = false;
        }
        if (!z) {
            delay = DefaultExecutor.l;
        } else {
            DefaultScheduler defaultScheduler = Dispatchers.f21584a;
            MainCoroutineDispatcher mainCoroutineDispatcher = MainDispatcherLoader.f21890a;
            if (!MainDispatchersKt.a(mainCoroutineDispatcher) && (mainCoroutineDispatcher instanceof Delay)) {
                delay = (Delay) mainCoroutineDispatcher;
            } else {
                delay = DefaultExecutor.l;
            }
        }
        f21582a = delay;
    }
}
