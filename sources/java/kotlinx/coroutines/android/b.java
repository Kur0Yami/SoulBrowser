package kotlinx.coroutines.android;

import android.view.Choreographer;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* loaded from: classes4.dex */
public final /* synthetic */ class b implements Choreographer.FrameCallback {
    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        int i = HandlerDispatcherKt.f21612a;
        DefaultScheduler defaultScheduler = Dispatchers.f21584a;
        MainCoroutineDispatcher mainCoroutineDispatcher = MainDispatcherLoader.f21890a;
        throw null;
    }
}
