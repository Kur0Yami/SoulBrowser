package kotlinx.coroutines.channels;

import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.IntCompanionObject;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {517}, m = "toMap", n = {"destination", "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
/* loaded from: classes4.dex */
final class ChannelsKt__DeprecatedKt$toMap$2<K, V, M extends Map<? super K, ? super V>> extends ContinuationImpl {

    /* renamed from: c, reason: collision with root package name */
    public Map f21668c;
    public ReceiveChannel f;
    public ChannelIterator g;
    public /* synthetic */ Object h;
    public int i;

    /* JADX WARN: Multi-variable type inference failed */
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
                Map map = this.f21668c;
                try {
                    ResultKt.throwOnFailure(obj);
                    while (((Boolean) obj).booleanValue()) {
                        Pair pair = (Pair) channelIterator.next();
                        map.put(pair.getFirst(), pair.getSecond());
                        this.f21668c = map;
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
                    return map;
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
            ChannelsKt.a(receiveChannel, th);
            throw th3;
        }
    }
}
