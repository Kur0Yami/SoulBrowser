package com.bumptech.glide.load.resource.bitmap;

import android.support.v4.media.a;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.util.Preconditions;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import kotlin.KotlinVersion;
import kotlin.UByte;

/* loaded from: classes.dex */
public final class DefaultImageHeaderParser implements ImageHeaderParser {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f2352a = "Exif\u0000\u0000".getBytes(Charset.forName("UTF-8"));
    public static final byte[] b = "MPF".getBytes(Charset.forName("UTF-8"));

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f2353c = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* loaded from: classes.dex */
    public static final class ByteBufferReader implements Reader {

        /* renamed from: a, reason: collision with root package name */
        public final ByteBuffer f2354a;

        public ByteBufferReader(ByteBuffer byteBuffer) {
            this.f2354a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final int a() {
            return (c() << 8) | c();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final int b(byte[] bArr, int i) {
            ByteBuffer byteBuffer = this.f2354a;
            int min = Math.min(i, byteBuffer.remaining());
            if (min == 0) {
                return -1;
            }
            byteBuffer.get(bArr, 0, min);
            return min;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final short c() {
            ByteBuffer byteBuffer = this.f2354a;
            if (byteBuffer.remaining() >= 1) {
                return (short) (byteBuffer.get() & UByte.MAX_VALUE);
            }
            throw new Reader.EndOfFileException();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final long skip(long j) {
            ByteBuffer byteBuffer = this.f2354a;
            int min = (int) Math.min(byteBuffer.remaining(), j);
            byteBuffer.position(byteBuffer.position() + min);
            return min;
        }
    }

    /* loaded from: classes.dex */
    public static final class RandomAccessReader {

        /* renamed from: a, reason: collision with root package name */
        public final ByteBuffer f2355a;

        public RandomAccessReader(byte[] bArr, int i) {
            this.f2355a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i);
        }

        public final short a(int i) {
            ByteBuffer byteBuffer = this.f2355a;
            if (byteBuffer.remaining() - i >= 2) {
                return byteBuffer.getShort(i);
            }
            return (short) -1;
        }
    }

    /* loaded from: classes.dex */
    public interface Reader {

        /* loaded from: classes.dex */
        public static final class EndOfFileException extends IOException {
            public EndOfFileException() {
                super("Unexpectedly reached end of a file");
            }
        }

        int a();

        int b(byte[] bArr, int i);

        short c();

        long skip(long j);
    }

    /* loaded from: classes.dex */
    public static final class StreamReader implements Reader {

        /* renamed from: a, reason: collision with root package name */
        public final InputStream f2356a;

        public StreamReader(InputStream inputStream) {
            this.f2356a = inputStream;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final int a() {
            return (c() << 8) | c();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final int b(byte[] bArr, int i) {
            int i2 = 0;
            int i3 = 0;
            while (i2 < i && (i3 = this.f2356a.read(bArr, i2, i - i2)) != -1) {
                i2 += i3;
            }
            if (i2 == 0 && i3 == -1) {
                throw new Reader.EndOfFileException();
            }
            return i2;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final short c() {
            int read = this.f2356a.read();
            if (read != -1) {
                return (short) read;
            }
            throw new Reader.EndOfFileException();
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader
        public final long skip(long j) {
            if (j < 0) {
                return 0L;
            }
            long j2 = j;
            while (j2 > 0) {
                InputStream inputStream = this.f2356a;
                long skip = inputStream.skip(j2);
                if (skip > 0) {
                    j2 -= skip;
                } else {
                    if (inputStream.read() == -1) {
                        break;
                    }
                    j2--;
                }
            }
            return j - j2;
        }
    }

    public static int g(Reader reader, ArrayPool arrayPool) {
        try {
            int a2 = reader.a();
            if ((a2 & 65496) != 65496 && a2 != 19789 && a2 != 18761) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Parser doesn't handle magic number: " + a2);
                    return -1;
                }
            } else {
                int k = k(reader, 225);
                if (k == -1) {
                    if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                        Log.d("DfltImageHeaderParser", "Failed to parse exif segment length, or exif segment not found");
                        return -1;
                    }
                } else {
                    byte[] bArr = (byte[]) arrayPool.d(k, byte[].class);
                    try {
                        return l(reader, bArr, k);
                    } finally {
                        arrayPool.c(bArr);
                    }
                }
            }
        } catch (Reader.EndOfFileException unused) {
        }
        return -1;
    }

    public static ImageHeaderParser.ImageType h(Reader reader) {
        boolean z;
        try {
            int a2 = reader.a();
            if (a2 == 65496) {
                return ImageHeaderParser.ImageType.JPEG;
            }
            int c2 = (a2 << 8) | reader.c();
            if (c2 == 4671814) {
                return ImageHeaderParser.ImageType.GIF;
            }
            int c3 = (c2 << 8) | reader.c();
            if (c3 == -1991225785) {
                reader.skip(21L);
                try {
                    if (reader.c() >= 3) {
                        return ImageHeaderParser.ImageType.PNG_A;
                    }
                    return ImageHeaderParser.ImageType.PNG;
                } catch (Reader.EndOfFileException unused) {
                    return ImageHeaderParser.ImageType.PNG;
                }
            }
            if (c3 != 1380533830) {
                if (((reader.a() << 16) | reader.a()) != 1718909296) {
                    return ImageHeaderParser.ImageType.UNKNOWN;
                }
                int a3 = (reader.a() << 16) | reader.a();
                if (a3 == 1635150195) {
                    return ImageHeaderParser.ImageType.ANIMATED_AVIF;
                }
                int i = 0;
                if (a3 == 1635150182) {
                    z = true;
                } else {
                    z = false;
                }
                reader.skip(4L);
                int i2 = c3 - 16;
                if (i2 % 4 == 0) {
                    while (i < 5 && i2 > 0) {
                        int a4 = (reader.a() << 16) | reader.a();
                        if (a4 == 1635150195) {
                            return ImageHeaderParser.ImageType.ANIMATED_AVIF;
                        }
                        if (a4 == 1635150182) {
                            z = true;
                        }
                        i++;
                        i2 -= 4;
                    }
                }
                if (z) {
                    return ImageHeaderParser.ImageType.AVIF;
                }
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            reader.skip(4L);
            if (((reader.a() << 16) | reader.a()) != 1464156752) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            int a5 = (reader.a() << 16) | reader.a();
            if ((a5 & (-256)) != 1448097792) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            int i3 = a5 & KotlinVersion.MAX_COMPONENT_VALUE;
            if (i3 == 88) {
                reader.skip(4L);
                short c4 = reader.c();
                if ((c4 & 2) != 0) {
                    return ImageHeaderParser.ImageType.ANIMATED_WEBP;
                }
                if ((c4 & 16) != 0) {
                    return ImageHeaderParser.ImageType.WEBP_A;
                }
                return ImageHeaderParser.ImageType.WEBP;
            }
            if (i3 == 76) {
                reader.skip(4L);
                if ((reader.c() & 8) != 0) {
                    return ImageHeaderParser.ImageType.WEBP_A;
                }
                return ImageHeaderParser.ImageType.WEBP;
            }
            return ImageHeaderParser.ImageType.WEBP;
        } catch (Reader.EndOfFileException unused2) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
    }

    public static boolean i(Reader reader, ArrayPool arrayPool) {
        boolean j;
        if (h(reader) == ImageHeaderParser.ImageType.JPEG) {
            int k = k(reader, 226);
            while (k > 0) {
                byte[] bArr = (byte[]) arrayPool.d(k, byte[].class);
                try {
                    int b2 = reader.b(bArr, k);
                    if (b2 != k) {
                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            Log.d("DfltImageHeaderParser", "Unable to read APP2 segment data, length: " + k + ", actually read: " + b2);
                        }
                        j = false;
                    } else {
                        j = j(bArr, k, b);
                    }
                    if (j) {
                        arrayPool.c(bArr);
                        return true;
                    }
                    arrayPool.c(bArr);
                    k = k(reader, 226);
                } catch (Throwable th) {
                    arrayPool.c(bArr);
                    throw th;
                }
            }
            if (Log.isLoggable("DfltImageHeaderParser", 2)) {
                Log.v("DfltImageHeaderParser", "hasMpf: Failed to parse APP2 segment length, or no APP2 segment with MPF metadata not found");
            }
        }
        return false;
    }

    public static boolean j(byte[] bArr, int i, byte[] bArr2) {
        boolean z;
        if (bArr != null && bArr2 != null && i > bArr2.length) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            for (int i2 = 0; i2 < bArr2.length; i2++) {
                if (bArr[i2] != bArr2[i2]) {
                    return false;
                }
            }
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0079, code lost:
    
        return -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int k(com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.Reader r9, int r10) {
        /*
        L0:
            short r0 = r9.c()
            r1 = 255(0xff, float:3.57E-43)
            r2 = 3
            r3 = -1
            java.lang.String r4 = "DfltImageHeaderParser"
            if (r0 == r1) goto L24
            boolean r9 = android.util.Log.isLoggable(r4, r2)
            if (r9 == 0) goto L79
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r10 = "Unknown segmentId="
            r9.<init>(r10)
            r9.append(r0)
            java.lang.String r9 = r9.toString()
            android.util.Log.d(r4, r9)
            return r3
        L24:
            short r0 = r9.c()
            r1 = 218(0xda, float:3.05E-43)
            if (r0 != r1) goto L2d
            goto L79
        L2d:
            r1 = 217(0xd9, float:3.04E-43)
            if (r0 != r1) goto L4e
            boolean r9 = android.util.Log.isLoggable(r4, r2)
            if (r9 == 0) goto L79
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r0 = "Found MARKER_EOI in "
            r9.<init>(r0)
            r9.append(r10)
            java.lang.String r10 = " segment"
            r9.append(r10)
            java.lang.String r9 = r9.toString()
            android.util.Log.d(r4, r9)
            return r3
        L4e:
            int r1 = r9.a()
            int r1 = r1 + (-2)
            if (r0 == r10) goto L7a
            long r5 = (long) r1
            long r7 = r9.skip(r5)
            int r5 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r5 == 0) goto L0
            boolean r9 = android.util.Log.isLoggable(r4, r2)
            if (r9 == 0) goto L79
            java.lang.String r9 = ", wanted to skip: "
            java.lang.String r10 = ", but actually skipped: "
            java.lang.String r2 = "Unable to skip enough data, type: "
            java.lang.StringBuilder r9 = android.support.v4.media.a.u(r2, r0, r1, r9, r10)
            r9.append(r7)
            java.lang.String r9 = r9.toString()
            android.util.Log.d(r4, r9)
        L79:
            return r3
        L7a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser.k(com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser$Reader, int):int");
    }

    public static int l(Reader reader, byte[] bArr, int i) {
        ByteOrder byteOrder;
        int i2;
        int i3;
        int b2 = reader.b(bArr, i);
        if (b2 != i) {
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Unable to read exif segment data, length: " + i + ", actually read: " + b2);
                return -1;
            }
        } else if (j(bArr, i, f2352a)) {
            RandomAccessReader randomAccessReader = new RandomAccessReader(bArr, i);
            short a2 = randomAccessReader.a(6);
            if (a2 != 18761) {
                if (a2 != 19789) {
                    if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                        Log.d("DfltImageHeaderParser", "Unknown endianness = " + ((int) a2));
                    }
                    byteOrder = ByteOrder.BIG_ENDIAN;
                } else {
                    byteOrder = ByteOrder.BIG_ENDIAN;
                }
            } else {
                byteOrder = ByteOrder.LITTLE_ENDIAN;
            }
            ByteBuffer byteBuffer = randomAccessReader.f2355a;
            byteBuffer.order(byteOrder);
            if (byteBuffer.remaining() - 10 >= 4) {
                i2 = byteBuffer.getInt(10);
            } else {
                i2 = -1;
            }
            short a3 = randomAccessReader.a(i2 + 6);
            for (int i4 = 0; i4 < a3; i4++) {
                int i5 = (i4 * 12) + i2 + 8;
                short a4 = randomAccessReader.a(i5);
                if (a4 == 274) {
                    short a5 = randomAccessReader.a(i5 + 2);
                    if (a5 >= 1 && a5 <= 12) {
                        int i6 = i5 + 4;
                        if (byteBuffer.remaining() - i6 >= 4) {
                            i3 = byteBuffer.getInt(i6);
                        } else {
                            i3 = -1;
                        }
                        if (i3 < 0) {
                            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                Log.d("DfltImageHeaderParser", "Negative tiff component count");
                            }
                        } else {
                            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                StringBuilder u = a.u("Got tagIndex=", i4, a4, " tagType=", " formatCode=");
                                u.append((int) a5);
                                u.append(" componentCount=");
                                u.append(i3);
                                Log.d("DfltImageHeaderParser", u.toString());
                            }
                            int i7 = i3 + f2353c[a5];
                            if (i7 > 4) {
                                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    Log.d("DfltImageHeaderParser", "Got byte count > 4, not orientation, continuing, formatCode=" + ((int) a5));
                                }
                            } else {
                                int i8 = i5 + 8;
                                if (i8 >= 0 && i8 <= byteBuffer.remaining()) {
                                    if (i7 >= 0 && i7 + i8 <= byteBuffer.remaining()) {
                                        return randomAccessReader.a(i8);
                                    }
                                    if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                        Log.d("DfltImageHeaderParser", "Illegal number of bytes for TI tag data tagType=" + ((int) a4));
                                    }
                                } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    Log.d("DfltImageHeaderParser", "Illegal tagValueOffset=" + i8 + " tagType=" + ((int) a4));
                                }
                            }
                        }
                    } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                        Log.d("DfltImageHeaderParser", "Got invalid format code = " + ((int) a5));
                    }
                }
            }
        } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
            Log.d("DfltImageHeaderParser", "Missing jpeg exif preamble");
        }
        return -1;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final ImageHeaderParser.ImageType a(ByteBuffer byteBuffer) {
        Preconditions.c(byteBuffer, "Argument must not be null");
        return h(new ByteBufferReader(byteBuffer));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final boolean b(ByteBuffer byteBuffer, ArrayPool arrayPool) {
        Preconditions.c(byteBuffer, "Argument must not be null");
        ByteBufferReader byteBufferReader = new ByteBufferReader(byteBuffer);
        Preconditions.c(arrayPool, "Argument must not be null");
        return i(byteBufferReader, arrayPool);
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final int c(ByteBuffer byteBuffer, ArrayPool arrayPool) {
        Preconditions.c(byteBuffer, "Argument must not be null");
        ByteBufferReader byteBufferReader = new ByteBufferReader(byteBuffer);
        Preconditions.c(arrayPool, "Argument must not be null");
        return g(byteBufferReader, arrayPool);
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final ImageHeaderParser.ImageType d(InputStream inputStream) {
        return h(new StreamReader(inputStream));
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final int e(InputStream inputStream, ArrayPool arrayPool) {
        StreamReader streamReader = new StreamReader(inputStream);
        Preconditions.c(arrayPool, "Argument must not be null");
        return g(streamReader, arrayPool);
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final boolean f(InputStream inputStream, ArrayPool arrayPool) {
        StreamReader streamReader = new StreamReader(inputStream);
        Preconditions.c(arrayPool, "Argument must not be null");
        return i(streamReader, arrayPool);
    }
}
