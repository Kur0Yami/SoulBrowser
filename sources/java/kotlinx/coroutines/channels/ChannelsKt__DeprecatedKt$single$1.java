package kotlinx.coroutines.channels;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.IntCompanionObject;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {166, 169}, m = "single", n = {"$this$consume$iv", "iterator", "$this$consume$iv", "single"}, s = {"L$0", "L$1", "L$0", "L$1"})
/* loaded from: classes4.dex */
final class ChannelsKt__DeprecatedKt$single$1<E> extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public ReceiveChannel f21662c;
    public Object f;
    public /* synthetic */ Object g;
    public int h;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        ReceiveChannel receiveChannel;
        this.g = obj;
        this.h = (this.h | IntCompanionObject.MIN_VALUE) - IntCompanionObject.MIN_VALUE;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.h;
        ReceiveChannel receiveChannel2 = null;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    obj2 = this.f;
                    receiveChannel = this.f21662c;
                    try {
                        ResultKt.throwOnFailure(obj);
                    } catch (Throwable th) {
                        th = th;
                        receiveChannel2 = receiveChannel;
                    }
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                ChannelIterator channelIterator = (ChannelIterator) this.f;
                ReceiveChannel receiveChannel3 = this.f21662c;
                try {
                    ResultKt.throwOnFailure(obj);
                    if (((Boolean) obj).booleanValue()) {
                        Object next = channelIterator.next();
                        this.f21662c = receiveChannel3;
                        this.f = next;
                        this.h = 2;
                        Object a2 = channelIterator.a(this);
                        if (a2 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        obj2 = next;
                        obj = a2;
                        receiveChannel = receiveChannel3;
                    } else {
                        throw new NoSuchElementException("ReceiveChannel is empty.");
                    }
                } catch (Throwable th2) {
                    th = th2;
                    receiveChannel2 = receiveChannel3;
                }
            }
            if (!((Boolean) obj).booleanValue()) {
                receiveChannel.a(null);
                return obj2;
            }
            throw new IllegalArgumentException("ReceiveChannel has more than one element.");
        }
        ResultKt.throwOnFailure(obj);
        try {
            throw null;
        } catch (Throwable th3) {
            th = th3;
        }
        try {
            throw th;
        } catch (Throwable th4) {
            ChannelsKt.a(receiveChannel2, th);
            throw th4;
        }
    }
}
