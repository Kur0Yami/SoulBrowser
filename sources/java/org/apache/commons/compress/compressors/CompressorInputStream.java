package org.apache.commons.compress.compressors;

import java.io.InputStream;

/* loaded from: classes4.dex */
public abstract class CompressorInputStream extends InputStream {

    /* renamed from: c, reason: collision with root package name */
    public long f22314c = 0;

    public final void a(long j) {
        if (j != -1) {
            this.f22314c += j;
        }
    }
}
