package org.apache.commons.compress.archivers.zip;

import android.support.v4.media.a;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import org.apache.commons.compress.compressors.lzw.LZWInputStream;

/* loaded from: classes4.dex */
class UnshrinkingInputStream extends LZWInputStream {
    public final boolean[] q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnshrinkingInputStream(InputStream inputStream) {
        super(inputStream);
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        this.h = 256;
        this.m = new int[8192];
        this.n = new byte[8192];
        this.o = new byte[8192];
        this.p = 8192;
        for (int i = 0; i < 256; i++) {
            this.m[i] = -1;
            this.n[i] = (byte) i;
        }
        this.q = new boolean[this.m.length];
        for (int i2 = 0; i2 < 256; i2++) {
            this.q[i2] = true;
        }
        this.l = this.h + 1;
    }

    @Override // org.apache.commons.compress.compressors.lzw.LZWInputStream
    public final int b(int i, byte b) {
        boolean[] zArr;
        int i2 = this.l;
        while (true) {
            zArr = this.q;
            if (i2 >= 8192 || !zArr[i2]) {
                break;
            }
            i2++;
        }
        this.l = i2;
        if (i2 < 8192) {
            this.m[i2] = i;
            this.n[i2] = b;
            this.l = i2 + 1;
        } else {
            i2 = -1;
        }
        if (i2 >= 0) {
            zArr[i2] = true;
        }
        return i2;
    }

    @Override // org.apache.commons.compress.compressors.lzw.LZWInputStream
    public final int d() {
        int i;
        int f = f();
        if (f < 0) {
            return -1;
        }
        int i2 = this.h;
        boolean[] zArr = this.q;
        boolean z = false;
        if (f == i2) {
            int f2 = f();
            if (f2 >= 0) {
                if (f2 == 1) {
                    int i3 = this.i;
                    if (i3 < 13) {
                        this.i = i3 + 1;
                        return 0;
                    }
                    throw new IOException("Attempt to increase code size beyond maximum");
                }
                if (f2 == 2) {
                    boolean[] zArr2 = new boolean[8192];
                    for (int i4 = 0; i4 < zArr.length; i4++) {
                        if (zArr[i4] && (i = this.m[i4]) != -1) {
                            zArr2[i] = true;
                        }
                    }
                    for (int i5 = this.h + 1; i5 < 8192; i5++) {
                        if (!zArr2[i5]) {
                            zArr[i5] = false;
                            this.m[i5] = -1;
                        }
                    }
                    this.l = this.h + 1;
                    return 0;
                }
                throw new IOException(a.e(f2, "Invalid clear code subcode "));
            }
            throw new IOException("Unexpected EOF;");
        }
        if (!zArr[f]) {
            int i6 = this.k;
            if (i6 != -1) {
                f = b(i6, this.j);
                z = true;
            } else {
                throw new IOException("The first code can't be a reference to its preceding code");
            }
        }
        return e(f, z);
    }
}
