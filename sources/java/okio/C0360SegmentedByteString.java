package okio;

import androidx.work.impl.workers.a;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/SegmentedByteString;", "Lokio/ByteString;", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSegmentedByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentedByteString.kt\nokio/SegmentedByteString\n+ 2 SegmentedByteString.kt\nokio/internal/-SegmentedByteString\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,140:1\n63#2,12:141\n63#2,12:153\n104#2,2:165\n106#2,26:168\n135#2,5:194\n142#2:199\n145#2,3:200\n63#2,8:203\n148#2,8:211\n71#2,4:219\n156#2:223\n63#2,12:224\n160#2:236\n85#2,10:237\n161#2,9:247\n95#2,4:256\n170#2,2:260\n179#2,4:262\n85#2,10:266\n183#2,3:276\n95#2,4:279\n186#2:283\n195#2,8:284\n85#2,10:292\n203#2,3:302\n95#2,4:305\n206#2:309\n215#2,5:310\n85#2,10:315\n220#2,3:325\n95#2,4:328\n223#2:332\n226#2,4:333\n234#2,6:337\n63#2,8:343\n240#2,7:351\n71#2,4:358\n247#2,2:362\n1#3:167\n*S KotlinDebug\n*F\n+ 1 SegmentedByteString.kt\nokio/SegmentedByteString\n*L\n54#1:141,12\n66#1:153,12\n78#1:165,2\n78#1:168,26\n80#1:194,5\n82#1:199\n84#1:200,3\n84#1:203,8\n84#1:211,8\n84#1:219,4\n84#1:223\n90#1:224,12\n96#1:236\n96#1:237,10\n96#1:247,9\n96#1:256,4\n96#1:260,2\n103#1:262,4\n103#1:266,10\n103#1:276,3\n103#1:279,4\n103#1:283\n110#1:284,8\n110#1:292,10\n110#1:302,3\n110#1:305,4\n110#1:309\n117#1:310,5\n117#1:315,10\n117#1:325,3\n117#1:328,4\n117#1:332\n131#1:333,4\n133#1:337,6\n133#1:343,8\n133#1:351,7\n133#1:358,4\n133#1:362,2\n78#1:167\n*E\n"})
/* renamed from: okio.SegmentedByteString, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C0360SegmentedByteString extends ByteString {
    public final transient byte[][] i;
    public final transient int[] j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0360SegmentedByteString(byte[][] segments, int[] directory) {
        super(ByteString.h.f22198c);
        Intrinsics.checkNotNullParameter(segments, "segments");
        Intrinsics.checkNotNullParameter(directory, "directory");
        this.i = segments;
        this.j = directory;
    }

    @Override // okio.ByteString
    public final String a() {
        throw null;
    }

    @Override // okio.ByteString
    public final ByteString c(String algorithm) {
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        byte[][] bArr = this.i;
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr = this.j;
            int i3 = iArr[length + i];
            int i4 = iArr[i];
            messageDigest.update(bArr[i], i3, i4 - i2);
            i++;
            i2 = i4;
        }
        byte[] digest = messageDigest.digest();
        Intrinsics.checkNotNull(digest);
        return new ByteString(digest);
    }

    @Override // okio.ByteString
    public final int d() {
        return this.j[this.i.length - 1];
    }

    @Override // okio.ByteString
    public final String e() {
        return v().e();
    }

    @Override // okio.ByteString
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof ByteString) {
                ByteString byteString = (ByteString) obj;
                if (byteString.d() == d() && l(0, byteString, d())) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    @Override // okio.ByteString
    public final int f(byte[] other, int i) {
        Intrinsics.checkNotNullParameter(other, "other");
        return v().f(other, i);
    }

    @Override // okio.ByteString
    /* renamed from: h */
    public final byte[] getF22198c() {
        return u();
    }

    @Override // okio.ByteString
    public final int hashCode() {
        int i = this.f;
        if (i != 0) {
            return i;
        }
        byte[][] bArr = this.i;
        int length = bArr.length;
        int i2 = 0;
        int i3 = 1;
        int i4 = 0;
        while (i2 < length) {
            int[] iArr = this.j;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            byte[] bArr2 = bArr[i2];
            int i7 = (i6 - i4) + i5;
            while (i5 < i7) {
                i3 = (i3 * 31) + bArr2[i5];
                i5++;
            }
            i2++;
            i4 = i6;
        }
        this.f = i3;
        return i3;
    }

    @Override // okio.ByteString
    public final byte i(int i) {
        int i2;
        byte[][] bArr = this.i;
        int length = bArr.length - 1;
        int[] iArr = this.j;
        SegmentedByteString.b(iArr[length], i, 1L);
        int a2 = okio.internal.SegmentedByteString.a(this, i);
        if (a2 == 0) {
            i2 = 0;
        } else {
            i2 = iArr[a2 - 1];
        }
        return bArr[a2][(i - i2) + iArr[bArr.length + a2]];
    }

    @Override // okio.ByteString
    public final int j(byte[] other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return v().j(other);
    }

    @Override // okio.ByteString
    public final boolean l(int i, ByteString other, int i2) {
        int i3;
        Intrinsics.checkNotNullParameter(other, "other");
        if (i >= 0 && i <= d() - i2) {
            int i4 = i2 + i;
            int a2 = okio.internal.SegmentedByteString.a(this, i);
            int i5 = 0;
            while (i < i4) {
                int[] iArr = this.j;
                if (a2 == 0) {
                    i3 = 0;
                } else {
                    i3 = iArr[a2 - 1];
                }
                int i6 = iArr[a2] - i3;
                byte[][] bArr = this.i;
                int i7 = iArr[bArr.length + a2];
                int min = Math.min(i4, i6 + i3) - i;
                if (other.n(bArr[a2], i5, (i - i3) + i7, min)) {
                    i5 += min;
                    i += min;
                    a2++;
                }
            }
            return true;
        }
        return false;
    }

    @Override // okio.ByteString
    public final boolean n(byte[] other, int i, int i2, int i3) {
        int i4;
        Intrinsics.checkNotNullParameter(other, "other");
        if (i < 0 || i > d() - i3 || i2 < 0 || i2 > other.length - i3) {
            return false;
        }
        int i5 = i3 + i;
        int a2 = okio.internal.SegmentedByteString.a(this, i);
        while (i < i5) {
            int[] iArr = this.j;
            if (a2 == 0) {
                i4 = 0;
            } else {
                i4 = iArr[a2 - 1];
            }
            int i6 = iArr[a2] - i4;
            byte[][] bArr = this.i;
            int i7 = iArr[bArr.length + a2];
            int min = Math.min(i5, i6 + i4) - i;
            if (!SegmentedByteString.a(bArr[a2], other, (i - i4) + i7, i2, min)) {
                return false;
            }
            i2 += min;
            i += min;
            a2++;
        }
        return true;
    }

    @Override // okio.ByteString
    public final String o(Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "charset");
        return v().o(charset);
    }

    @Override // okio.ByteString
    public final ByteString p(int i, int i2) {
        Intrinsics.checkNotNullParameter(this, "<this>");
        if (i2 == -1234567890) {
            i2 = d();
        }
        if (i >= 0) {
            if (i2 <= d()) {
                int i3 = i2 - i;
                if (i3 >= 0) {
                    if (i == 0 && i2 == d()) {
                        return this;
                    }
                    if (i == i2) {
                        return ByteString.h;
                    }
                    int a2 = okio.internal.SegmentedByteString.a(this, i);
                    int a3 = okio.internal.SegmentedByteString.a(this, i2 - 1);
                    byte[][] bArr = this.i;
                    byte[][] bArr2 = (byte[][]) ArraysKt.copyOfRange(bArr, a2, a3 + 1);
                    int[] iArr = new int[bArr2.length * 2];
                    int i4 = 0;
                    int[] iArr2 = this.j;
                    if (a2 <= a3) {
                        int i5 = a2;
                        int i6 = 0;
                        while (true) {
                            iArr[i6] = Math.min(iArr2[i5] - i, i3);
                            int i7 = i6 + 1;
                            iArr[i6 + bArr2.length] = iArr2[bArr.length + i5];
                            if (i5 == a3) {
                                break;
                            }
                            i5++;
                            i6 = i7;
                        }
                    }
                    if (a2 != 0) {
                        i4 = iArr2[a2 - 1];
                    }
                    int length = bArr2.length;
                    iArr[length] = (i - i4) + iArr[length];
                    return new C0360SegmentedByteString(bArr2, iArr);
                }
                throw new IllegalArgumentException(a.s("endIndex=", i2, i, " < beginIndex=").toString());
            }
            StringBuilder s = android.support.v4.media.a.s(i2, "endIndex=", " > length(");
            s.append(d());
            s.append(')');
            throw new IllegalArgumentException(s.toString().toString());
        }
        throw new IllegalArgumentException(android.support.v4.media.a.f(i, "beginIndex=", " < 0").toString());
    }

    @Override // okio.ByteString
    public final ByteString r() {
        return v().r();
    }

    @Override // okio.ByteString
    public final void t(Buffer buffer, int i) {
        int i2;
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        int a2 = okio.internal.SegmentedByteString.a(this, 0);
        int i3 = 0;
        while (i3 < i) {
            int[] iArr = this.j;
            if (a2 == 0) {
                i2 = 0;
            } else {
                i2 = iArr[a2 - 1];
            }
            int i4 = iArr[a2] - i2;
            byte[][] bArr = this.i;
            int i5 = iArr[bArr.length + a2];
            int min = Math.min(i, i4 + i2) - i3;
            int i6 = (i3 - i2) + i5;
            Segment segment = new Segment(bArr[a2], i6, i6 + min, true, false);
            Segment segment2 = buffer.f22195c;
            if (segment2 == null) {
                segment.g = segment;
                segment.f = segment;
                buffer.f22195c = segment;
            } else {
                Intrinsics.checkNotNull(segment2);
                Segment segment3 = segment2.g;
                Intrinsics.checkNotNull(segment3);
                segment3.b(segment);
            }
            i3 += min;
            a2++;
        }
        buffer.f += i;
    }

    @Override // okio.ByteString
    public final String toString() {
        return v().toString();
    }

    public final byte[] u() {
        byte[] bArr = new byte[d()];
        byte[][] bArr2 = this.i;
        int length = bArr2.length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int[] iArr = this.j;
            int i4 = iArr[length + i];
            int i5 = iArr[i];
            int i6 = i5 - i2;
            ArraysKt.copyInto(bArr2[i], bArr, i3, i4, i4 + i6);
            i3 += i6;
            i++;
            i2 = i5;
        }
        return bArr;
    }

    public final ByteString v() {
        return new ByteString(u());
    }
}
