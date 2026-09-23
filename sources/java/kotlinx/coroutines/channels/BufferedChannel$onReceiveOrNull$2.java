package kotlinx.coroutines.channels;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
final /* synthetic */ class BufferedChannel$onReceiveOrNull$2 extends FunctionReferenceImpl implements Function3<BufferedChannel<?>, Object, Object, Object> {
    static {
        new FunctionReferenceImpl(3, BufferedChannel.class, "processResultSelectReceiveOrNull", "processResultSelectReceiveOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(BufferedChannel<?> bufferedChannel, Object obj, Object obj2) {
        BufferedChannel<?> bufferedChannel2 = bufferedChannel;
        AtomicLongFieldUpdater atomicLongFieldUpdater = BufferedChannel.g;
        bufferedChannel2.getClass();
        if (obj2 == BufferedChannelKt.l) {
            if (bufferedChannel2.v() == null) {
                return null;
            }
            throw bufferedChannel2.w();
        }
        return obj2;
    }
}
