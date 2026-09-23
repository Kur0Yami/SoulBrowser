package kotlinx.coroutines.flow.internal;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.internal.ScopeCoroutine;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00020\u00032\u00020\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/coroutines/flow/internal/SafeCollector;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/flow/FlowCollector;", "Lkotlin/coroutines/jvm/internal/ContinuationImpl;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSafeCollector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeCollector.kt\nkotlinx/coroutines/flow/internal/SafeCollector\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,182:1\n1#2:183\n*E\n"})
/* loaded from: classes4.dex */
public final class SafeCollector<T> extends ContinuationImpl implements FlowCollector<T>, CoroutineStackFrame {

    /* renamed from: c, reason: collision with root package name */
    public final FlowCollector f21855c;
    public final CoroutineContext f;
    public final int g;
    public CoroutineContext h;
    public Continuation i;

    public SafeCollector(FlowCollector flowCollector, CoroutineContext coroutineContext) {
        super(NoOpContinuation.f21852c, EmptyCoroutineContext.INSTANCE);
        this.f21855c = flowCollector;
        this.f = coroutineContext;
        this.g = ((Number) coroutineContext.fold(0, SafeCollector$collectContextSize$1.f21856c)).intValue();
    }

    public final Object a(Continuation continuation, Object obj) {
        CoroutineContext i = continuation.getI();
        JobKt.b(i);
        CoroutineContext coroutineContext = this.h;
        if (coroutineContext != i) {
            if (!(coroutineContext instanceof DownstreamExceptionContext)) {
                if (((Number) i.fold(0, new Function2<Integer, CoroutineContext.Element, Integer>() { // from class: kotlinx.coroutines.flow.internal.SafeCollector_commonKt$checkContext$result$1
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Integer invoke(Integer num, CoroutineContext.Element element) {
                        int i2;
                        int intValue = num.intValue();
                        CoroutineContext.Element element2 = element;
                        CoroutineContext.Key<?> key = element2.getKey();
                        CoroutineContext.Element element3 = SafeCollector.this.f.get(key);
                        if (key != Job.Key.f21595c) {
                            if (element2 != element3) {
                                i2 = IntCompanionObject.MIN_VALUE;
                            } else {
                                i2 = intValue + 1;
                            }
                            return Integer.valueOf(i2);
                        }
                        Job job = (Job) element3;
                        Intrinsics.checkNotNull(element2, "null cannot be cast to non-null type kotlinx.coroutines.Job");
                        Job job2 = (Job) element2;
                        while (true) {
                            if (job2 == null) {
                                job2 = null;
                                break;
                            }
                            if (job2 == job || !(job2 instanceof ScopeCoroutine)) {
                                break;
                            }
                            job2 = job2.getParent();
                        }
                        if (job2 == job) {
                            if (job != null) {
                                intValue++;
                            }
                            return Integer.valueOf(intValue);
                        }
                        throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + job2 + ", expected child of " + job + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
                    }
                })).intValue() == this.g) {
                    this.h = i;
                } else {
                    throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + this.f + ",\n\t\tbut emission happened in " + i + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
                }
            } else {
                throw new IllegalStateException(StringsKt.trimIndent("\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + ((DownstreamExceptionContext) coroutineContext).f21850c + ", but then emission attempt of value '" + obj + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ").toString());
            }
        }
        this.i = continuation;
        Function3 function3 = SafeCollectorKt.f21857a;
        FlowCollector flowCollector = this.f21855c;
        Intrinsics.checkNotNull(flowCollector, "null cannot be cast to non-null type kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>");
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Unit>");
        Object invoke = function3.invoke(flowCollector, obj, this);
        if (!Intrinsics.areEqual(invoke, IntrinsicsKt.getCOROUTINE_SUSPENDED())) {
            this.i = null;
        }
        return invoke;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object b(Object obj, Continuation continuation) {
        try {
            Object a2 = a(continuation, obj);
            if (a2 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            if (a2 == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                return a2;
            }
            return Unit.INSTANCE;
        } catch (Throwable th) {
            this.h = new DownstreamExceptionContext(continuation.getI(), th);
            throw th;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl, kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final CoroutineStackFrame getCallerFrame() {
        Continuation continuation = this.i;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.ContinuationImpl, kotlin.coroutines.Continuation
    /* renamed from: getContext */
    public final CoroutineContext getI() {
        CoroutineContext coroutineContext = this.h;
        if (coroutineContext == null) {
            return EmptyCoroutineContext.INSTANCE;
        }
        return coroutineContext;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl, kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Throwable m33exceptionOrNullimpl = Result.m33exceptionOrNullimpl(obj);
        if (m33exceptionOrNullimpl != null) {
            this.h = new DownstreamExceptionContext(getI(), m33exceptionOrNullimpl);
        }
        Continuation continuation = this.i;
        if (continuation != null) {
            continuation.resumeWith(obj);
        }
        return IntrinsicsKt.getCOROUTINE_SUSPENDED();
    }
}
