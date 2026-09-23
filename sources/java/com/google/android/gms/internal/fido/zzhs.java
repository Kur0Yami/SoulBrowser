package com.google.android.gms.internal.fido;

import androidx.work.impl.workers.a;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.time.DurationKt;

/* loaded from: classes3.dex */
public final class zzhs implements Closeable {

    /* renamed from: c, reason: collision with root package name */
    public final InputStream f10335c;
    public zzhr f;
    public final byte[] g = new byte[8];
    public final zzht h = new zzht();

    public zzhs(InputStream inputStream) {
        this.f10335c = inputStream;
    }

    public final long a() {
        i(ByteCompanionObject.MIN_VALUE);
        f();
        long e = e();
        if (e >= 0) {
            if (e > 0) {
                this.h.f10336a.push(Long.valueOf(e));
            }
            return e;
        }
        throw new UnsupportedOperationException("the maximum supported array length is 9223372036854775807");
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0095, code lost:
    
        if (r0 != (-2)) goto L42;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.fido.zzhr b() {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.fido.zzhs.b():com.google.android.gms.internal.fido.zzhr");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f10335c.close();
        this.h.a();
    }

    public final boolean d() {
        i((byte) -32);
        if (this.f.b <= 24) {
            int e = (int) e();
            if (e == 20) {
                return false;
            }
            if (e == 21) {
                return true;
            }
            throw new IllegalStateException("expected FALSE or TRUE");
        }
        throw new IllegalStateException("expected simple value");
    }

    public final long e() {
        byte b = this.f.b;
        if (b < 24) {
            long j = b;
            this.f = null;
            return j;
        }
        if (b == 24) {
            int read = this.f10335c.read();
            if (read != -1) {
                this.f = null;
                return read & 255;
            }
            throw new EOFException();
        }
        byte[] bArr = this.g;
        if (b == 25) {
            j(bArr, 2);
            return ((bArr[0] & 255) << 8) | (255 & bArr[1]);
        }
        if (b == 26) {
            j(bArr, 4);
            return ((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255);
        }
        if (b == 27) {
            j(bArr, 8);
            return ((bArr[0] & 255) << 56) | ((bArr[1] & 255) << 48) | ((bArr[2] & 255) << 40) | ((bArr[3] & 255) << 32) | ((bArr[4] & 255) << 24) | ((bArr[5] & 255) << 16) | ((bArr[6] & 255) << 8) | (bArr[7] & 255);
        }
        zzhr zzhrVar = this.f;
        throw new IOException(a.s("invalid additional information ", zzhrVar.b, (zzhrVar.f10334a >> 5) & 7, " for major type "));
    }

    public final void f() {
        b();
        if (this.f.b != 31) {
        } else {
            throw new IllegalStateException(android.support.v4.media.a.e(this.f.b, "expected definite length but found "));
        }
    }

    public final void i(byte b) {
        b();
        if (this.f.f10334a == b) {
        } else {
            throw new IllegalStateException(a.s("expected major type ", (b >> 5) & 7, (this.f.f10334a >> 5) & 7, " but found "));
        }
    }

    public final void j(byte[] bArr, int i) {
        int i2 = 0;
        while (i2 != i) {
            int read = this.f10335c.read(bArr, i2, i - i2);
            if (read != -1) {
                i2 += read;
            } else {
                throw new EOFException();
            }
        }
        this.f = null;
    }

    public final byte[] k() {
        f();
        long e = e();
        if (e >= 0 && e <= 2147483647L) {
            if (this.f10335c.available() >= e) {
                int i = (int) e;
                byte[] bArr = new byte[i];
                j(bArr, i);
                return bArr;
            }
            throw new EOFException();
        }
        throw new UnsupportedOperationException("the maximum supported byte/text string length is 2147483647 bytes");
    }

    public final long zzb() {
        boolean z;
        b();
        byte b = this.f.f10334a;
        if (b == 0) {
            z = true;
        } else if (b == 32) {
            z = false;
        } else {
            throw new IllegalStateException(android.support.v4.media.a.e((this.f.f10334a >> 5) & 7, "expected major type 0 or 1 but found "));
        }
        long e = e();
        if (e >= 0) {
            if (z) {
                return e;
            }
            return ~e;
        }
        throw new UnsupportedOperationException("the maximum supported unsigned/negative integer is 9223372036854775807");
    }

    public final long zzc() {
        i((byte) -96);
        f();
        long e = e();
        if (e >= 0 && e <= DurationKt.MAX_MILLIS) {
            if (e > 0) {
                this.h.f10336a.push(Long.valueOf(e + e));
            }
            return e;
        }
        throw new UnsupportedOperationException("the maximum supported map length is 4611686018427387903L");
    }
}
