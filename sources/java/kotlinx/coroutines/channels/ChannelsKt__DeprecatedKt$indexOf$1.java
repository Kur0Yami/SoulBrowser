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
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0}, l = {517}, m = "indexOf", n = {"element", "index", "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$2"})
/* loaded from: classes4.dex */
final class ChannelsKt__DeprecatedKt$indexOf$1<E> extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public Ref.IntRef f21653c;
    public ReceiveChannel f;
    public ChannelIterator g;
    public /* synthetic */ Object h;
    public int i;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.h = obj;
        this.i = (this.i | IntCompanionObject.MIN_VALUE) - IntCompanionObject.MIN_VALUE;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.i;
        ReceiveChannel receiveChannel = null;
        if (i != 0) {
            if (i == 1) {
                ChannelIterator channelIterator = this.g;
                ReceiveChannel receiveChannel2 = this.f;
                Ref.IntRef intRef = this.f21653c;
                try {
                    ResultKt.throwOnFailure(obj);
                    while (((Boolean) obj).booleanValue()) {
                        if (Intrinsics.areEqual((Object) null, channelIterator.next())) {
                            Integer boxInt = Boxing.boxInt(intRef.element);
                            receiveChannel2.a(null);
                            return boxInt;
                        }
                        intRef.element++;
                        this.f21653c = intRef;
                        this.f = receiveChannel2;
                        this.g = channelIterator;
                        this.i = 1;
                        obj = channelIterator.a(this);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    Unit unit = Unit.INSTANCE;
                    receiveChannel2.a(null);
                    return Boxing.boxInt(-1);
                } catch (Throwable th) {
                    th = th;
                    receiveChannel = receiveChannel2;
                }
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
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
