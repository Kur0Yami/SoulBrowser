package kotlinx.coroutines.debug.internal;

import com.google.android.gms.ads.RequestConfiguration;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.debug.internal.ConcurrentWeakMap;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
final class DebugProbesImpl$startWeakRefCleanerThread$1 extends Lambda implements Function0<Unit> {
    static {
        new Lambda(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Unit invoke() {
        ConcurrentWeakMap concurrentWeakMap = DebugProbesImpl.f21691c;
        ReferenceQueue referenceQueue = concurrentWeakMap.f21679c;
        if (referenceQueue == null) {
            throw new IllegalStateException("Must be created with weakRefQueue = true");
        }
        while (true) {
            try {
                Reference remove = referenceQueue.remove();
                Intrinsics.checkNotNull(remove, "null cannot be cast to non-null type kotlinx.coroutines.debug.internal.HashedWeakRef<*>");
                HashedWeakRef hashedWeakRef = (HashedWeakRef) remove;
                ConcurrentWeakMap.Core core = (ConcurrentWeakMap.Core) ConcurrentWeakMap.g.get(concurrentWeakMap);
                core.getClass();
                int i = (hashedWeakRef.f21692a * (-1640531527)) >>> core.b;
                while (true) {
                    HashedWeakRef hashedWeakRef2 = (HashedWeakRef) core.d.get(i);
                    if (hashedWeakRef2 != null) {
                        if (hashedWeakRef2 == hashedWeakRef) {
                            core.c(i);
                            break;
                        }
                        if (i == 0) {
                            i = core.f21680a;
                        }
                        i--;
                    }
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                return Unit.INSTANCE;
            }
        }
    }
}
