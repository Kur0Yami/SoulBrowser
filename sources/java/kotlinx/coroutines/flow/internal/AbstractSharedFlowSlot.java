package kotlinx.coroutines.flow.internal;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\b \u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;", "F", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public abstract class AbstractSharedFlowSlot<F> {
    public abstract boolean a(AbstractSharedFlow abstractSharedFlow);

    public abstract Continuation[] b(AbstractSharedFlow abstractSharedFlow);
}
