package kotlinx.coroutines.flow;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;

@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/CoroutineScope;", "downstream", "Lkotlinx/coroutines/flow/FlowCollector;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1", f = "Delay.kt", i = {0, 0, 0, 0, 1, 1, 1}, l = {215, 417}, m = "invokeSuspend", n = {"downstream", "values", "lastValue", "timeoutMillis", "downstream", "values", "lastValue"}, s = {"L$0", "L$1", "L$2", "L$3", "L$0", "L$1", "L$2"})
@SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,406:1\n14#2:407\n14#2:409\n1#3:408\n51#4,8:410\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1\n*L\n212#1:407\n215#1:409\n222#1:410,8\n*E\n"})
/* loaded from: classes4.dex */
final class FlowKt__DelayKt$debounceInternal$1 extends SuspendLambda implements Function3<CoroutineScope, FlowCollector<Object>, Continuation<? super Unit>, Object> {

    /* renamed from: c, reason: collision with root package name */
    public Ref.ObjectRef f21717c;
    public Ref.LongRef f;
    public int g;
    public /* synthetic */ Object h;
    public /* synthetic */ Object i;

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(CoroutineScope coroutineScope, FlowCollector<Object> flowCollector, Continuation<? super Unit> continuation) {
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0074  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x006b -> B:7:0x006e). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r9.g
            r2 = 0
            if (r1 == 0) goto L82
            r3 = 2
            r4 = 1
            if (r1 == r4) goto L25
            if (r1 != r3) goto L1d
            kotlin.jvm.internal.Ref$ObjectRef r1 = r9.f21717c
            java.lang.Object r4 = r9.i
            kotlinx.coroutines.channels.ReceiveChannel r4 = (kotlinx.coroutines.channels.ReceiveChannel) r4
            java.lang.Object r5 = r9.h
            kotlinx.coroutines.flow.FlowCollector r5 = (kotlinx.coroutines.flow.FlowCollector) r5
            kotlin.ResultKt.throwOnFailure(r10)
            goto L6e
        L1d:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L25:
            kotlin.jvm.internal.Ref$LongRef r1 = r9.f
            kotlin.jvm.internal.Ref$ObjectRef r4 = r9.f21717c
            java.lang.Object r5 = r9.i
            kotlinx.coroutines.channels.ReceiveChannel r5 = (kotlinx.coroutines.channels.ReceiveChannel) r5
            java.lang.Object r6 = r9.h
            kotlinx.coroutines.flow.FlowCollector r6 = (kotlinx.coroutines.flow.FlowCollector) r6
            kotlin.ResultKt.throwOnFailure(r10)
            r4.element = r2
            r10 = r1
            r1 = r4
            r4 = r5
            r5 = r6
        L3a:
            kotlinx.coroutines.selects.SelectImplementation r6 = new kotlinx.coroutines.selects.SelectImplementation
            kotlin.coroutines.CoroutineContext r7 = r9.getF()
            r6.<init>(r7)
            T r7 = r1.element
            if (r7 == 0) goto L51
            long r7 = r10.element
            kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$1 r10 = new kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$1
            r10.<init>(r2, r1, r5)
            kotlinx.coroutines.selects.OnTimeoutKt.a(r6, r7, r10)
        L51:
            kotlinx.coroutines.selects.SelectClause1 r10 = r4.e()
            kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$2 r7 = new kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$2
            r7.<init>(r2, r1, r5)
            r6.j(r10, r7)
            r9.h = r5
            r9.i = r4
            r9.f21717c = r1
            r9.f = r2
            r9.g = r3
            java.lang.Object r10 = r6.g(r9)
            if (r10 != r0) goto L6e
            return r0
        L6e:
            T r10 = r1.element
            kotlinx.coroutines.internal.Symbol r6 = kotlinx.coroutines.flow.internal.NullSurrogateKt.f21854c
            if (r10 == r6) goto L7f
            kotlin.jvm.internal.Ref$LongRef r10 = new kotlin.jvm.internal.Ref$LongRef
            r10.<init>()
            T r6 = r1.element
            if (r6 != 0) goto L7e
            goto L3a
        L7e:
            throw r2
        L7f:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        L82:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.Object r10 = r9.h
            kotlinx.coroutines.CoroutineScope r10 = (kotlinx.coroutines.CoroutineScope) r10
            java.lang.Object r10 = r9.i
            kotlinx.coroutines.flow.FlowCollector r10 = (kotlinx.coroutines.flow.FlowCollector) r10
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
