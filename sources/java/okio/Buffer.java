package okio;

import android.support.v4.media.a;
import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.Closeable;
import java.io.EOFException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import kotlin.KotlinVersion;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.collections.ArraysKt;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.Typography;
import kotlin.uuid.Uuid;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001\u0005¨\u0006\u0006"}, d2 = {"Lokio/Buffer;", "Lokio/BufferedSource;", "Lokio/BufferedSink;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Ljava/nio/channels/ByteChannel;", "UnsafeCursor", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 Buffer.kt\nokio/internal/-Buffer\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 BufferedSource.kt\nokio/internal/-BufferedSource\n*L\n1#1,649:1\n88#2:650\n85#2:683\n85#2:685\n73#2:745\n73#2:771\n82#2:810\n76#2:821\n88#2:1014\n73#2:1029\n85#2:1133\n242#3,32:651\n277#3,10:686\n290#3,18:696\n412#3,2:714\n110#3:716\n414#3:717\n112#3,18:718\n311#3,9:736\n320#3,15:746\n338#3,10:761\n348#3,3:772\n346#3,25:775\n374#3,10:800\n384#3:811\n382#3,9:812\n391#3,7:822\n389#3,20:829\n652#3,60:849\n715#3,56:909\n773#3:965\n776#3:966\n777#3,6:968\n787#3,7:974\n797#3,6:984\n805#3,5:990\n837#3,6:995\n847#3:1001\n848#3,11:1003\n859#3,5:1015\n868#3,9:1020\n878#3,61:1030\n603#3:1091\n606#3:1092\n607#3,5:1094\n614#3:1099\n617#3,7:1100\n626#3,20:1107\n418#3:1127\n421#3,5:1128\n426#3,10:1134\n437#3,7:1144\n442#3,2:1151\n943#3:1153\n944#3,87:1155\n1034#3,48:1242\n573#3:1290\n580#3,21:1291\n1085#3,7:1312\n1095#3,7:1319\n1105#3,4:1326\n1112#3,8:1330\n1123#3,10:1338\n1136#3,14:1348\n447#3,35:1362\n513#3,40:1397\n556#3:1437\n558#3,13:1439\n1153#3:1452\n1204#3:1453\n1205#3,39:1455\n1246#3,2:1494\n1248#3,4:1497\n1255#3,3:1501\n1259#3,4:1505\n110#3:1509\n1263#3,22:1510\n112#3,18:1532\n1338#3,2:1550\n1341#3:1553\n110#3:1554\n1342#3,50:1555\n112#3,18:1605\n1401#3,12:1623\n1416#3,32:1635\n1451#3,12:1667\n1466#3,18:1679\n1488#3:1697\n1489#3:1699\n1494#3,34:1700\n1#4:684\n1#4:967\n1#4:1002\n1#4:1093\n1#4:1154\n1#4:1438\n1#4:1454\n1#4:1496\n1#4:1504\n1#4:1552\n1#4:1698\n26#5,3:981\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer\n*L\n167#1:650\n197#1:683\n235#1:685\n261#1:745\n264#1:771\n267#1:810\n267#1:821\n337#1:1014\n340#1:1029\n376#1:1133\n181#1:651,32\n252#1:686,10\n255#1:696,18\n258#1:714,2\n258#1:716\n258#1:717\n258#1:718,18\n261#1:736,9\n261#1:746,15\n264#1:761,10\n264#1:772,3\n264#1:775,25\n267#1:800,10\n267#1:811\n267#1:812,9\n267#1:822,7\n267#1:829,20\n279#1:849,60\n282#1:909,56\n284#1:965\n287#1:966\n287#1:968,6\n289#1:974,7\n294#1:984,6\n297#1:990,5\n331#1:995,6\n337#1:1001\n337#1:1003,11\n337#1:1015,5\n340#1:1020,9\n340#1:1030,61\n342#1:1091\n345#1:1092\n345#1:1094,5\n347#1:1099\n350#1:1100,7\n353#1:1107,20\n373#1:1127\n376#1:1128,5\n376#1:1134,10\n378#1:1144,7\n381#1:1151,2\n386#1:1153\n386#1:1155,87\n389#1:1242,48\n412#1:1290\n418#1:1291,21\n439#1:1312,7\n443#1:1319,7\n445#1:1326,4\n447#1:1330,8\n451#1:1338,10\n455#1:1348,14\n459#1:1362,35\n462#1:1397,40\n465#1:1437\n465#1:1439,13\n467#1:1452\n467#1:1453\n467#1:1455,39\n469#1:1494,2\n469#1:1497,4\n480#1:1501,3\n480#1:1505,4\n480#1:1509\n480#1:1510,22\n480#1:1532,18\n496#1:1550,2\n496#1:1553\n496#1:1554\n496#1:1555,50\n496#1:1605,18\n506#1:1623,12\n576#1:1635,32\n578#1:1667,12\n586#1:1679,18\n594#1:1697\n594#1:1699\n596#1:1700,34\n287#1:967\n337#1:1002\n345#1:1093\n386#1:1154\n465#1:1438\n467#1:1454\n469#1:1496\n480#1:1504\n496#1:1552\n594#1:1698\n291#1:981,3\n*E\n"})
/* loaded from: classes4.dex */
public final class Buffer implements BufferedSource, BufferedSink, Cloneable, ByteChannel {

