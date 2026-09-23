package com.bumptech.glide.util;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.UByte;

/* loaded from: classes.dex */
public final class ByteBufferUtil {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicReference f2482a = new AtomicReference();

    /* loaded from: classes.dex */
    public static final class SafeArray {

        /* renamed from: a, reason: collision with root package name */
        public final int f2484a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final byte[] f2485c;

        public SafeArray(byte[] bArr, int i, int i2) {
            this.f2485c = bArr;
            this.f2484a = i;
            this.b = i2;
        }
    }

    public static MappedByteBuffer a(File file) {
        Throwable th;
        RandomAccessFile randomAccessFile;
        FileChannel fileChannel = null;
        try {
            long length = file.length();
            if (length <= 2147483647L) {
                if (length != 0) {
                    randomAccessFile = new RandomAccessFile(file, "r");
                    try {
                        FileChannel channel = randomAccessFile.getChannel();
                        try {
                            MappedByteBuffer load = channel.map(FileChannel.MapMode.READ_ONLY, 0L, length).load();
                            try {
                                channel.close();
                            } catch (IOException unused) {
                            }
                            try {
                                randomAccessFile.close();
                            } catch (IOException unused2) {
                            }
                            return load;
                        } catch (Throwable th2) {
                            th = th2;
                            fileChannel = channel;
                            if (fileChannel != null) {
                                try {
                                    fileChannel.close();
                                } catch (IOException unused3) {
                                }
                            }
                            if (randomAccessFile != null) {
                                try {
                                    randomAccessFile.close();
                                    throw th;
                                } catch (IOException unused4) {
                                    throw th;
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } else {
                    throw new IOException("File unsuitable for memory mapping");
                }
            } else {
                throw new IOException("File too large to map into memory");
            }
        } catch (Throwable th4) {
            th = th4;
            randomAccessFile = null;
        }
    }

    public static ByteBuffer b(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        AtomicReference atomicReference = f2482a;
        byte[] bArr = (byte[]) atomicReference.getAndSet(null);
        if (bArr == null) {
            bArr = new byte[16384];
        }
        while (true) {
            int read = inputStream.read(bArr);
            if (read >= 0) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                atomicReference.set(bArr);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                return c(ByteBuffer.allocateDirect(byteArray.length).put(byteArray));
            }
        }
    }

    public static ByteBuffer c(ByteBuffer byteBuffer) {
        return (ByteBuffer) byteBuffer.position(0);
    }

    public static byte[] d(ByteBuffer byteBuffer) {
        SafeArray safeArray;
        if (!byteBuffer.isReadOnly() && byteBuffer.hasArray()) {
            safeArray = new SafeArray(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
        } else {
            safeArray = null;
        }
        if (safeArray != null && safeArray.f2484a == 0 && safeArray.b == safeArray.f2485c.length) {
            return byteBuffer.array();
        }
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        byte[] bArr = new byte[asReadOnlyBuffer.limit()];
        asReadOnlyBuffer.get(bArr);
        return bArr;
    }

    public static void e(ByteBuffer byteBuffer, File file) {
        RandomAccessFile randomAccessFile;
        c(byteBuffer);
        FileChannel fileChannel = null;
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                fileChannel = randomAccessFile.getChannel();
                fileChannel.write(byteBuffer);
                fileChannel.force(false);
                fileChannel.close();
                randomAccessFile.close();
                try {
                    fileChannel.close();
                } catch (IOException unused) {
                }
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
            } catch (Throwable th) {
                th = th;
                if (fileChannel != null) {
                    try {
                        fileChannel.close();
                    } catch (IOException unused3) {
                    }
                }
                if (randomAccessFile != null) {
                    try {
                        randomAccessFile.close();
                        throw th;
                    } catch (IOException unused4) {
                        throw th;
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
        }
    }

    public static InputStream f(ByteBuffer byteBuffer) {
        return new ByteBufferStream(byteBuffer);
    }

    /* loaded from: classes.dex */
    public static class ByteBufferStream extends InputStream {

        /* renamed from: c, reason: collision with root package name */
        public final ByteBuffer f2483c;
        public int f = -1;

        public ByteBufferStream(ByteBuffer byteBuffer) {
            this.f2483c = byteBuffer;
        }

        @Override // java.io.InputStream
        public final int available() {
            return this.f2483c.remaining();
        }

        @Override // java.io.InputStream
        public final synchronized void mark(int i) {
            this.f = this.f2483c.position();
        }

        @Override // java.io.InputStream
        public final boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public final int read() {
            ByteBuffer byteBuffer = this.f2483c;
            if (byteBuffer.hasRemaining()) {
                return byteBuffer.get() & UByte.MAX_VALUE;
            }
            return -1;
        }

        @Override // java.io.InputStream
        public final synchronized void reset() {
            int i = this.f;
            if (i != -1) {
                this.f2483c.position(i);
            } else {
                throw new IOException("Cannot reset to unset mark position");
            }
        }

        @Override // java.io.InputStream
        public final long skip(long j) {
            ByteBuffer byteBuffer = this.f2483c;
            if (!byteBuffer.hasRemaining()) {
                return -1L;
            }
            long min = Math.min(j, byteBuffer.remaining());
            byteBuffer.position((int) (byteBuffer.position() + min));
            return min;
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) {
            ByteBuffer byteBuffer = this.f2483c;
            if (!byteBuffer.hasRemaining()) {
                return -1;
            }
            int min = Math.min(i2, byteBuffer.remaining());
            byteBuffer.get(bArr, i, min);
            return min;
        }
    }
}
