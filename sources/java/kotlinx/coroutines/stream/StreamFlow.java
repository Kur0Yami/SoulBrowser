package kotlinx.coroutines.stream;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002R\u000b\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/coroutines/stream/StreamFlow;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/flow/Flow;", "Lkotlinx/atomicfu/AtomicBoolean;", "consumed", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class StreamFlow<T> implements Flow<T> {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f21934c = AtomicIntegerFieldUpdater.newUpdater(StreamFlow.class, "consumed$volatile");
    private volatile /* synthetic */ int consumed$volatile;

    /* JADX WARN: Removed duplicated region for block: B:28:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlinx.coroutines.flow.FlowCollector r6, kotlin.coroutines.Continuation r7) {
        /*
            r5 = this;
            boolean r6 = r7 instanceof kotlinx.coroutines.stream.StreamFlow$collect$1
            if (r6 == 0) goto L13
            r6 = r7
            kotlinx.coroutines.stream.StreamFlow$collect$1 r6 = (kotlinx.coroutines.stream.StreamFlow$collect$1) r6
            int r0 = r6.i
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r2 = r0 & r1
            if (r2 == 0) goto L13
            int r0 = r0 - r1
            r6.i = r0
            goto L18
        L13:
            kotlinx.coroutines.stream.StreamFlow$collect$1 r6 = new kotlinx.coroutines.stream.StreamFlow$collect$1
            r6.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r6.g
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.i
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L4f
            if (r1 != r3) goto L47
            java.util.Iterator r1 = r6.f
            kotlinx.coroutines.flow.FlowCollector r4 = r6.f21935c
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L44
        L2d:
            boolean r7 = r1.hasNext()     // Catch: java.lang.Throwable -> L44
            if (r7 == 0) goto L46
            java.lang.Object r7 = r1.next()     // Catch: java.lang.Throwable -> L44
            r6.f21935c = r4     // Catch: java.lang.Throwable -> L44
            r6.f = r1     // Catch: java.lang.Throwable -> L44
            r6.i = r3     // Catch: java.lang.Throwable -> L44
            java.lang.Object r7 = r4.b(r7, r6)     // Catch: java.lang.Throwable -> L44
            if (r7 != r0) goto L2d
            return r0
        L44:
            r6 = r2
            goto L65
        L46:
            throw r2
        L47:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L4f:
            kotlin.ResultKt.throwOnFailure(r7)
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r6 = kotlinx.coroutines.stream.StreamFlow.f21934c
            r7 = 0
            boolean r6 = r6.compareAndSet(r5, r7, r3)
            if (r6 != 0) goto L63
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "Stream.consumeAsFlow can be collected only once"
            r6.<init>(r7)
            throw r6
        L63:
            throw r2     // Catch: java.lang.Throwable -> L64
        L64:
            r6 = r5
        L65:
            r6.getClass()
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.stream.StreamFlow.a(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
