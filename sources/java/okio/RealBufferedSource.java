package okio;

import android.support.v4.media.a;
import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.Typography;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/RealBufferedSource;", "Lokio/BufferedSource;", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRealBufferedSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 2 RealBufferedSource.kt\nokio/internal/-RealBufferedSource\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 BufferedSource.kt\nokio/internal/-BufferedSource\n+ 5 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,207:1\n63#1:213\n63#1:224\n63#1:231\n63#1:237\n63#1:239\n63#1:243\n63#1:248\n63#1:266\n63#1:270\n63#1:277\n63#1:290\n63#1:299\n63#1:300\n63#1:301\n63#1:307\n63#1:315\n63#1:328\n63#1:332\n63#1:333\n63#1:334\n63#1:335\n63#1:340\n63#1:352\n63#1:368\n63#1:378\n63#1:381\n63#1:384\n63#1:387\n63#1:390\n63#1:393\n63#1:399\n63#1:416\n63#1:436\n63#1:451\n63#1:468\n63#1:495\n39#2:208\n40#2,3:210\n43#2,7:214\n53#2:221\n54#2:223\n58#2,2:225\n62#2:227\n63#2,2:229\n65#2,3:232\n71#2,2:235\n76#2:238\n77#2:240\n81#2,2:241\n86#2:244\n88#2,2:246\n90#2,13:249\n109#2:265\n110#2:267\n114#2,2:268\n119#2,6:271\n125#2,9:278\n136#2,3:287\n139#2,6:291\n145#2:298\n149#2,5:302\n154#2,5:308\n161#2,2:313\n163#2,11:316\n177#2:327\n178#2:329\n182#2,2:330\n187#2,4:336\n191#2,6:341\n201#2:347\n202#2,3:349\n205#2,8:353\n213#2,3:362\n220#2,3:365\n223#2,7:369\n233#2,2:376\n238#2,2:379\n243#2,2:382\n248#2,2:385\n253#2,2:388\n258#2,2:391\n263#2,5:394\n268#2,11:400\n282#2,5:411\n287#2,14:417\n304#2,2:431\n306#2,2:434\n308#2,7:437\n317#2,2:444\n319#2,4:447\n323#2,11:452\n421#2,2:463\n424#2,2:466\n426#2,7:469\n442#2:476\n444#2,12:478\n459#2:490\n463#2,4:491\n467#2:496\n469#2:497\n471#2:498\n1#3:209\n1#3:222\n1#3:228\n1#3:245\n1#3:348\n1#3:433\n1#3:446\n1#3:465\n1#3:477\n26#4,3:262\n88#5:297\n88#5:361\n*S KotlinDebug\n*F\n+ 1 RealBufferedSource.kt\nokio/RealBufferedSource\n*L\n67#1:213\n68#1:224\n70#1:231\n71#1:237\n72#1:239\n73#1:243\n74#1:248\n76#1:266\n77#1:270\n79#1:277\n81#1:290\n84#1:299\n85#1:300\n89#1:301\n93#1:307\n94#1:315\n95#1:328\n96#1:332\n99#1:333\n100#1:334\n105#1:335\n108#1:340\n110#1:352\n111#1:368\n112#1:378\n113#1:381\n114#1:384\n115#1:387\n116#1:390\n117#1:393\n118#1:399\n119#1:416\n120#1:436\n125#1:451\n135#1:468\n203#1:495\n67#1:208\n67#1:210,3\n67#1:214,7\n68#1:221\n68#1:223\n69#1:225,2\n70#1:227\n70#1:229,2\n70#1:232,3\n71#1:235,2\n72#1:238\n72#1:240\n73#1:241,2\n74#1:244\n74#1:246,2\n74#1:249,13\n76#1:265\n76#1:267\n77#1:268,2\n79#1:271,6\n79#1:278,9\n81#1:287,3\n81#1:291,6\n81#1:298\n93#1:302,5\n93#1:308,5\n94#1:313,2\n94#1:316,11\n95#1:327\n95#1:329\n96#1:330,2\n108#1:336,4\n108#1:341,6\n110#1:347\n110#1:349,3\n110#1:353,8\n110#1:362,3\n111#1:365,3\n111#1:369,7\n112#1:376,2\n113#1:379,2\n114#1:382,2\n115#1:385,2\n116#1:388,2\n117#1:391,2\n118#1:394,5\n118#1:400,11\n119#1:411,5\n119#1:417,14\n120#1:431,2\n120#1:434,2\n120#1:437,7\n125#1:444,2\n125#1:447,4\n125#1:452,11\n135#1:463,2\n135#1:466,2\n135#1:469,7\n149#1:476\n149#1:478,12\n151#1:490\n203#1:491,4\n203#1:496\n204#1:497\n205#1:498\n67#1:209\n68#1:222\n70#1:228\n74#1:245\n110#1:348\n120#1:433\n125#1:446\n135#1:465\n149#1:477\n75#1:262,3\n81#1:297\n110#1:361\n*E\n"})
/* loaded from: classes4.dex */
public final class RealBufferedSource implements BufferedSource {

