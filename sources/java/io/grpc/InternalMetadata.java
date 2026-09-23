package io.grpc;

import io.grpc.Metadata;
import java.nio.charset.Charset;
import java.util.logging.Logger;

@Internal
/* loaded from: classes3.dex */
public final class InternalMetadata {

    @Internal
    /* loaded from: classes3.dex */
    public interface TrustedAsciiMarshaller<T> extends Metadata.TrustedAsciiMarshaller<T> {
    }

    static {
        Charset.forName("US-ASCII");
        Logger logger = Metadata.f21042a;
    }
}
