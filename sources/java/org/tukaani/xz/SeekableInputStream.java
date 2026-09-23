package org.tukaani.xz;

import java.io.InputStream;

/* loaded from: classes4.dex */
public abstract class SeekableInputStream extends InputStream {
    public abstract long a();

    public abstract long position();

    @Override // java.io.InputStream
    public final long skip(long j) {
        if (j <= 0) {
            return 0L;
        }
        a();
        position();
        throw null;
    }
}
