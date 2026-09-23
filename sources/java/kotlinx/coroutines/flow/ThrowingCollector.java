package kotlinx.coroutines.flow;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0000\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/flow/ThrowingCollector;", "Lkotlinx/coroutines/flow/FlowCollector;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class ThrowingCollector implements FlowCollector<Object> {

    /* renamed from: c, reason: collision with root package name */
    public final Throwable f21825c;

    public ThrowingCollector(Throwable th) {
        this.f21825c = th;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object b(Object obj, Continuation continuation) {
        throw this.f21825c;
    }
}
