package kotlinx.coroutines.internal;

import _COROUTINE.CoroutineDebuggingKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\f\b\u0000\u0010\u0001\"\u00020\u00002\u00020\u0000*\f\b\u0000\u0010\u0003\"\u00020\u00022\u00020\u0002¨\u0006\u0004"}, d2 = {"Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "CoroutineStackFrame", "Ljava/lang/StackTraceElement;", "StackTraceElement", "kotlinx-coroutines-core"}, k = 2, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nStackTraceRecovery.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,212:1\n1735#2,6:213\n12474#2,2:221\n1627#2,6:225\n12474#2,2:231\n1627#2,6:234\n37#3,2:219\n26#4:223\n26#4:224\n1#5:233\n*S KotlinDebug\n*F\n+ 1 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n39#1:213,6\n127#1:221,2\n137#1:225,6\n169#1:231,2\n190#1:234,6\n102#1:219,2\n129#1:223\n131#1:224\n*E\n"})
/* loaded from: classes4.dex */
public final class StackTraceRecoveryKt {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f21893a = 0;

    static {
        Object m30constructorimpl;
        Object m30constructorimpl2;
        CoroutineDebuggingKt.a(new Exception(), "_BOUNDARY");
        try {
            Result.Companion companion = Result.INSTANCE;
            m30constructorimpl = Result.m30constructorimpl(BaseContinuationImpl.class.getCanonicalName());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m30constructorimpl = Result.m30constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m33exceptionOrNullimpl(m30constructorimpl) != null) {
            m30constructorimpl = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        try {
            m30constructorimpl2 = Result.m30constructorimpl(StackTraceRecoveryKt.class.getCanonicalName());
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            m30constructorimpl2 = Result.m30constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m33exceptionOrNullimpl(m30constructorimpl2) != null) {
            m30constructorimpl2 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
    }
}
