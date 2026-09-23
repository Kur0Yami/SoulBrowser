package org.apache.commons.compress.archivers.dump;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.FilterInputStream;
import java.io.IOException;
import org.apache.commons.compress.archivers.dump.DumpArchiveConstants;
import org.apache.commons.compress.utils.IOUtils;

/* loaded from: classes4.dex */
class TapeInputStream extends FilterInputStream {

    /* renamed from: c, reason: collision with root package name */
    public int f22265c;

    /* renamed from: org.apache.commons.compress.archivers.dump.TapeInputStream$1, reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f22266a;

        static {
            int[] iArr = new int[DumpArchiveConstants.COMPRESSION_TYPE.values().length];
            f22266a = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f22266a[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f22266a[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public final void a() {
        if (((FilterInputStream) this).in != null) {
            if (IOUtils.a(((FilterInputStream) this).in, null, 0, 0) >= 0) {
                this.f22265c = 0;
                return;
            }
            throw new IOException("unexpected EOF");
        }
        throw new IOException("input buffer is closed");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        int i = this.f22265c;
        if (i < 0) {
            return 0 - i;
        }
        return ((FilterInputStream) this).in.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (((FilterInputStream) this).in != null && ((FilterInputStream) this).in != System.in) {
            ((FilterInputStream) this).in.close();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        throw new IllegalArgumentException("all reads must be multiple of record size (1024 bytes.");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) {
        long j2 = 0;
        if (j % PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID == 0) {
            while (j2 < j) {
                if (this.f22265c == 0) {
                    a();
                }
                int i = this.f22265c;
                long j3 = i;
                long j4 = j - j2;
                if (j3 + j4 > 0) {
                    j4 = 0 - i;
                }
                this.f22265c = (int) (j3 + j4);
                j2 += j4;
            }
            return j2;
        }
        throw new IllegalArgumentException("all reads must be multiple of record size (1024 bytes.");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (i2 % 1024 != 0) {
            throw new IllegalArgumentException("all reads must be multiple of record size (1024 bytes.");
        }
        int i3 = 0;
        while (i3 < i2) {
            if (this.f22265c == 0) {
                a();
            }
            int i4 = this.f22265c;
            int i5 = i2 - i3;
            if (i4 + i5 > 0) {
                i5 = 0 - i4;
            }
            System.arraycopy(null, i4, bArr, i, i5);
            this.f22265c += i5;
            i3 += i5;
            i += i5;
        }
        return i3;
    }
}
