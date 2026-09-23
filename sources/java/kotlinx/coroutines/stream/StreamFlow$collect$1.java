package kotlinx.coroutines.stream;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.IntCompanionObject;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.stream.StreamFlow", f = "Stream.kt", i = {0, 0}, l = {22}, m = "collect", n = {"this", "collector"}, s = {"L$0", "L$1"})
/* loaded from: classes4.dex */
public final class StreamFlow$collect$1 extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public FlowCollector f21935c;
    public Iterator f;
    public /* synthetic */ Object g;
    public final /* synthetic */ StreamFlow h;
    public int i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StreamFlow$collect$1(StreamFlow streamFlow, Continuation continuation) {
        super(continuation);
        this.h = streamFlow;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.i |= IntCompanionObject.MIN_VALUE;
        return this.h.a(null, this);
    }
}
