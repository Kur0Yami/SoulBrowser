package kotlinx.coroutines.flow.internal;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.FlowCollector;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0004*\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "T1", "T2", "R", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1", f = "Combine.kt", i = {0, 0}, l = {123}, m = "invokeSuspend", n = {"second", "collectJob"}, s = {"L$0", "L$1"})
/* loaded from: classes4.dex */
final class CombineKt$zipImpl$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* renamed from: c, reason: collision with root package name */
    public JobImpl f21843c;
    public int f;
    public /* synthetic */ Object g;
    public final /* synthetic */ FlowCollector h;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u00042\u0006\u0010\u0005\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "T1", "T2", "R", "it"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2", f = "Combine.kt", i = {}, l = {124}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2, reason: invalid class name */
    /* loaded from: classes4.dex */
    public final class AnonymousClass2 extends SuspendLambda implements Function2<Unit, Continuation<? super Unit>, Object> {

        /* renamed from: c, reason: collision with root package name */
        public int f21845c;
        public final /* synthetic */ CoroutineContext f;
        public final /* synthetic */ Object g;
        public final /* synthetic */ ReceiveChannel h;
        public final /* synthetic */ FlowCollector i;
        public final /* synthetic */ JobImpl j;

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "T1", "T2", "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 9, 0}, xi = 48)
        /* renamed from: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1, reason: invalid class name */
        /* loaded from: classes4.dex */
        public final class AnonymousClass1<T> implements FlowCollector {

            /* JADX INFO: Access modifiers changed from: package-private */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u00042\u0006\u0010\u0005\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "T1", "T2", "R", "it"}, k = 3, mv = {1, 9, 0}, xi = 48)
            @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$1", f = "Combine.kt", i = {}, l = {126, 129, 129}, m = "invokeSuspend", n = {}, s = {})
            @SourceDebugExtension({"SMAP\nCombine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$1$1\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n*L\n1#1,140:1\n509#2,5:141\n14#3:146\n*S KotlinDebug\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1$2$1$1\n*L\n126#1:141,5\n129#1:146\n*E\n"})
            /* renamed from: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes4.dex */
            public final class C03591 extends SuspendLambda implements Function2<Unit, Continuation<? super Unit>, Object> {

                /* renamed from: c, reason: collision with root package name */
                public FlowCollector f21846c;
                public int f;
                public final /* synthetic */ ReceiveChannel g;
                public final /* synthetic */ FlowCollector h;
                public final /* synthetic */ Object i;
                public final /* synthetic */ JobImpl j;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C03591(ReceiveChannel receiveChannel, FlowCollector flowCollector, Object obj, JobImpl jobImpl, Continuation continuation) {
                    super(2, continuation);
                    this.g = receiveChannel;
                    this.h = flowCollector;
                    this.i = obj;
                    this.j = jobImpl;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    return new C03591(this.g, this.h, this.i, this.j, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Unit unit, Continuation<? super Unit> continuation) {
                    return ((C03591) create(unit, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                /* JADX WARN: Code restructure failed: missing block: B:14:0x002b, code lost:
                
                    if (r1.b(r6, r5) == r0) goto L19;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:15:0x0048, code lost:
                
                    return r0;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:27:0x0046, code lost:
                
                    if (r6 == r0) goto L19;
                 */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object invokeSuspend(java.lang.Object r6) {
                    /*
                        r5 = this;
                        java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r1 = r5.f
                        r2 = 0
                        r3 = 2
                        r4 = 1
                        if (r1 == 0) goto L39
                        if (r1 == r4) goto L31
                        r4 = 3
                        if (r1 == r3) goto L1e
                        if (r1 != r4) goto L16
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L2e
                    L16:
                        java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                        java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                        r6.<init>(r0)
                        throw r6
                    L1e:
                        kotlinx.coroutines.flow.FlowCollector r1 = r5.f21846c
                        kotlin.ResultKt.throwOnFailure(r6)
                        r5.f21846c = r2
                        r5.f = r4
                        java.lang.Object r6 = r1.b(r6, r5)
                        if (r6 != r0) goto L2e
                        goto L48
                    L2e:
                        kotlin.Unit r6 = kotlin.Unit.INSTANCE
                        return r6
                    L31:
                        kotlin.ResultKt.throwOnFailure(r6)
                        kotlinx.coroutines.channels.ChannelResult r6 = (kotlinx.coroutines.channels.ChannelResult) r6
                        java.lang.Object r6 = r6.f21634a
                        goto L49
                    L39:
                        kotlin.ResultKt.throwOnFailure(r6)
                        r5.f = r4
                        kotlinx.coroutines.channels.ReceiveChannel r6 = r5.g
                        kotlinx.coroutines.channels.ChannelCoroutine r6 = (kotlinx.coroutines.channels.ChannelCoroutine) r6
                        java.lang.Object r6 = r6.o(r5)
                        if (r6 != r0) goto L49
                    L48:
                        return r0
                    L49:
                        boolean r0 = r6 instanceof kotlinx.coroutines.channels.ChannelResult.Failed
                        if (r0 == 0) goto L5b
                        java.lang.Throwable r6 = kotlinx.coroutines.channels.ChannelResult.a(r6)
                        if (r6 != 0) goto L5a
                        kotlinx.coroutines.flow.internal.AbortFlowException r6 = new kotlinx.coroutines.flow.internal.AbortFlowException
                        kotlinx.coroutines.JobImpl r0 = r5.j
                        r6.<init>(r0)
                    L5a:
                        throw r6
                    L5b:
                        kotlinx.coroutines.flow.FlowCollector r6 = r5.h
                        r5.f21846c = r6
                        r5.f = r3
                        throw r2
                    */
                    throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1.AnonymousClass2.AnonymousClass1.C03591.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
            @Override // kotlinx.coroutines.flow.FlowCollector
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object b(java.lang.Object r11, kotlin.coroutines.Continuation r12) {
                /*
                    r10 = this;
                    boolean r0 = r12 instanceof kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$emit$1
                    if (r0 == 0) goto L13
                    r0 = r12
                    kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$emit$1 r0 = (kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$emit$1) r0
                    int r1 = r0.g
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.g = r1
                    goto L18
                L13:
                    kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$emit$1 r0 = new kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$emit$1
                    r0.<init>(r10, r12)
                L18:
                    java.lang.Object r12 = r0.f21847c
                    java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                    int r2 = r0.g
                    r3 = 1
                    if (r2 == 0) goto L31
                    if (r2 != r3) goto L29
                    kotlin.ResultKt.throwOnFailure(r12)
                    goto L4b
                L29:
                    java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                    java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
                    r11.<init>(r12)
                    throw r11
                L31:
                    kotlin.ResultKt.throwOnFailure(r12)
                    kotlin.Unit r12 = kotlin.Unit.INSTANCE
                    kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$1 r4 = new kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2$1$1
                    r8 = 0
                    r9 = 0
                    r5 = 0
                    r6 = 0
                    r7 = r11
                    r4.<init>(r5, r6, r7, r8, r9)
                    r0.g = r3
                    r11 = 0
                    r2 = 0
                    java.lang.Object r11 = kotlinx.coroutines.flow.internal.ChannelFlowKt.a(r11, r12, r2, r4, r0)
                    if (r11 != r1) goto L4b
                    return r1
                L4b:
                    kotlin.Unit r11 = kotlin.Unit.INSTANCE
                    return r11
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1.AnonymousClass2.AnonymousClass1.b(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(CoroutineContext coroutineContext, Object obj, ReceiveChannel receiveChannel, FlowCollector flowCollector, JobImpl jobImpl, Continuation continuation) {
            super(2, continuation);
            this.f = coroutineContext;
            this.g = obj;
            this.h = receiveChannel;
            this.i = flowCollector;
            this.j = jobImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass2(this.f, this.g, this.h, this.i, this.j, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Unit unit, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(unit, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.f21845c;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.f21845c = 1;
            throw null;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombineKt$zipImpl$1$1(FlowCollector flowCollector, Continuation continuation) {
        super(2, continuation);
        this.h = flowCollector;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        CombineKt$zipImpl$1$1 combineKt$zipImpl$1$1 = new CombineKt$zipImpl$1$1(this.h, continuation);
        combineKt$zipImpl$1$1.g = obj;
        return combineKt$zipImpl$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CombineKt$zipImpl$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x009c A[Catch: all -> 0x0019, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x0019, blocks: (B:6:0x0015, B:13:0x0094, B:15:0x009c), top: B:5:0x0015 }] */
    /* JADX WARN: Type inference failed for: r10v0, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function2] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            r18 = this;
            r1 = r18
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r1.f
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L27
            if (r2 != r3) goto L1f
            kotlinx.coroutines.JobImpl r2 = r1.f21843c
            java.lang.Object r0 = r1.g
            r3 = r0
            kotlinx.coroutines.channels.ReceiveChannel r3 = (kotlinx.coroutines.channels.ReceiveChannel) r3
            kotlin.ResultKt.throwOnFailure(r19)     // Catch: java.lang.Throwable -> L19 kotlinx.coroutines.flow.internal.AbortFlowException -> L1c
            goto L84
        L19:
            r0 = move-exception
            goto L9d
        L1c:
            r0 = move-exception
            goto L94
        L1f:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r2)
            throw r0
        L27:
            kotlin.ResultKt.throwOnFailure(r19)
            java.lang.Object r2 = r1.g
            r5 = r2
            kotlinx.coroutines.CoroutineScope r5 = (kotlinx.coroutines.CoroutineScope) r5
            kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$second$1 r10 = new kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$second$1
            r2 = 2
            r10.<init>(r2, r4)
            kotlin.coroutines.EmptyCoroutineContext r6 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE
            kotlinx.coroutines.channels.BufferOverflow r8 = kotlinx.coroutines.channels.BufferOverflow.f21616c
            kotlinx.coroutines.CoroutineStart r9 = kotlinx.coroutines.CoroutineStart.f21581c
            r7 = 0
            kotlinx.coroutines.channels.ReceiveChannel r14 = kotlinx.coroutines.channels.ProduceKt.a(r5, r6, r7, r8, r9, r10)
            kotlinx.coroutines.JobImpl r2 = new kotlinx.coroutines.JobImpl
            r2.<init>()
            java.lang.String r6 = "null cannot be cast to non-null type kotlinx.coroutines.channels.SendChannel<*>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r14, r6)
            r6 = r14
            kotlinx.coroutines.channels.SendChannel r6 = (kotlinx.coroutines.channels.SendChannel) r6
            kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$1 r7 = new kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$1
            r7.<init>()
            r6.p(r7)
            kotlin.coroutines.CoroutineContext r12 = r5.getF21870c()     // Catch: java.lang.Throwable -> L8c kotlinx.coroutines.flow.internal.AbortFlowException -> L8e
            java.lang.Object r13 = kotlinx.coroutines.internal.ThreadContextKt.b(r12)     // Catch: java.lang.Throwable -> L8c kotlinx.coroutines.flow.internal.AbortFlowException -> L8e
            kotlin.coroutines.CoroutineContext r5 = r5.getF21870c()     // Catch: java.lang.Throwable -> L8c kotlinx.coroutines.flow.internal.AbortFlowException -> L8e
            kotlin.coroutines.CoroutineContext r5 = r5.plus(r2)     // Catch: java.lang.Throwable -> L8c kotlinx.coroutines.flow.internal.AbortFlowException -> L8e
            kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L8c kotlinx.coroutines.flow.internal.AbortFlowException -> L8e
            kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2 r11 = new kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1$2     // Catch: java.lang.Throwable -> L8c kotlinx.coroutines.flow.internal.AbortFlowException -> L8e
            kotlinx.coroutines.flow.FlowCollector r15 = r1.h     // Catch: java.lang.Throwable -> L8c kotlinx.coroutines.flow.internal.AbortFlowException -> L8e
            r17 = 0
            r16 = r2
            r11.<init>(r12, r13, r14, r15, r16, r17)     // Catch: java.lang.Throwable -> L8c kotlinx.coroutines.flow.internal.AbortFlowException -> L90
            r1.g = r14     // Catch: java.lang.Throwable -> L8c kotlinx.coroutines.flow.internal.AbortFlowException -> L8e
            r1.f21843c = r2     // Catch: java.lang.Throwable -> L8c kotlinx.coroutines.flow.internal.AbortFlowException -> L8e
            r1.f = r3     // Catch: java.lang.Throwable -> L8c kotlinx.coroutines.flow.internal.AbortFlowException -> L8e
            java.lang.Object r3 = kotlinx.coroutines.internal.ThreadContextKt.b(r5)     // Catch: java.lang.Throwable -> L8c kotlinx.coroutines.flow.internal.AbortFlowException -> L8e
            java.lang.Object r2 = kotlinx.coroutines.flow.internal.ChannelFlowKt.a(r5, r6, r3, r11, r1)     // Catch: java.lang.Throwable -> L8c kotlinx.coroutines.flow.internal.AbortFlowException -> L8e
            if (r2 != r0) goto L83
            return r0
        L83:
            r3 = r14
        L84:
            r3.a(r4)
            goto L99
        L88:
            r3 = r14
            goto L9d
        L8a:
            r3 = r14
            goto L94
        L8c:
            r0 = move-exception
            goto L88
        L8e:
            r0 = move-exception
            goto L8a
        L90:
            r0 = move-exception
            r2 = r16
            goto L8a
        L94:
            java.lang.Object r5 = r0.f21826c     // Catch: java.lang.Throwable -> L19
            if (r5 != r2) goto L9c
            goto L84
        L99:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            return r0
        L9c:
            throw r0     // Catch: java.lang.Throwable -> L19
        L9d:
            r3.a(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.CombineKt$zipImpl$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
