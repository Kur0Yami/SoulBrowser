package org.apache.commons.compress.archivers;

import java.io.InputStream;
import kotlin.UByte;

/* loaded from: classes4.dex */
public abstract class ArchiveInputStream extends InputStream {

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f22260c = new byte[1];
    public long f = 0;

    public final void a(long j) {
        if (j != -1) {
            this.f += j;
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.f22260c;
        if (read(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0] & UByte.MAX_VALUE;
    }
}
