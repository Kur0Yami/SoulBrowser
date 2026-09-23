package kotlinx.coroutines.flow;

import com.google.api.client.http.HttpStatusCodes;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.IntCompanionObject;
import kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$values$1$1", f = "Delay.kt", i = {}, l = {HttpStatusCodes.STATUS_CODE_NO_CONTENT}, m = "emit", n = {}, s = {})
/* loaded from: classes4.dex */
public final class FlowKt__DelayKt$debounceInternal$1$values$1$1$emit$1 extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f21720c;
    public final /* synthetic */ FlowKt__DelayKt$debounceInternal$1$values$1.AnonymousClass1 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__DelayKt$debounceInternal$1$values$1$1$emit$1(FlowKt__DelayKt$debounceInternal$1$values$1.AnonymousClass1 anonymousClass1, Continuation continuation) {
        super(continuation);
        this.f = anonymousClass1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f21720c = obj;
        this.g |= IntCompanionObject.MIN_VALUE;
        return this.f.b(null, this);
    }
}
