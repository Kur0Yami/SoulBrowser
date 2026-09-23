package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final /* synthetic */ class BufferedChannelKt$createSegmentFunction$1 extends FunctionReferenceImpl implements Function2<Long, ChannelSegment<Object>, ChannelSegment<Object>> {

    /* renamed from: c, reason: collision with root package name */
    public static final BufferedChannelKt$createSegmentFunction$1 f21631c = new FunctionReferenceImpl(2, BufferedChannelKt.class, "createSegment", "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;", 1);

    @Override // kotlin.jvm.functions.Function2
    public final ChannelSegment<Object> invoke(Long l, ChannelSegment<Object> channelSegment) {
        long longValue = l.longValue();
        ChannelSegment<Object> channelSegment2 = channelSegment;
        ChannelSegment channelSegment3 = BufferedChannelKt.f21629a;
        BufferedChannel bufferedChannel = channelSegment2.i;
        Intrinsics.checkNotNull(bufferedChannel);
        return new ChannelSegment<>(longValue, channelSegment2, bufferedChannel, 0);
    }
}
