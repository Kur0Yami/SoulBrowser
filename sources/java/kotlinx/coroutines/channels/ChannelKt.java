package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlinx.coroutines.channels.Channel;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-coroutines-core"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class ChannelKt {
    public static BufferedChannel a(int i, BufferOverflow bufferOverflow, int i2) {
        if ((i2 & 2) != 0) {
            bufferOverflow = BufferOverflow.f21616c;
        }
        if (i != -2) {
            if (i != -1) {
                if (i != 0) {
                    if (i != Integer.MAX_VALUE) {
                        if (bufferOverflow == BufferOverflow.f21616c) {
                            return new BufferedChannel(i);
                        }
                        return new ConflatedBufferedChannel(i, bufferOverflow);
                    }
                    return new BufferedChannel(Integer.MAX_VALUE);
                }
                if (bufferOverflow == BufferOverflow.f21616c) {
                    return new BufferedChannel(0);
                }
                return new ConflatedBufferedChannel(1, bufferOverflow);
            }
            if (bufferOverflow == BufferOverflow.f21616c) {
                return new ConflatedBufferedChannel(1, BufferOverflow.f);
            }
            throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow");
        }
        if (bufferOverflow == BufferOverflow.f21616c) {
            Channel.e.getClass();
            return new BufferedChannel(Channel.Factory.b);
        }
        return new ConflatedBufferedChannel(1, bufferOverflow);
    }
}
