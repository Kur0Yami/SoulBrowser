package okio;

import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u00012\u00020\u0002\u0082\u0001\u0002\u0003\u0004ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0005À\u0006\u0001"}, d2 = {"Lokio/BufferedSource;", "Lokio/Source;", "Ljava/nio/channels/ReadableByteChannel;", "Lokio/Buffer;", "Lokio/RealBufferedSource;", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public interface BufferedSource extends Source, ReadableByteChannel {
    Buffer C();

    boolean D();

    void D0(long j);

    String H(long j);

    long I0();

    InputStream inputStream();

    String j0();

    int l0();

    ByteString r(long j);

    byte readByte();

    int readInt();

    short readShort();

    void skip(long j);

    short t0();
}
