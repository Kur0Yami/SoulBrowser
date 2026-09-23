package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Job;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ProduceKt", f = "Produce.kt", i = {0, 0}, l = {150}, m = "awaitClose", n = {"$this$awaitClose", "block"}, s = {"L$0", "L$1"})
/* loaded from: classes4.dex */
final class ProduceKt$awaitClose$1 extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public ProducerScope f21671c;
    public Lambda f;
    public /* synthetic */ Object g;
    public int h;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v3, types: [kotlin.coroutines.jvm.internal.ContinuationImpl] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ProduceKt$awaitClose$1 produceKt$awaitClose$1;
        Throwable th;
        Function0 function0;
        this.g = obj;
        int i = this.h | IntCompanionObject.MIN_VALUE;
        this.h = i;
        if ((i & IntCompanionObject.MIN_VALUE) != 0) {
            this.h = i - IntCompanionObject.MIN_VALUE;
            produceKt$awaitClose$1 = this;
        } else {
            produceKt$awaitClose$1 = new ContinuationImpl(this);
        }
        Object obj2 = produceKt$awaitClose$1.g;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = produceKt$awaitClose$1.h;
        if (i2 != 0) {
            if (i2 == 1) {
                function0 = (Function0) produceKt$awaitClose$1.f;
                try {
                    ResultKt.throwOnFailure(obj2);
                    function0.invoke();
                    return Unit.INSTANCE;
                } catch (Throwable th2) {
                    th = th2;
                }
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj2);
            if (produceKt$awaitClose$1.getF().get(Job.Key.f21595c) == null) {
                try {
                    produceKt$awaitClose$1.f21671c = null;
                    produceKt$awaitClose$1.f = null;
                    produceKt$awaitClose$1.h = 1;
                    final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.intercepted(produceKt$awaitClose$1));
                    cancellableContinuationImpl.r();
                    new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.channels.ProduceKt$awaitClose$4$1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Unit invoke(Throwable th3) {
                            Result.Companion companion = Result.INSTANCE;
                            Unit unit = Unit.INSTANCE;
                            CancellableContinuationImpl.this.resumeWith(Result.m30constructorimpl(unit));
                            return unit;
                        }
                    };
                    throw null;
                } catch (Throwable th3) {
                    th = th3;
                    function0 = null;
                }
            } else {
                throw new IllegalStateException("awaitClose() can only be invoked from the producer context");
            }
        }
        function0.invoke();
        throw th;
    }
}
