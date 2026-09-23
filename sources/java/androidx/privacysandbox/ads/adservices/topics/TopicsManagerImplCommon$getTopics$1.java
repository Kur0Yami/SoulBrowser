package androidx.privacysandbox.ads.adservices.topics;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.IntCompanionObject;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.privacysandbox.ads.adservices.topics.TopicsManagerImplCommon", f = "TopicsManagerImplCommon.kt", i = {}, l = {22}, m = "getTopics$suspendImpl", n = {}, s = {})
/* loaded from: classes.dex */
public final class TopicsManagerImplCommon$getTopics$1 extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public TopicsManagerImplCommon f1471c;
    public /* synthetic */ Object f;
    public final /* synthetic */ TopicsManagerImplCommon g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TopicsManagerImplCommon$getTopics$1(TopicsManagerImplCommon topicsManagerImplCommon, Continuation continuation) {
        super(continuation);
        this.g = topicsManagerImplCommon;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= IntCompanionObject.MIN_VALUE;
        return TopicsManagerImplCommon.c(this.g, null, this);
    }
}
