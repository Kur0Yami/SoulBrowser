package kotlinx.coroutines.internal;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.ThreadContextElement;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/internal/ThreadState;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class ThreadState {

    /* renamed from: a, reason: collision with root package name */
    public final CoroutineContext f21902a;
    public final Object[] b;

    /* renamed from: c, reason: collision with root package name */
    public final ThreadContextElement[] f21903c;
    public int d;

    public ThreadState(int i, CoroutineContext coroutineContext) {
        this.f21902a = coroutineContext;
        this.b = new Object[i];
        this.f21903c = new ThreadContextElement[i];
    }
}
