package kotlinx.coroutines;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.LongCompanionObject;
import kotlinx.coroutines.internal.Symbol;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u001e\b\u0002\u0010\u0002\u001a\u0004\b\u0000\u0010\u0000\"\b\u0012\u0004\u0012\u00028\u00000\u00012\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0003"}, d2 = {RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "Queue", "kotlinx-coroutines-core"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class EventLoop_commonKt {

    /* renamed from: a, reason: collision with root package name */
    public static final Symbol f21590a = new Symbol("REMOVED_TASK");
    public static final Symbol b = new Symbol("CLOSED_EMPTY");

    public static final long a(long j) {
        if (j <= 0) {
            return 0L;
        }
        return j >= 9223372036854L ? LongCompanionObject.MAX_VALUE : j * 1000000;
    }
}
