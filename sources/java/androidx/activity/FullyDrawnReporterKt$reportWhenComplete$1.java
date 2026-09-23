package androidx.activity;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 176)
@DebugMetadata(c = "androidx.activity.FullyDrawnReporterKt", f = "FullyDrawnReporter.kt", i = {0}, l = {185}, m = "reportWhenComplete", n = {"$this$reportWhenComplete"}, s = {"L$0"})
@SourceDebugExtension({"SMAP\nFullyDrawnReporter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FullyDrawnReporter.kt\nandroidx/activity/FullyDrawnReporterKt$reportWhenComplete$1\n*L\n1#1,190:1\n*E\n"})
/* loaded from: classes.dex */
final class FullyDrawnReporterKt$reportWhenComplete$1 extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f22c;
    public int f;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f22c = obj;
        this.f = (this.f | IntCompanionObject.MIN_VALUE) - IntCompanionObject.MIN_VALUE;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.f;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
                InlineMarker.finallyStart(1);
                throw null;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        throw null;
    }
}
