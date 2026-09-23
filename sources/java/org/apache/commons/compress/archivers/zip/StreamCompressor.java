package org.apache.commons.compress.archivers.zip;

import java.io.Closeable;

/* loaded from: classes4.dex */
public abstract class StreamCompressor implements Closeable {

    /* loaded from: classes4.dex */
    public static final class DataOutputCompressor extends StreamCompressor {
    }

    /* loaded from: classes4.dex */
    public static final class OutputStreamCompressor extends StreamCompressor {
    }

    /* loaded from: classes4.dex */
    public static final class ScatterGatherBackingStoreCompressor extends StreamCompressor {
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw null;
    }
}
