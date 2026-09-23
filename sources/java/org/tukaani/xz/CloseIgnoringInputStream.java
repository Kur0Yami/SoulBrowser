package org.tukaani.xz;

import java.io.FilterInputStream;

/* loaded from: classes4.dex */
public class CloseIgnoringInputStream extends FilterInputStream {
    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
