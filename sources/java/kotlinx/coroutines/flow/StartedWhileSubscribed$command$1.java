package kotlinx.coroutines.flow;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lkotlinx/coroutines/flow/FlowCollector;", "Lkotlinx/coroutines/flow/SharingCommand;", "count", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$1", f = "SharingStarted.kt", i = {1, 2, 3}, l = {174, 176, 178, 179, 181}, m = "invokeSuspend", n = {"$this$transformLatest", "$this$transformLatest", "$this$transformLatest"}, s = {"L$0", "L$0", "L$0"})
/* loaded from: classes4.dex */
final class StartedWhileSubscribed$command$1 extends SuspendLambda implements Function3<FlowCollector<? super SharingCommand>, Integer, Continuation<? super Unit>, Object> {

    /* renamed from: c, reason: collision with root package name */
    public int f21818c;
    public /* synthetic */ FlowCollector f;
    public /* synthetic */ int g;
    public final /* synthetic */ StartedWhileSubscribed h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StartedWhileSubscribed$command$1(StartedWhileSubscribed startedWhileSubscribed, Continuation continuation) {
        super(3, continuation);
        this.h = startedWhileSubscribed;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(FlowCollector<? super SharingCommand> flowCollector, Integer num, Continuation<? super Unit> continuation) {
        int intValue = num.intValue();
        StartedWhileSubscribed$command$1 startedWhileSubscribed$command$1 = new StartedWhileSubscribed$command$1(this.h, continuation);
        startedWhileSubscribed$command$1.f = flowCollector;
        startedWhileSubscribed$command$1.g = intValue;
        return startedWhileSubscribed$command$1.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0035, code lost:
    
        if (kotlinx.coroutines.DelayKt.a(0, r7) == r0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0067, code lost:
    
        if (r1.b(r8, r7) != r0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004d, code lost:
    
        if (r8.b(r1, r7) == r0) goto L29;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.f21818c
            r2 = 0
            r4 = 5
            r5 = 2
            r6 = 1
            if (r1 == 0) goto L3c
            if (r1 == r6) goto L38
            if (r1 == r5) goto L22
            r5 = 3
            r6 = 4
            if (r1 == r5) goto L28
            if (r1 == r6) goto L22
            if (r1 != r4) goto L1a
            goto L38
        L1a:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L22:
            kotlinx.coroutines.flow.FlowCollector r1 = r7.f
            kotlin.ResultKt.throwOnFailure(r8)
            goto L5c
        L28:
            kotlinx.coroutines.flow.FlowCollector r1 = r7.f
            kotlin.ResultKt.throwOnFailure(r8)
            r7.f = r1
            r7.f21818c = r6
            java.lang.Object r8 = kotlinx.coroutines.DelayKt.a(r2, r7)
            if (r8 != r0) goto L5c
            goto L69
        L38:
            kotlin.ResultKt.throwOnFailure(r8)
            goto L6a
        L3c:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.flow.FlowCollector r8 = r7.f
            int r1 = r7.g
            if (r1 <= 0) goto L50
            kotlinx.coroutines.flow.SharingCommand r1 = kotlinx.coroutines.flow.SharingCommand.f21813c
            r7.f21818c = r6
            java.lang.Object r8 = r8.b(r1, r7)
            if (r8 != r0) goto L6a
            goto L69
        L50:
            r7.f = r8
            r7.f21818c = r5
            java.lang.Object r1 = kotlinx.coroutines.DelayKt.a(r2, r7)
            if (r1 != r0) goto L5b
            goto L69
        L5b:
            r1 = r8
        L5c:
            kotlinx.coroutines.flow.SharingCommand r8 = kotlinx.coroutines.flow.SharingCommand.f
            r2 = 0
            r7.f = r2
            r7.f21818c = r4
            java.lang.Object r8 = r1.b(r8, r7)
            if (r8 != r0) goto L6a
        L69:
            return r0
        L6a:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StartedWhileSubscribed$command$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
