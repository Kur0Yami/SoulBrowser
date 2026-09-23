package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.IntCompanionObject;
import kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$1", f = "Combine.kt", i = {}, l = {29, 30}, m = "emit", n = {}, s = {})
/* loaded from: classes4.dex */
public final class CombineKt$combineInternal$2$1$1$emit$1 extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f21842c;
    public final /* synthetic */ CombineKt$combineInternal$2.AnonymousClass1.C03581 f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CombineKt$combineInternal$2$1$1$emit$1(CombineKt$combineInternal$2.AnonymousClass1.C03581 c03581, Continuation continuation) {
        super(continuation);
        this.f = c03581;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f21842c = obj;
        this.g |= IntCompanionObject.MIN_VALUE;
        return this.f.b(null, this);
    }
}
