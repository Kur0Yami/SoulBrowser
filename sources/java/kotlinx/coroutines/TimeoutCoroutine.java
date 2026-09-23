package kotlinx.coroutines;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlinx.coroutines.internal.ScopeCoroutine;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u0001*\n\b\u0001\u0010\u0002 \u0000*\u00028\u00002\b\u0012\u0004\u0012\u00028\u00010\u00032\u00060\u0004j\u0002`\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/TimeoutCoroutine;", "U", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/internal/ScopeCoroutine;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
final class TimeoutCoroutine<U, T extends U> extends ScopeCoroutine<T> implements Runnable {
    @Override // kotlinx.coroutines.JobSupport
    public final String Y() {
        return super.Y().concat("(timeMillis=0)");
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x001d, code lost:
    
        if (r0 == null) goto L9;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r4 = this;
            kotlin.coroutines.CoroutineContext r0 = r4.g
            kotlinx.coroutines.Delay r0 = kotlinx.coroutines.DelayKt.b(r0)
            boolean r1 = r0 instanceof kotlinx.coroutines.DelayWithTimeoutDiagnostics
            if (r1 == 0) goto Ld
            kotlinx.coroutines.DelayWithTimeoutDiagnostics r0 = (kotlinx.coroutines.DelayWithTimeoutDiagnostics) r0
            goto Le
        Ld:
            r0 = 0
        Le:
            if (r0 == 0) goto L1f
            kotlin.time.Duration$Companion r1 = kotlin.time.Duration.INSTANCE
            kotlin.time.DurationUnit r1 = kotlin.time.DurationUnit.MILLISECONDS
            r2 = 0
            kotlin.time.DurationKt.toDuration(r2, r1)
            java.lang.String r0 = r0.k()
            if (r0 != 0) goto L21
        L1f:
            java.lang.String r0 = "Timed out waiting for 0 ms"
        L21:
            kotlinx.coroutines.TimeoutCancellationException r1 = new kotlinx.coroutines.TimeoutCancellationException
            r1.<init>(r0, r4)
            r4.C(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.TimeoutCoroutine.run():void");
    }
}