    /* renamed from: c, reason: collision with root package name */
    public Segment f22195c;
    public long f;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/Buffer$UnsafeCursor;", "Ljava/io/Closeable;", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer$UnsafeCursor\n+ 2 Buffer.kt\nokio/internal/-Buffer\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,649:1\n1549#2:650\n1550#2:652\n1554#2:653\n1555#2,68:655\n1626#2:723\n1627#2,32:725\n1659#2,18:758\n1680#2:776\n1681#2,18:778\n1703#2:796\n1705#2,7:798\n1#3:651\n1#3:654\n1#3:724\n1#3:777\n1#3:797\n85#4:757\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer$UnsafeCursor\n*L\n636#1:650\n636#1:652\n638#1:653\n638#1:655,68\n640#1:723\n640#1:725,32\n640#1:758,18\n642#1:776\n642#1:778,18\n645#1:796\n645#1:798,7\n636#1:651\n638#1:654\n640#1:724\n642#1:777\n645#1:797\n640#1:757\n*E\n"})
    /* loaded from: classes4.dex */
    public static final class UnsafeCursor implements Closeable {

        /* renamed from: c, reason: collision with root package name */
        public Buffer f22196c;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.f22196c != null) {
                this.f22196c = null;
                return;
            }
            throw new IllegalStateException("not attached to a buffer");
        }
    }

    public final void A(long j) {
        if (j == 0) {
            v(48);
            return;
        }
        long j2 = (j >>> 1) | j;
        long j3 = j2 | (j2 >>> 2);
        long j4 = j3 | (j3 >>> 4);
        long j5 = j4 | (j4 >>> 8);
        long j6 = j5 | (j5 >>> 16);
        long j7 = j6 | (j6 >>> 32);
        long j8 = j7 - ((j7 >>> 1) & 6148914691236517205L);
        long j9 = ((j8 >>> 2) & 3689348814741910323L) + (j8 & 3689348814741910323L);
        long j10 = ((j9 >>> 4) + j9) & 1085102592571150095L;
        long j11 = j10 + (j10 >>> 8);
        long j12 = j11 + (j11 >>> 16);
        int i = (int) ((((j12 & 63) + ((j12 >>> 32) & 63)) + 3) / 4);
        Segment m = m(i);
        byte[] bArr = m.f22217a;
        int i2 = m.f22218c;
        for (int i3 = (i2 + i) - 1; i3 >= i2; i3--) {
            bArr[i3] = okio.internal.Buffer.f22223a[(int) (15 & j)];
            j >>>= 4;
        }
        m.f22218c += i;
        this.f += i;
    }

    @Override // okio.BufferedSource
    /* renamed from: C */
    public final Buffer getF() {
        return this;
    }

    @Override // okio.BufferedSource
    public final boolean D() {
        if (this.f == 0) {
            return true;
        }
        return false;
    }

    @Override // okio.BufferedSource
    public final void D0(long j) {
        if (this.f >= j) {
        } else {
            throw new EOFException();
        }
    }

    public final void F(int i) {
        Segment m = m(4);
        byte[] bArr = m.f22217a;
        int i2 = m.f22218c;
        bArr[i2] = (byte) ((i >>> 24) & KotlinVersion.MAX_COMPONENT_VALUE);
        bArr[i2 + 1] = (byte) ((i >>> 16) & KotlinVersion.MAX_COMPONENT_VALUE);
        bArr[i2 + 2] = (byte) ((i >>> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
        bArr[i2 + 3] = (byte) (i & KotlinVersion.MAX_COMPONENT_VALUE);
        m.f22218c = i2 + 4;
        this.f += 4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v7, types: [okio.Buffer, java.lang.Object] */
    @Override // okio.BufferedSource
    public final String H(long j) {
        if (j >= 0) {
            long j2 = LongCompanionObject.MAX_VALUE;
            if (j != LongCompanionObject.MAX_VALUE) {
                j2 = j + 1;
            }
            long j3 = j2;
            long e = e((byte) 10, 0L, j3);
            if (e != -1) {
                return okio.internal.Buffer.b(e, this);
            }
            if (j3 < this.f && d(j3 - 1) == 13 && d(j3) == 10) {
                return okio.internal.Buffer.b(j3, this);
            }
            ?? obj = new Object();
            b(obj, 0L, Math.min(32, this.f));
            throw new EOFException("\\n not found: limit=" + Math.min(this.f, j) + " content=" + obj.r(obj.f).e() + Typography.ellipsis);
        }
        throw new IllegalArgumentException(a.h(j, "limit < 0: ").toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0095 A[EDGE_INSN: B:40:0x0095->B:37:0x0095 BREAK  A[LOOP:0: B:4:0x000b->B:39:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x008d  */
    /* JADX WARN: Type inference failed for: r0v7, types: [okio.Buffer, java.lang.Object] */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long I0() {
        /*
            r14 = this;
            long r0 = r14.f
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 == 0) goto L9c
            r0 = 0
            r1 = r0
            r4 = r2
        Lb:
            okio.Segment r6 = r14.f22195c
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6)
            byte[] r7 = r6.f22217a
            int r8 = r6.b
            int r9 = r6.f22218c
        L16:
            if (r8 >= r9) goto L81
            r10 = r7[r8]
            r11 = 48
            if (r10 < r11) goto L25
            r11 = 57
            if (r10 > r11) goto L25
            int r11 = r10 + (-48)
            goto L3a
        L25:
            r11 = 97
            if (r10 < r11) goto L30
            r11 = 102(0x66, float:1.43E-43)
            if (r10 > r11) goto L30
            int r11 = r10 + (-87)
            goto L3a
        L30:
            r11 = 65
            if (r10 < r11) goto L65
            r11 = 70
            if (r10 > r11) goto L65
            int r11 = r10 + (-55)
        L3a:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r12 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r12 != 0) goto L4a
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L16
        L4a:
            okio.Buffer r0 = new okio.Buffer
            r0.<init>()
            r0.A(r4)
            r0.v(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.String r0 = r0.k()
            java.lang.String r2 = "Number too large: "
            java.lang.String r0 = r2.concat(r0)
            r1.<init>(r0)
            throw r1
        L65:
            if (r0 == 0) goto L69
            r1 = 1
            goto L81
        L69:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was 0x"
            r1.<init>(r2)
            java.lang.String r2 = okio.SegmentedByteString.d(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L81:
            if (r8 != r9) goto L8d
            okio.Segment r7 = r6.a()
            r14.f22195c = r7
            okio.SegmentPool.a(r6)
            goto L8f
        L8d:
            r6.b = r8
        L8f:
            if (r1 != 0) goto L95
            okio.Segment r6 = r14.f22195c
            if (r6 != 0) goto Lb
        L95:
            long r1 = r14.f
            long r6 = (long) r0
            long r1 = r1 - r6
            r14.f = r1
            return r4
        L9c:
            java.io.EOFException r0 = new java.io.EOFException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Buffer.I0():long");
    }

    public final void L(int i) {
        Segment m = m(2);
        byte[] bArr = m.f22217a;
        int i2 = m.f22218c;
        bArr[i2] = (byte) ((i >>> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
        bArr[i2 + 1] = (byte) (i & KotlinVersion.MAX_COMPONENT_VALUE);
        m.f22218c = i2 + 2;
        this.f += 2;
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink M(String str) {
        S(str);
        return this;
    }

    public final void Q(int i, int i2, String string) {
        char charAt;
        char c2;
        Intrinsics.checkNotNullParameter(string, "string");
        if (i >= 0) {
            if (i2 >= i) {
                if (i2 <= string.length()) {
                    while (i < i2) {
                        char charAt2 = string.charAt(i);
                        if (charAt2 < 128) {
                            Segment m = m(1);
                            byte[] bArr = m.f22217a;
                            int i3 = m.f22218c - i;
                            int min = Math.min(i2, 8192 - i3);
                            int i4 = i + 1;
                            bArr[i + i3] = (byte) charAt2;
                            while (true) {
                                i = i4;
                                if (i >= min || (charAt = string.charAt(i)) >= 128) {
                                    break;
                                }
                                i4 = i + 1;
                                bArr[i + i3] = (byte) charAt;
                            }
                            int i5 = m.f22218c;
                            int i6 = (i3 + i) - i5;
                            m.f22218c = i5 + i6;
                            this.f += i6;
                        } else {
                            if (charAt2 < 2048) {
                                Segment m2 = m(2);
                                byte[] bArr2 = m2.f22217a;
                                int i7 = m2.f22218c;
                                bArr2[i7] = (byte) ((charAt2 >> 6) | 192);
                                bArr2[i7 + 1] = (byte) ((charAt2 & '?') | Uuid.SIZE_BITS);
                                m2.f22218c = i7 + 2;
                                this.f += 2;
                            } else if (charAt2 >= 55296 && charAt2 <= 57343) {
                                int i8 = i + 1;
                                if (i8 < i2) {
                                    c2 = string.charAt(i8);
                                } else {
                                    c2 = 0;
                                }
                                if (charAt2 <= 56319 && 56320 <= c2 && c2 < 57344) {
                                    int i9 = (((charAt2 & 1023) << 10) | (c2 & 1023)) + 65536;
                                    Segment m3 = m(4);
                                    byte[] bArr3 = m3.f22217a;
                                    int i10 = m3.f22218c;
                                    bArr3[i10] = (byte) ((i9 >> 18) | 240);
                                    bArr3[i10 + 1] = (byte) (((i9 >> 12) & 63) | Uuid.SIZE_BITS);
                                    bArr3[i10 + 2] = (byte) (((i9 >> 6) & 63) | Uuid.SIZE_BITS);
                                    bArr3[i10 + 3] = (byte) ((i9 & 63) | Uuid.SIZE_BITS);
                                    m3.f22218c = i10 + 4;
                                    this.f += 4;
                                    i += 2;
                                } else {
                                    v(63);
                                    i = i8;
                                }
                            } else {
                                Segment m4 = m(3);
                                byte[] bArr4 = m4.f22217a;
                                int i11 = m4.f22218c;
                                bArr4[i11] = (byte) ((charAt2 >> '\f') | 224);
                                bArr4[i11 + 1] = (byte) ((63 & (charAt2 >> 6)) | Uuid.SIZE_BITS);
                                bArr4[i11 + 2] = (byte) ((charAt2 & '?') | Uuid.SIZE_BITS);
                                m4.f22218c = i11 + 3;
                                this.f += 3;
                            }
                            i++;
                        }
                    }
                    return;
                }
                StringBuilder s = a.s(i2, "endIndex > string.length: ", " > ");
                s.append(string.length());
                throw new IllegalArgumentException(s.toString().toString());
            }
            throw new IllegalArgumentException(androidx.work.impl.workers.a.s("endIndex < beginIndex: ", i2, i, " < ").toString());
        }
        throw new IllegalArgumentException(a.e(i, "beginIndex < 0: ").toString());
    }

    public final void S(String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        Q(0, string.length(), string);
    }

    public final void T(int i) {
        if (i < 128) {
            v(i);
            return;
        }
        if (i < 2048) {
            Segment m = m(2);
            byte[] bArr = m.f22217a;
            int i2 = m.f22218c;
            bArr[i2] = (byte) ((i >> 6) | 192);
            bArr[i2 + 1] = (byte) ((i & 63) | Uuid.SIZE_BITS);
            m.f22218c = i2 + 2;
            this.f += 2;
            return;
        }
        if (55296 <= i && i < 57344) {
            v(63);
            return;
        }
        if (i < 65536) {
            Segment m2 = m(3);
            byte[] bArr2 = m2.f22217a;
            int i3 = m2.f22218c;
            bArr2[i3] = (byte) ((i >> 12) | 224);
            bArr2[i3 + 1] = (byte) (((i >> 6) & 63) | Uuid.SIZE_BITS);
            bArr2[i3 + 2] = (byte) ((i & 63) | Uuid.SIZE_BITS);
            m2.f22218c = i3 + 3;
            this.f += 3;
            return;
        }
        if (i <= 1114111) {
            Segment m3 = m(4);
            byte[] bArr3 = m3.f22217a;
            int i4 = m3.f22218c;
            bArr3[i4] = (byte) ((i >> 18) | 240);
            bArr3[i4 + 1] = (byte) (((i >> 12) & 63) | Uuid.SIZE_BITS);
            bArr3[i4 + 2] = (byte) (((i >> 6) & 63) | Uuid.SIZE_BITS);
            bArr3[i4 + 3] = (byte) ((i & 63) | Uuid.SIZE_BITS);
            m3.f22218c = i4 + 4;
            this.f += 4;
            return;
        }
        throw new IllegalArgumentException("Unexpected code point: 0x" + SegmentedByteString.e(i));
    }

    @Override // okio.Sink
    public final void U(long j, Buffer source) {
        Segment segment;
        Segment b;
        int i;
        Intrinsics.checkNotNullParameter(source, "source");
        if (source != this) {
            SegmentedByteString.b(source.f, 0L, j);
            while (j > 0) {
                Segment segment2 = source.f22195c;
                Intrinsics.checkNotNull(segment2);
                int i2 = segment2.f22218c;
                Segment segment3 = source.f22195c;
                Intrinsics.checkNotNull(segment3);
                long j2 = i2 - segment3.b;
                int i3 = 0;
                if (j < j2) {
                    Segment segment4 = this.f22195c;
                    if (segment4 != null) {
                        Intrinsics.checkNotNull(segment4);
                        segment = segment4.g;
                    } else {
                        segment = null;
                    }
                    if (segment != null && segment.e) {
                        long j3 = segment.f22218c + j;
                        if (segment.d) {
                            i = 0;
                        } else {
                            i = segment.b;
                        }
                        if (j3 - i <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                            Segment segment5 = source.f22195c;
                            Intrinsics.checkNotNull(segment5);
                            segment5.d(segment, (int) j);
                            source.f -= j;
                            this.f += j;
                            return;
                        }
                    }
                    Segment segment6 = source.f22195c;
                    Intrinsics.checkNotNull(segment6);
                    int i4 = (int) j;
                    if (i4 > 0) {
                        if (i4 <= segment6.f22218c - segment6.b) {
                            if (i4 >= 1024) {
                                b = segment6.c();
                            } else {
                                b = SegmentPool.b();
                                byte[] bArr = segment6.f22217a;
                                byte[] bArr2 = b.f22217a;
                                int i5 = segment6.b;
                                ArraysKt___ArraysJvmKt.copyInto$default(bArr, bArr2, 0, i5, i5 + i4, 2, (Object) null);
                            }
                            b.f22218c = b.b + i4;
                            segment6.b += i4;
                            Segment segment7 = segment6.g;
                            Intrinsics.checkNotNull(segment7);
                            segment7.b(b);
                            source.f22195c = b;
                        }
                    } else {
                        segment6.getClass();
                    }
                    throw new IllegalArgumentException("byteCount out of range");
                }
                Segment segment8 = source.f22195c;
                Intrinsics.checkNotNull(segment8);
                long j4 = segment8.f22218c - segment8.b;
                source.f22195c = segment8.a();
                Segment segment9 = this.f22195c;
                if (segment9 == null) {
                    this.f22195c = segment8;
                    segment8.g = segment8;
                    segment8.f = segment8;
                } else {
                    Intrinsics.checkNotNull(segment9);
                    Segment segment10 = segment9.g;
                    Intrinsics.checkNotNull(segment10);
                    segment10.b(segment8);
                    Segment segment11 = segment8.g;
                    if (segment11 != segment8) {
                        Intrinsics.checkNotNull(segment11);
                        if (segment11.e) {
                            int i6 = segment8.f22218c - segment8.b;
                            Segment segment12 = segment8.g;
                            Intrinsics.checkNotNull(segment12);
                            int i7 = 8192 - segment12.f22218c;
                            Segment segment13 = segment8.g;
                            Intrinsics.checkNotNull(segment13);
                            if (!segment13.d) {
                                Segment segment14 = segment8.g;
                                Intrinsics.checkNotNull(segment14);
                                i3 = segment14.b;
                            }
                            if (i6 <= i7 + i3) {
                                Segment segment15 = segment8.g;
                                Intrinsics.checkNotNull(segment15);
                                segment8.d(segment15, i6);
                                segment8.a();
                                SegmentPool.a(segment8);
                            }
                        }
                    } else {
                        throw new IllegalStateException("cannot compact");
                    }
                }
                source.f -= j4;
                this.f += j4;
                j -= j4;
            }
            return;
        }
        throw new IllegalArgumentException("source == this");
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink Y(long j) {
        A(j);
        return this;
    }

    public final void a() {
        skip(this.f);
    }

    public final void b(Buffer out, long j, long j2) {
        Intrinsics.checkNotNullParameter(out, "out");
        long j3 = j;
        SegmentedByteString.b(this.f, j3, j2);
        if (j2 != 0) {
            out.f += j2;
            Segment segment = this.f22195c;
            while (true) {
                Intrinsics.checkNotNull(segment);
                long j4 = segment.f22218c - segment.b;
                if (j3 < j4) {
                    break;
                }
                j3 -= j4;
                segment = segment.f;
            }
            Segment segment2 = segment;
            long j5 = j2;
            while (j5 > 0) {
                Intrinsics.checkNotNull(segment2);
                Segment c2 = segment2.c();
                int i = c2.b + ((int) j3);
                c2.b = i;
                c2.f22218c = Math.min(i + ((int) j5), c2.f22218c);
                Segment segment3 = out.f22195c;
                if (segment3 == null) {
                    c2.g = c2;
                    c2.f = c2;
                    out.f22195c = c2;
                } else {
                    Intrinsics.checkNotNull(segment3);
                    Segment segment4 = segment3.g;
                    Intrinsics.checkNotNull(segment4);
                    segment4.b(c2);
                }
                j5 -= c2.f22218c - c2.b;
                segment2 = segment2.f;
                j3 = 0;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [okio.Buffer, java.lang.Object] */
    public final Object clone() {
        ?? obj = new Object();
        if (this.f == 0) {
            return obj;
        }
        Segment segment = this.f22195c;
        Intrinsics.checkNotNull(segment);
        Segment c2 = segment.c();
        obj.f22195c = c2;
        c2.g = c2;
        c2.f = c2;
        for (Segment segment2 = segment.f; segment2 != segment; segment2 = segment2.f) {
            Segment segment3 = c2.g;
            Intrinsics.checkNotNull(segment3);
            Intrinsics.checkNotNull(segment2);
            segment3.b(segment2.c());
        }
        obj.f = this.f;
        return obj;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel, okio.Sink
    public final void close() {
    }

    public final byte d(long j) {
        SegmentedByteString.b(this.f, j, 1L);
        Segment segment = this.f22195c;
        if (segment != null) {
            long j2 = this.f;
            if (j2 - j < j) {
                while (j2 > j) {
                    segment = segment.g;
                    Intrinsics.checkNotNull(segment);
                    j2 -= segment.f22218c - segment.b;
                }
                Intrinsics.checkNotNull(segment);
                return segment.f22217a[(int) ((segment.b + j) - j2)];
            }
            long j3 = 0;
            while (true) {
                long j4 = (segment.f22218c - segment.b) + j3;
                if (j4 <= j) {
                    segment = segment.f;
                    Intrinsics.checkNotNull(segment);
                    j3 = j4;
                } else {
                    Intrinsics.checkNotNull(segment);
                    return segment.f22217a[(int) ((segment.b + j) - j3)];
                }
            }
        } else {
            Intrinsics.checkNotNull(null);
            throw null;
        }
    }

    public final long e(byte b, long j, long j2) {
        Segment segment;
        long j3 = 0;
        if (0 <= j && j <= j2) {
            long j4 = this.f;
            if (j2 > j4) {
                j2 = j4;
            }
            if (j != j2 && (segment = this.f22195c) != null) {
                if (j4 - j < j) {
                    while (j4 > j) {
                        segment = segment.g;
                        Intrinsics.checkNotNull(segment);
                        j4 -= segment.f22218c - segment.b;
                    }
                    while (j4 < j2) {
                        byte[] bArr = segment.f22217a;
                        int min = (int) Math.min(segment.f22218c, (segment.b + j2) - j4);
                        for (int i = (int) ((segment.b + j) - j4); i < min; i++) {
                            if (bArr[i] == b) {
                                return (i - segment.b) + j4;
                            }
                        }
                        j4 += segment.f22218c - segment.b;
                        segment = segment.f;
                        Intrinsics.checkNotNull(segment);
                        j = j4;
                    }
                    return -1L;
                }
                while (true) {
                    long j5 = (segment.f22218c - segment.b) + j3;
                    if (j5 > j) {
                        break;
                    }
                    segment = segment.f;
                    Intrinsics.checkNotNull(segment);
                    j3 = j5;
                }
                while (j3 < j2) {
                    byte[] bArr2 = segment.f22217a;
                    int min2 = (int) Math.min(segment.f22218c, (segment.b + j2) - j3);
                    for (int i2 = (int) ((segment.b + j) - j3); i2 < min2; i2++) {
                        if (bArr2[i2] == b) {
                            return (i2 - segment.b) + j3;
                        }
                    }
                    j3 += segment.f22218c - segment.b;
                    segment = segment.f;
                    Intrinsics.checkNotNull(segment);
                    j = j3;
                }
                return -1L;
            }
            return -1L;
        }
        StringBuilder sb = new StringBuilder("size=");
        sb.append(this.f);
        com.google.android.gms.internal.ads.a.j(sb, " fromIndex=", j, " toIndex=");
        sb.append(j2);
        throw new IllegalArgumentException(sb.toString().toString());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Buffer)) {
            return false;
        }
        long j = this.f;
        Buffer buffer = (Buffer) obj;
        if (j != buffer.f) {
            return false;
        }
        if (j == 0) {
            return true;
        }
        Segment segment = this.f22195c;
        Intrinsics.checkNotNull(segment);
        Segment segment2 = buffer.f22195c;
        Intrinsics.checkNotNull(segment2);
        int i = segment.b;
        int i2 = segment2.b;
        long j2 = 0;
        while (j2 < this.f) {
            long min = Math.min(segment.f22218c - i, segment2.f22218c - i2);
            long j3 = 0;
            while (j3 < min) {
                int i3 = i + 1;
                int i4 = i2 + 1;
                if (segment.f22217a[i] != segment2.f22217a[i2]) {
                    return false;
                }
                j3++;
                i = i3;
                i2 = i4;
            }
            if (i == segment.f22218c) {
                segment = segment.f;
                Intrinsics.checkNotNull(segment);
                i = segment.b;
            }
            if (i2 == segment2.f22218c) {
                segment2 = segment2.f;
                Intrinsics.checkNotNull(segment2);
                i2 = segment2.b;
            }
            j2 += min;
        }
        return true;
    }

    public final long f(ByteString targetBytes) {
        int i;
        int i2;
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        Segment segment = this.f22195c;
        if (segment == null) {
            return -1L;
        }
        long j = this.f;
        long j2 = 0;
        if (j < 0) {
            while (j > 0) {
                segment = segment.g;
                Intrinsics.checkNotNull(segment);
                j -= segment.f22218c - segment.b;
            }
            if (targetBytes.d() == 2) {
                byte i3 = targetBytes.i(0);
                byte i4 = targetBytes.i(1);
                while (j < this.f) {
                    byte[] bArr = segment.f22217a;
                    i = (int) ((segment.b + j2) - j);
                    int i5 = segment.f22218c;
                    while (i < i5) {
                        byte b = bArr[i];
                        if (b != i3 && b != i4) {
                            i++;
                        }
                        i2 = segment.b;
                    }
                    j2 = (segment.f22218c - segment.b) + j;
                    segment = segment.f;
                    Intrinsics.checkNotNull(segment);
                    j = j2;
                }
                return -1L;
            }
            byte[] f22198c = targetBytes.getF22198c();
            while (j < this.f) {
                byte[] bArr2 = segment.f22217a;
                i = (int) ((segment.b + j2) - j);
                int i6 = segment.f22218c;
                while (i < i6) {
                    byte b2 = bArr2[i];
                    for (byte b3 : f22198c) {
                        if (b2 == b3) {
                            i2 = segment.b;
                        }
                    }
                    i++;
                }
                j2 = (segment.f22218c - segment.b) + j;
                segment = segment.f;
                Intrinsics.checkNotNull(segment);
                j = j2;
            }
            return -1L;
        }
        j = 0;
        while (true) {
            long j3 = (segment.f22218c - segment.b) + j;
            if (j3 > 0) {
                break;
            }
            segment = segment.f;
            Intrinsics.checkNotNull(segment);
            j = j3;
        }
        if (targetBytes.d() == 2) {
            byte i7 = targetBytes.i(0);
            byte i8 = targetBytes.i(1);
            while (j < this.f) {
                byte[] bArr3 = segment.f22217a;
                i = (int) ((segment.b + j2) - j);
                int i9 = segment.f22218c;
                while (i < i9) {
                    byte b4 = bArr3[i];
                    if (b4 != i7 && b4 != i8) {
                        i++;
                    }
                    i2 = segment.b;
                }
                j2 = (segment.f22218c - segment.b) + j;
                segment = segment.f;
                Intrinsics.checkNotNull(segment);
                j = j2;
            }
            return -1L;
        }
        byte[] f22198c2 = targetBytes.getF22198c();
        while (j < this.f) {
            byte[] bArr4 = segment.f22217a;
            i = (int) ((segment.b + j2) - j);
            int i10 = segment.f22218c;
            while (i < i10) {
                byte b5 = bArr4[i];
                for (byte b6 : f22198c2) {
                    if (b5 == b6) {
                        i2 = segment.b;
                    }
                }
                i++;
            }
            j2 = (segment.f22218c - segment.b) + j;
            segment = segment.f;
            Intrinsics.checkNotNull(segment);
            j = j2;
        }
        return -1L;
        return (i - i2) + j;
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public final void flush() {
    }

    public final int hashCode() {
        Segment segment = this.f22195c;
        if (segment == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = segment.f22218c;
            for (int i3 = segment.b; i3 < i2; i3++) {
                i = (i * 31) + segment.f22217a[i3];
            }
            segment = segment.f;
            Intrinsics.checkNotNull(segment);
        } while (segment != this.f22195c);
        return i;
    }

    public final byte[] i(long j) {
        if (j >= 0 && j <= 2147483647L) {
            if (this.f >= j) {
                byte[] sink = new byte[(int) j];
                Intrinsics.checkNotNullParameter(sink, "sink");
                int i = 0;
                while (i < sink.length) {
                    int read = read(sink, i, sink.length - i);
                    if (read != -1) {
                        i += read;
                    } else {
                        throw new EOFException();
                    }
                }
                return sink;
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(a.h(j, "byteCount: ").toString());
    }

    @Override // okio.BufferedSource
    public final InputStream inputStream() {
        return new InputStream() { // from class: okio.Buffer$inputStream$1
            @Override // java.io.InputStream
            public final int available() {
                return (int) Math.min(Buffer.this.f, Integer.MAX_VALUE);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
            }

            @Override // java.io.InputStream
            public final int read() {
                Buffer buffer = Buffer.this;
                if (buffer.f > 0) {
                    return buffer.readByte() & UByte.MAX_VALUE;
                }
                return -1;
            }

            public final String toString() {
                return Buffer.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public final int read(byte[] sink, int i, int i2) {
                Intrinsics.checkNotNullParameter(sink, "sink");
                return Buffer.this.read(sink, i, i2);
            }
        };
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return true;
    }

    public final String j(long j, Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "charset");
        if (j >= 0 && j <= 2147483647L) {
            if (this.f >= j) {
                if (j == 0) {
                    return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                Segment segment = this.f22195c;
                Intrinsics.checkNotNull(segment);
                int i = segment.b;
                if (i + j > segment.f22218c) {
                    return new String(i(j), charset);
                }
                int i2 = (int) j;
                String str = new String(segment.f22217a, i, i2, charset);
                int i3 = segment.b + i2;
                segment.b = i3;
                this.f -= j;
                if (i3 == segment.f22218c) {
                    this.f22195c = segment.a();
                    SegmentPool.a(segment);
                }
                return str;
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(a.h(j, "byteCount: ").toString());
    }

    @Override // okio.BufferedSource
    public final String j0() {
        return H(LongCompanionObject.MAX_VALUE);
    }

    public final String k() {
        return j(this.f, Charsets.UTF_8);
    }

    public final ByteString l(int i) {
        if (i == 0) {
            return ByteString.h;
        }
        SegmentedByteString.b(this.f, 0L, i);
        Segment segment = this.f22195c;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            Intrinsics.checkNotNull(segment);
            int i5 = segment.f22218c;
            int i6 = segment.b;
            if (i5 != i6) {
                i3 += i5 - i6;
                i4++;
                segment = segment.f;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        byte[][] bArr = new byte[i4];
        int[] iArr = new int[i4 * 2];
        Segment segment2 = this.f22195c;
        int i7 = 0;
        while (i2 < i) {
            Intrinsics.checkNotNull(segment2);
            bArr[i7] = segment2.f22217a;
            i2 += segment2.f22218c - segment2.b;
            iArr[i7] = Math.min(i2, i);
            iArr[i7 + i4] = segment2.b;
            segment2.d = true;
            i7++;
            segment2 = segment2.f;
        }
        return new C0360SegmentedByteString(bArr, iArr);
    }

    @Override // okio.BufferedSource
    public final int l0() {
        return SegmentedByteString.c(readInt());
    }

    public final Segment m(int i) {
        if (i >= 1 && i <= 8192) {
            Segment segment = this.f22195c;
            if (segment == null) {
                Segment b = SegmentPool.b();
                this.f22195c = b;
                b.g = b;
                b.f = b;
                return b;
            }
            Intrinsics.checkNotNull(segment);
            Segment segment2 = segment.g;
            Intrinsics.checkNotNull(segment2);
            if (segment2.f22218c + i <= 8192 && segment2.e) {
                return segment2;
            }
            Segment b2 = SegmentPool.b();
            segment2.b(b2);
            return b2;
        }
        throw new IllegalArgumentException("unexpected capacity");
    }

    public final void n(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        byteString.t(this, byteString.d());
    }

    public final void o(byte[] source, int i) {
        Intrinsics.checkNotNullParameter(source, "source");
        int i2 = 0;
        long j = i;
        SegmentedByteString.b(source.length, 0, j);
        while (i2 < i) {
            Segment m = m(1);
            int min = Math.min(i - i2, 8192 - m.f22218c);
            int i3 = i2 + min;
            ArraysKt.copyInto(source, m.f22217a, m.f22218c, i2, i3);
            m.f22218c += min;
            i2 = i3;
        }
        this.f += j;
    }

    @Override // okio.Source
    public final long p0(long j, Buffer sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j >= 0) {
            long j2 = this.f;
            if (j2 == 0) {
                return -1L;
            }
            if (j > j2) {
                j = j2;
            }
            sink.U(j, this);
            return j;
        }
        throw new IllegalArgumentException(a.h(j, "byteCount < 0: ").toString());
    }

    @Override // okio.BufferedSource
    public final ByteString r(long j) {
        if (j >= 0 && j <= 2147483647L) {
            if (this.f >= j) {
                if (j >= PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
                    ByteString l = l((int) j);
                    skip(j);
                    return l;
                }
                return new ByteString(i(j));
            }
            throw new EOFException();
        }
        throw new IllegalArgumentException(a.h(j, "byteCount: ").toString());
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink r0(ByteString byteString) {
        n(byteString);
        return this;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        Segment segment = this.f22195c;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(sink.remaining(), segment.f22218c - segment.b);
        sink.put(segment.f22217a, segment.b, min);
        int i = segment.b + min;
        segment.b = i;
        this.f -= min;
        if (i == segment.f22218c) {
            this.f22195c = segment.a();
            SegmentPool.a(segment);
        }
        return min;
    }

    @Override // okio.BufferedSource
    public final byte readByte() {
        if (this.f != 0) {
            Segment segment = this.f22195c;
            Intrinsics.checkNotNull(segment);
            int i = segment.b;
            int i2 = segment.f22218c;
            int i3 = i + 1;
            byte b = segment.f22217a[i];
            this.f--;
            if (i3 == i2) {
                this.f22195c = segment.a();
                SegmentPool.a(segment);
                return b;
            }
            segment.b = i3;
            return b;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public final int readInt() {
        if (this.f >= 4) {
            Segment segment = this.f22195c;
            Intrinsics.checkNotNull(segment);
            int i = segment.b;
            int i2 = segment.f22218c;
            if (i2 - i < 4) {
                return ((readByte() & UByte.MAX_VALUE) << 24) | ((readByte() & UByte.MAX_VALUE) << 16) | ((readByte() & UByte.MAX_VALUE) << 8) | (readByte() & UByte.MAX_VALUE);
            }
            byte[] bArr = segment.f22217a;
            int i3 = i + 3;
            int i4 = ((bArr[i + 1] & UByte.MAX_VALUE) << 16) | ((bArr[i] & UByte.MAX_VALUE) << 24) | ((bArr[i + 2] & UByte.MAX_VALUE) << 8);
            int i5 = i + 4;
            int i6 = (bArr[i3] & UByte.MAX_VALUE) | i4;
            this.f -= 4;
            if (i5 == i2) {
                this.f22195c = segment.a();
                SegmentPool.a(segment);
                return i6;
            }
            segment.b = i5;
            return i6;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public final short readShort() {
        if (this.f >= 2) {
            Segment segment = this.f22195c;
            Intrinsics.checkNotNull(segment);
            int i = segment.b;
            int i2 = segment.f22218c;
            if (i2 - i < 2) {
                return (short) (((readByte() & UByte.MAX_VALUE) << 8) | (readByte() & UByte.MAX_VALUE));
            }
            byte[] bArr = segment.f22217a;
            int i3 = i + 1;
            int i4 = (bArr[i] & UByte.MAX_VALUE) << 8;
            int i5 = i + 2;
            int i6 = (bArr[i3] & UByte.MAX_VALUE) | i4;
            this.f -= 2;
            if (i5 == i2) {
                this.f22195c = segment.a();
                SegmentPool.a(segment);
            } else {
                segment.b = i5;
            }
            return (short) i6;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public final void skip(long j) {
        while (j > 0) {
            Segment segment = this.f22195c;
            if (segment != null) {
                int min = (int) Math.min(j, segment.f22218c - segment.b);
                long j2 = min;
                this.f -= j2;
                j -= j2;
                int i = segment.b + min;
                segment.b = i;
                if (i == segment.f22218c) {
                    this.f22195c = segment.a();
                    SegmentPool.a(segment);
                }
            } else {
                throw new EOFException();
            }
        }
    }

    @Override // okio.BufferedSource
    public final short t0() {
        short readShort = readShort();
        return (short) (((readShort & 255) << 8) | ((65280 & readShort) >>> 8));
    }

    @Override // okio.Source
    public final Timeout timeout() {
        return Timeout.d;
    }

    public final String toString() {
        long j = this.f;
        if (j <= 2147483647L) {
            return l((int) j).toString();
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + this.f).toString());
    }

    public final long u(Source source) {
        Intrinsics.checkNotNullParameter(source, "source");
        long j = 0;
        while (true) {
            long p0 = source.p0(PlaybackStateCompat.ACTION_PLAY_FROM_URI, this);
            if (p0 != -1) {
                j += p0;
            } else {
                return j;
            }
        }
    }

    public final void v(int i) {
        Segment m = m(1);
        byte[] bArr = m.f22217a;
        int i2 = m.f22218c;
        m.f22218c = i2 + 1;
        bArr[i2] = (byte) i;
        this.f++;
    }

    @Override // okio.BufferedSink
    public final BufferedSink write(byte[] source) {
        Intrinsics.checkNotNullParameter(source, "source");
        o(source, source.length);
        return this;
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink writeByte(int i) {
        v(i);
        return this;
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink writeInt(int i) {
        F(i);
        return this;
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink writeShort(int i) {
        L(i);
        return this;
    }

    public final void z(long j) {
        boolean z;
        if (j == 0) {
            v(48);
            return;
        }
        int i = 0;
        if (j < 0) {
            j = -j;
            if (j < 0) {
                S("-9223372036854775808");
                return;
            }
            z = true;
        } else {
            z = false;
        }
        byte[] bArr = okio.internal.Buffer.f22223a;
        int numberOfLeadingZeros = ((64 - Long.numberOfLeadingZeros(j)) * 10) >>> 5;
        if (j > okio.internal.Buffer.b[numberOfLeadingZeros]) {
            i = 1;
        }
        int i2 = numberOfLeadingZeros + i;
        if (z) {
            i2++;
        }
        Segment m = m(i2);
        byte[] bArr2 = m.f22217a;
        int i3 = m.f22218c + i2;
        while (j != 0) {
            long j2 = 10;
            i3--;
            bArr2[i3] = okio.internal.Buffer.f22223a[(int) (j % j2)];
            j /= j2;
        }
        if (z) {
            bArr2[i3 - 1] = 45;
        }
        m.f22218c += i2;
        this.f += i2;
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer source) {
        Intrinsics.checkNotNullParameter(source, "source");
        int remaining = source.remaining();
        int i = remaining;
        while (i > 0) {
            Segment m = m(1);
            int min = Math.min(i, 8192 - m.f22218c);
            source.get(m.f22217a, m.f22218c, min);
            i -= min;
            m.f22218c += min;
        }
        this.f += remaining;
        return remaining;
    }

    public final int read(byte[] sink, int i, int i2) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        SegmentedByteString.b(sink.length, i, i2);
        Segment segment = this.f22195c;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(i2, segment.f22218c - segment.b);
        byte[] bArr = segment.f22217a;
        int i3 = segment.b;
        ArraysKt.copyInto(bArr, sink, i, i3, i3 + min);
        int i4 = segment.b + min;
        segment.b = i4;
        this.f -= min;
        if (i4 == segment.f22218c) {
            this.f22195c = segment.a();
            SegmentPool.a(segment);
        }
        return min;
    }
}
