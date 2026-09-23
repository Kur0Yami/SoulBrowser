package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0, 0}, l = {517}, m = "lastIndexOf", n = {"element", "lastIndex", "index", "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$2", "L$3"})
/* loaded from: classes4.dex */
final class ChannelsKt__DeprecatedKt$lastIndexOf$1<E> extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public Ref.IntRef f21655c;
    public Ref.IntRef f;
    public ReceiveChannel g;
    public ChannelIterator h;
    public /* synthetic */ Object i;
    public int j;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.i = obj;
        this.j = (this.j | IntCompanionObject.MIN_VALUE) - IntCompanionObject.MIN_VALUE;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.j;
        ReceiveChannel receiveChannel = null;
        if (i != 0) {
            if (i == 1) {
                ChannelIterator channelIterator = this.h;
                ReceiveChannel receiveChannel2 = this.g;
                Ref.IntRef intRef = this.f;
                Ref.IntRef intRef2 = this.f21655c;
                try {
                    ResultKt.throwOnFailure(obj);
                    while (((Boolean) obj).booleanValue()) {
                        if (Intrinsics.areEqual((Object) null, channelIterator.next())) {
                            intRef2.element = intRef.element;
                        }
                        intRef.element++;
                        this.f21655c = intRef2;
                        this.f = intRef;
                        this.g = receiveChannel2;
                        this.h = channelIterator;
                        this.j = 1;
                        obj = channelIterator.a(this);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    Unit unit = Unit.INSTANCE;
                    receiveChannel2.a(null);
                    return Boxing.boxInt(intRef2.element);
                } catch (Throwable th) {
                    th = th;
                    receiveChannel = receiveChannel2;
                }
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            new Ref.IntRef().element = -1;
            new Ref.IntRef();
            try {
                throw null;
            } catch (Throwable th2) {
                th = th2;
            }
        }
        try {
            throw th;
        } catch (Throwable th3) {
            ChannelsKt.a(receiveChannel, th);
            throw th3;
        }
    }
}
