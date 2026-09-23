package kotlinx.coroutines.channels;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final /* synthetic */ class BufferedChannel$onReceive$2 extends FunctionReferenceImpl implements Function3<BufferedChannel<?>, Object, Object, Object> {

    /* renamed from: c, reason: collision with root package name */
    public static final BufferedChannel$onReceive$2 f21621c = new FunctionReferenceImpl(3, BufferedChannel.class, "processResultSelectReceive", "processResultSelectReceive(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(BufferedChannel<?> bufferedChannel, Object obj, Object obj2) {
        BufferedChannel<?> bufferedChannel2 = bufferedChannel;
        AtomicLongFieldUpdater atomicLongFieldUpdater = BufferedChannel.g;
        bufferedChannel2.getClass();
        if (obj2 != BufferedChannelKt.l) {
            return obj2;
        }
        throw bufferedChannel2.w();
    }
}
