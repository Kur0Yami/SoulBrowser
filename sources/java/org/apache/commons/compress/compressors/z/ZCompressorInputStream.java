package org.apache.commons.compress.compressors.z;

import java.io.IOException;
import java.util.Locale;
import org.apache.commons.compress.compressors.lzw.LZWInputStream;
import org.apache.commons.compress.utils.BitInputStream;

/* loaded from: classes4.dex */
public class ZCompressorInputStream extends LZWInputStream {
    public long q;

    @Override // org.apache.commons.compress.compressors.lzw.LZWInputStream
    public final int b(int i, byte b) {
        int i2 = this.i;
        int i3 = 1 << i2;
        int i4 = this.l;
        if (i4 < i3) {
            this.m[i4] = i;
            this.n[i4] = b;
            this.l = i4 + 1;
        } else {
            i4 = -1;
        }
        if (this.l == i3 && i2 < 0) {
            long j = 8 - (this.q % 8);
            if (j == 8) {
                j = 0;
            }
            for (long j2 = 0; j2 < j; j2++) {
                f();
            }
            BitInputStream bitInputStream = this.g;
            bitInputStream.f = 0L;
            bitInputStream.g = 0;
            this.i++;
        }
        return i4;
    }

    @Override // org.apache.commons.compress.compressors.lzw.LZWInputStream
    public final int d() {
        int f = f();
        if (f < 0) {
            return -1;
        }
        int i = this.l;
        boolean z = true;
        if (f == i) {
            int i2 = this.k;
            if (i2 != -1) {
                b(i2, this.j);
            } else {
                throw new IOException("The first code can't be a reference to its preceding code");
            }
        } else if (f <= i) {
            z = false;
        } else {
            throw new IOException(String.format(Locale.US, "Invalid %d bit code 0x%x", Integer.valueOf(this.i), Integer.valueOf(f)));
        }
        return e(f, z);
    }

    @Override // org.apache.commons.compress.compressors.lzw.LZWInputStream
    public final int f() {
        int f = super.f();
        if (f >= 0) {
            this.q++;
        }
        return f;
    }
}
