package kotlinx.coroutines.flow;

import com.google.api.client.http.HttpStatusCodes;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.IntCompanionObject;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.SubscribedSharedFlow", f = "Share.kt", i = {}, l = {HttpStatusCodes.STATUS_CODE_METHOD_NOT_ALLOWED}, m = "collect", n = {}, s = {})
/* loaded from: classes4.dex */
public final class SubscribedSharedFlow$collect$1 extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f21824c;
    public final /* synthetic */ SubscribedSharedFlow f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubscribedSharedFlow$collect$1(SubscribedSharedFlow subscribedSharedFlow, Continuation continuation) {
        super(continuation);
        this.f = subscribedSharedFlow;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f21824c = obj;
        this.g |= IntCompanionObject.MIN_VALUE;
        this.f.a(null, this);
        throw null;
    }
}
