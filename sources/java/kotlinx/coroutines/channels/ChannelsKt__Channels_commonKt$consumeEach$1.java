package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 176)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", f = "Channels.common.kt", i = {0, 0}, l = {82}, m = "consumeEach", n = {"action", "$this$consume$iv"}, s = {"L$0", "L$1"})
@SourceDebugExtension({"SMAP\nChannels.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1\n*L\n1#1,104:1\n*E\n"})
/* loaded from: classes4.dex */
final class ChannelsKt__Channels_commonKt$consumeEach$1<E> extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public Function1 f21636c;
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
                Function1 function1 = this.f21636c;
                try {
                    ResultKt.throwOnFailure(obj);
                    while (((Boolean) obj).booleanValue()) {
                        function1.invoke(channelIterator.next());
                        this.f21636c = function1;
                        this.f = receiveChannel2;
                        this.g = channelIterator;
                        this.i = 1;
                        obj = channelIterator.a(this);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    Unit unit = Unit.INSTANCE;
                    InlineMarker.finallyStart(1);
                    receiveChannel2.a(null);
                    InlineMarker.finallyEnd(1);
                    return Unit.INSTANCE;
                } catch (Throwable th) {
                    th = th;
                    receiveChannel = receiveChannel2;
                }
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            try {
                throw null;
            } catch (Throwable th2) {
                th = th2;
            }
        }
        try {
            throw th;
        } catch (Throwable th3) {
            InlineMarker.finallyStart(1);
            ChannelsKt.a(receiveChannel, th);
            InlineMarker.finallyEnd(1);
            throw th3;
        }
    }
}