    /* renamed from: c, reason: collision with root package name */
    public final Source f22215c;
    public final Buffer f;
    public boolean g;

    /* JADX WARN: Type inference failed for: r2v1, types: [okio.Buffer, java.lang.Object] */
    public RealBufferedSource(Source source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.f22215c = source;
        this.f = new Object();
    }

    @Override // okio.BufferedSource
    /* renamed from: C, reason: from getter */
    public final Buffer getF() {
        return this.f;
    }

    @Override // okio.BufferedSource
    public final boolean D() {
        if (!this.g) {
            Buffer buffer = this.f;
            if (buffer.D() && this.f22215c.p0(PlaybackStateCompat.ACTION_PLAY_FROM_URI, buffer) == -1) {
                return true;
            }
            return false;
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSource
    public final void D0(long j) {
        if (e(j)) {
        } else {
            throw new EOFException();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0, types: [okio.Buffer, java.lang.Object] */
    @Override // okio.BufferedSource
    public final String H(long j) {
        long j2;
        if (j >= 0) {
            if (j == LongCompanionObject.MAX_VALUE) {
                j2 = Long.MAX_VALUE;
            } else {
                j2 = j + 1;
            }
            long a2 = a((byte) 10, 0L, j2);
            Buffer buffer = this.f;
            if (a2 != -1) {
                return okio.internal.Buffer.b(a2, buffer);
            }
            if (j2 < LongCompanionObject.MAX_VALUE && e(j2) && buffer.d(j2 - 1) == 13 && e(j2 + 1) && buffer.d(j2) == 10) {
                return okio.internal.Buffer.b(j2, buffer);
            }
            ?? obj = new Object();
            buffer.b(obj, 0L, Math.min(32, buffer.f));
            throw new EOFException("\\n not found: limit=" + Math.min(buffer.f, j) + " content=" + obj.r(obj.f).e() + Typography.ellipsis);
        }
        throw new IllegalArgumentException(a.h(j, "limit < 0: ").toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0031, code lost:
    
        if (r0 == 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0034, code lost:
    
        r1 = new java.lang.StringBuilder("Expected leading [0-9a-fA-F] character but was 0x");
        r2 = java.lang.Integer.toString(r2, kotlin.text.CharsKt.checkRadix(16));
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, "toString(...)");
        r1.append(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0056, code lost:
    
        throw new java.lang.NumberFormatException(r1.toString());
     */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long I0() {
        /*
            r6 = this;
            r0 = 1
            r6.D0(r0)
            r0 = 0
        L6:
            int r1 = r0 + 1
            long r2 = (long) r1
            boolean r2 = r6.e(r2)
            okio.Buffer r3 = r6.f
            if (r2 == 0) goto L57
            long r4 = (long) r0
            byte r2 = r3.d(r4)
            r4 = 48
            if (r2 < r4) goto L1e
            r4 = 57
            if (r2 <= r4) goto L2f
        L1e:
            r4 = 97
            if (r2 < r4) goto L26
            r4 = 102(0x66, float:1.43E-43)
            if (r2 <= r4) goto L2f
        L26:
            r4 = 65
            if (r2 < r4) goto L31
            r4 = 70
            if (r2 <= r4) goto L2f
            goto L31
        L2f:
            r0 = r1
            goto L6
        L31:
            if (r0 == 0) goto L34
            goto L57
        L34:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r3 = "Expected leading [0-9a-fA-F] character but was 0x"
            r1.<init>(r3)
            r3 = 16
            int r3 = kotlin.text.CharsKt.checkRadix(r3)
            java.lang.String r2 = java.lang.Integer.toString(r2, r3)
            java.lang.String r3 = "toString(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L57:
            long r0 = r3.I0()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.RealBufferedSource.I0():long");
    }

    public final long a(byte b, long j, long j2) {
        if (!this.g) {
            if (0 <= j2) {
                long j3 = 0;
                while (j3 < j2) {
                    Buffer buffer = this.f;
                    byte b2 = b;
                    long j4 = j2;
                    long e = buffer.e(b2, j3, j4);
                    if (e != -1) {
                        return e;
                    }
                    long j5 = buffer.f;
                    if (j5 >= j4 || this.f22215c.p0(PlaybackStateCompat.ACTION_PLAY_FROM_URI, buffer) == -1) {
                        break;
                    }
                    j3 = Math.max(j3, j5);
                    b = b2;
                    j2 = j4;
                }
                return -1L;
            }
            throw new IllegalArgumentException(a.h(j2, "fromIndex=0 toIndex=").toString());
        }
        throw new IllegalStateException("closed");
    }

    public final long b() {
        long j;
        D0(8L);
        Buffer buffer = this.f;
        if (buffer.f >= 8) {
            Segment segment = buffer.f22195c;
            Intrinsics.checkNotNull(segment);
            int i = segment.b;
            int i2 = segment.f22218c;
            if (i2 - i < 8) {
                j = ((buffer.readInt() & 4294967295L) << 32) | (4294967295L & buffer.readInt());
            } else {
                byte[] bArr = segment.f22217a;
                int i3 = i + 7;
                long j2 = ((bArr[i + 1] & 255) << 48) | ((bArr[i] & 255) << 56) | ((bArr[i + 2] & 255) << 40) | ((bArr[i + 3] & 255) << 32) | ((bArr[i + 4] & 255) << 24) | ((bArr[i + 5] & 255) << 16) | ((bArr[i + 6] & 255) << 8);
                int i4 = i + 8;
                long j3 = j2 | (bArr[i3] & 255);
                buffer.f -= 8;
                if (i4 == i2) {
                    buffer.f22195c = segment.a();
                    SegmentPool.a(segment);
                } else {
                    segment.b = i4;
                }
                j = j3;
            }
            return ((j & 255) << 56) | (((-72057594037927936L) & j) >>> 56) | ((71776119061217280L & j) >>> 40) | ((280375465082880L & j) >>> 24) | ((1095216660480L & j) >>> 8) | ((4278190080L & j) << 8) | ((16711680 & j) << 24) | ((65280 & j) << 40);
        }
        throw new EOFException();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        if (!this.g) {
            this.g = true;
            this.f22215c.close();
            this.f.a();
        }
    }

    public final String d(long j) {
        D0(j);
        Buffer buffer = this.f;
        buffer.getClass();
        return buffer.j(j, Charsets.UTF_8);
    }

    public final boolean e(long j) {
        Buffer buffer;
        if (j >= 0) {
            if (this.g) {
                throw new IllegalStateException("closed");
            }
            do {
                buffer = this.f;
                if (buffer.f >= j) {
                    return true;
                }
            } while (this.f22215c.p0(PlaybackStateCompat.ACTION_PLAY_FROM_URI, buffer) != -1);
            return false;
        }
        throw new IllegalArgumentException(a.h(j, "byteCount < 0: ").toString());
    }

    @Override // okio.BufferedSource
    public final InputStream inputStream() {
        return new InputStream() { // from class: okio.RealBufferedSource$inputStream$1
            @Override // java.io.InputStream
            public final int available() {
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                if (!realBufferedSource.g) {
                    return (int) Math.min(realBufferedSource.f.f, Integer.MAX_VALUE);
                }
                throw new IOException("closed");
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                RealBufferedSource.this.close();
            }

            @Override // java.io.InputStream
            public final int read() {
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                Buffer buffer = realBufferedSource.f;
                if (realBufferedSource.g) {
                    throw new IOException("closed");
                }
                if (buffer.f == 0 && realBufferedSource.f22215c.p0(PlaybackStateCompat.ACTION_PLAY_FROM_URI, buffer) == -1) {
                    return -1;
                }
                return buffer.readByte() & UByte.MAX_VALUE;
            }

            public final String toString() {
                return RealBufferedSource.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public final long transferTo(OutputStream out) {
                Intrinsics.checkNotNullParameter(out, "out");
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                Buffer buffer = realBufferedSource.f;
                if (!realBufferedSource.g) {
                    long j = 0;
                    long j2 = 0;
                    while (true) {
                        if (buffer.f == j && realBufferedSource.f22215c.p0(PlaybackStateCompat.ACTION_PLAY_FROM_URI, buffer) == -1) {
                            return j2;
                        }
                        long j3 = buffer.f;
                        j2 += j3;
                        Intrinsics.checkNotNullParameter(out, "out");
                        SegmentedByteString.b(buffer.f, 0L, j3);
                        Segment segment = buffer.f22195c;
                        while (j3 > j) {
                            Intrinsics.checkNotNull(segment);
                            int min = (int) Math.min(j3, segment.f22218c - segment.b);
                            out.write(segment.f22217a, segment.b, min);
                            int i = segment.b + min;
                            segment.b = i;
                            long j4 = min;
                            buffer.f -= j4;
                            j3 -= j4;
                            if (i == segment.f22218c) {
                                Segment a2 = segment.a();
                                buffer.f22195c = a2;
                                SegmentPool.a(segment);
                                segment = a2;
                            }
                            j = 0;
                        }
                    }
                } else {
                    throw new IOException("closed");
                }
            }

            @Override // java.io.InputStream
            public final int read(byte[] data, int i, int i2) {
                Intrinsics.checkNotNullParameter(data, "data");
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                Buffer buffer = realBufferedSource.f;
                if (!realBufferedSource.g) {
                    SegmentedByteString.b(data.length, i, i2);
                    if (buffer.f == 0 && realBufferedSource.f22215c.p0(PlaybackStateCompat.ACTION_PLAY_FROM_URI, buffer) == -1) {
                        return -1;
                    }
                    return buffer.read(data, i, i2);
                }
                throw new IOException("closed");
            }
        };
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.g;
    }

    @Override // okio.BufferedSource
    public final String j0() {
        return H(LongCompanionObject.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public final int l0() {
        D0(4L);
        return this.f.l0();
    }

    @Override // okio.Source
    public final long p0(long j, Buffer sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j >= 0) {
            if (!this.g) {
                Buffer buffer = this.f;
                if (buffer.f == 0) {
                    if (j == 0) {
                        return 0L;
                    }
                    if (this.f22215c.p0(PlaybackStateCompat.ACTION_PLAY_FROM_URI, buffer) == -1) {
                        return -1L;
                    }
                }
                return buffer.p0(Math.min(j, buffer.f), sink);
            }
            throw new IllegalStateException("closed");
        }
        throw new IllegalArgumentException(a.h(j, "byteCount < 0: ").toString());
    }

    @Override // okio.BufferedSource
    public final ByteString r(long j) {
        D0(j);
        return this.f.r(j);
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        Buffer buffer = this.f;
        if (buffer.f == 0 && this.f22215c.p0(PlaybackStateCompat.ACTION_PLAY_FROM_URI, buffer) == -1) {
            return -1;
        }
        return buffer.read(sink);
    }

    @Override // okio.BufferedSource
    public final byte readByte() {
        D0(1L);
        return this.f.readByte();
    }

    @Override // okio.BufferedSource
    public final int readInt() {
        D0(4L);
        return this.f.readInt();
    }

    @Override // okio.BufferedSource
    public final short readShort() {
        D0(2L);
        return this.f.readShort();
    }

    @Override // okio.BufferedSource
    public final void skip(long j) {
        if (!this.g) {
            while (j > 0) {
                Buffer buffer = this.f;
                if (buffer.f == 0 && this.f22215c.p0(PlaybackStateCompat.ACTION_PLAY_FROM_URI, buffer) == -1) {
                    throw new EOFException();
                }
                long min = Math.min(j, buffer.f);
                buffer.skip(min);
                j -= min;
            }
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSource
    public final short t0() {
        D0(2L);
        return this.f.t0();
    }

    @Override // okio.Source
    public final Timeout timeout() {
        return this.f22215c.timeout();
    }

    public final String toString() {
        return "buffer(" + this.f22215c + ')';
    }
}
