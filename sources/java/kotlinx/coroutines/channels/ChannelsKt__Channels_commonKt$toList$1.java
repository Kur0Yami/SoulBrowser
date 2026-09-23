package kotlinx.coroutines.channels;

import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.IntCompanionObject;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", f = "Channels.common.kt", i = {0, 0}, l = {112}, m = "toList", n = {"$this$toList_u24lambda_u243", "$this$consume$iv$iv"}, s = {"L$1", "L$2"})
/* loaded from: classes4.dex */
final class ChannelsKt__Channels_commonKt$toList$1<E> extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public List f21637c;
    public List f;
    public ReceiveChannel g;
    public ChannelIterator h;
    public /* synthetic */ Object i;
    public int j;

    /* JADX WARN: Multi-variable type inference failed */
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
                List list = this.f;
                List list2 = this.f21637c;
                try {
                    ResultKt.throwOnFailure(obj);
                    while (((Boolean) obj).booleanValue()) {
                        list.add(channelIterator.next());
                        this.f21637c = list2;
                        this.f = list;
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
                    return CollectionsKt.build(list2);
                } catch (Throwable th) {
                    th = th;
                    receiveChannel = receiveChannel2;
                }
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            CollectionsKt.createListBuilder();
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
