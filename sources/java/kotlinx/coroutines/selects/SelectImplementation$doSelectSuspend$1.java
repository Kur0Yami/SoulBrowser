package kotlinx.coroutines.selects;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.IntCompanionObject;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.selects.SelectImplementation", f = "Select.kt", i = {0}, l = {438, 441}, m = "doSelectSuspend", n = {"this"}, s = {"L$0"})
/* loaded from: classes4.dex */
public final class SelectImplementation$doSelectSuspend$1 extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public SelectImplementation f21927c;
    public /* synthetic */ Object f;
    public final /* synthetic */ SelectImplementation g;
    public int h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectImplementation$doSelectSuspend$1(SelectImplementation selectImplementation, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = selectImplementation;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f = obj;
        this.h |= IntCompanionObject.MIN_VALUE;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = SelectImplementation.j;
        return this.g.h(this);
    }
}
