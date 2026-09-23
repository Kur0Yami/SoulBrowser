package okio;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.collections.ArraysKt;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import okio.internal.ByteStringNonJs;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002:\u0001\u0003¨\u0006\u0004"}, d2 = {"Lokio/ByteString;", "Ljava/io/Serializable;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\nokio/ByteString\n+ 2 ByteString.kt\nokio/internal/-ByteString\n+ 3 Util.kt\nokio/-SegmentedByteString\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,364:1\n42#2,7:365\n52#2:372\n55#2:373\n62#2,4:374\n66#2:379\n68#2:381\n74#2,23:382\n102#2,23:405\n129#2,2:428\n131#2,9:431\n143#2:440\n146#2:441\n149#2:442\n152#2:443\n160#2:444\n170#2,3:445\n169#2:448\n183#2,2:449\n188#2:451\n192#2:452\n196#2:453\n200#2:454\n204#2,7:455\n217#2:462\n221#2,8:463\n233#2,4:471\n242#2,5:475\n251#2,6:480\n257#2,9:487\n301#2,8:496\n129#2,2:504\n131#2,9:507\n312#2,9:516\n67#3:378\n73#3:380\n73#3:486\n1#4:430\n1#4:506\n*S KotlinDebug\n*F\n+ 1 ByteString.kt\nokio/ByteString\n*L\n66#1:365,7\n71#1:372\n108#1:373\n110#1:374,4\n110#1:379\n110#1:381\n112#1:382,23\n114#1:405,23\n118#1:428,2\n118#1:431,9\n120#1:440\n129#1:441\n131#1:442\n133#1:443\n152#1:444\n159#1:445,3\n159#1:448\n166#1:449,2\n168#1:451\n170#1:452\n172#1:453\n174#1:454\n180#1:455,7\n183#1:462\n186#1:463,8\n188#1:471,4\n190#1:475,5\n192#1:480,6\n192#1:487,9\n194#1:496,8\n194#1:504,2\n194#1:507,9\n194#1:516,9\n110#1:378\n110#1:380\n192#1:486\n118#1:430\n194#1:506\n*E\n"})
/* loaded from: classes4.dex */
public class ByteString implements Serializable, Comparable<ByteString> {
    public static final ByteString h = new ByteString(new byte[0]);

    /* renamed from: c */
    public final byte[] f22198c;
    public transient int f;
    public transient String g;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lokio/ByteString$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "serialVersionUID", "J", "Lokio/ByteString;", "EMPTY", "Lokio/ByteString;", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\nokio/ByteString$Companion\n+ 2 ByteString.kt\nokio/internal/-ByteString\n+ 3 ByteStringNonJs.kt\nokio/internal/-ByteStringNonJs\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,364:1\n269#2:365\n273#2,3:366\n280#2,3:369\n287#2,2:372\n25#3:374\n27#3,7:376\n1#4:375\n1#4:383\n*S KotlinDebug\n*F\n+ 1 ByteString.kt\nokio/ByteString$Companion\n*L\n234#1:365\n239#1:366,3\n251#1:369,3\n259#1:372,2\n262#1:374\n262#1:376,7\n262#1:375\n*E\n"})
    /* loaded from: classes4.dex */
    public static final class Companion {
        public static ByteString a(String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            if (str.length() % 2 == 0) {
                int length = str.length() / 2;
                byte[] bArr = new byte[length];
                for (int i = 0; i < length; i++) {
                    int i2 = i * 2;
                    bArr[i] = (byte) (ByteStringNonJs.a(str.charAt(i2 + 1)) + (ByteStringNonJs.a(str.charAt(i2)) << 4));
                }
                return new ByteString(bArr);
            }
            throw new IllegalArgumentException("Unexpected hex string: ".concat(str).toString());
        }

        public static ByteString b(String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            Intrinsics.checkNotNullParameter(str, "<this>");
            byte[] bytes = str.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            ByteString byteString = new ByteString(bytes);
            byteString.g = str;
            return byteString;
        }

        public static ByteString c(byte[] bArr) {
            ByteString byteString = ByteString.h;
            Intrinsics.checkNotNullParameter(bArr, "<this>");
            Intrinsics.checkNotNullParameter(bArr, "<this>");
            int length = bArr.length;
            SegmentedByteString.b(bArr.length, 0, length);
            return new ByteString(ArraysKt.copyOfRange(bArr, 0, length));
        }
    }

    public ByteString(byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.f22198c = data;
    }

    public static int g(ByteString byteString, ByteString other) {
        byteString.getClass();
        Intrinsics.checkNotNullParameter(other, "other");
        return byteString.f(other.getF22198c(), 0);
    }

    public static int k(ByteString byteString, ByteString other) {
        byteString.getClass();
        Intrinsics.checkNotNullParameter(other, "other");
        return byteString.j(other.getF22198c());
    }

    public static /* synthetic */ ByteString q(ByteString byteString, int i, int i2, int i3) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = -1234567890;
        }
        return byteString.p(i, i2);
    }

    public String a() {
        byte[] map = Base64.f22194a;
        byte[] bArr = this.f22198c;
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(map, "map");
        byte[] bArr2 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i = 0;
        int i2 = 0;
        while (i < length) {
            byte b = bArr[i];
            int i3 = i + 2;
            byte b2 = bArr[i + 1];
            i += 3;
            byte b3 = bArr[i3];
            bArr2[i2] = map[(b & UByte.MAX_VALUE) >> 2];
            bArr2[i2 + 1] = map[((b & 3) << 4) | ((b2 & UByte.MAX_VALUE) >> 4)];
            int i4 = i2 + 3;
            bArr2[i2 + 2] = map[((b2 & 15) << 2) | ((b3 & UByte.MAX_VALUE) >> 6)];
            i2 += 4;
            bArr2[i4] = map[b3 & 63];
        }
        int length2 = bArr.length - length;
        if (length2 != 1) {
            if (length2 == 2) {
                int i5 = i + 1;
                byte b4 = bArr[i];
                byte b5 = bArr[i5];
                bArr2[i2] = map[(b4 & UByte.MAX_VALUE) >> 2];
                bArr2[i2 + 1] = map[((b4 & 3) << 4) | ((b5 & UByte.MAX_VALUE) >> 4)];
                bArr2[i2 + 2] = map[(b5 & 15) << 2];
                bArr2[i2 + 3] = Base64.padSymbol;
            }
        } else {
            byte b6 = bArr[i];
            bArr2[i2] = map[(b6 & UByte.MAX_VALUE) >> 2];
            bArr2[i2 + 1] = map[(b6 & 3) << 4];
            bArr2[i2 + 2] = Base64.padSymbol;
            bArr2[i2 + 3] = Base64.padSymbol;
        }
        Intrinsics.checkNotNullParameter(bArr2, "<this>");
        return new String(bArr2, Charsets.UTF_8);
    }

    @Override // java.lang.Comparable
    /* renamed from: b */
    public final int compareTo(ByteString other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int d = d();
        int d2 = other.d();
        int min = Math.min(d, d2);
        for (int i = 0; i < min; i++) {
            int i2 = i(i) & UByte.MAX_VALUE;
            int i3 = other.i(i) & UByte.MAX_VALUE;
            if (i2 != i3) {
                if (i2 < i3) {
                    return -1;
                }
                return 1;
            }
        }
        if (d == d2) {
            return 0;
        }
        if (d < d2) {
            return -1;
        }
        return 1;
    }

    public ByteString c(String algorithm) {
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        messageDigest.update(this.f22198c, 0, d());
        byte[] digest = messageDigest.digest();
        Intrinsics.checkNotNull(digest);
        return new ByteString(digest);
    }

    public int d() {
        return this.f22198c.length;
    }

    public String e() {
        byte[] bArr = this.f22198c;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            char[] cArr2 = okio.internal.ByteString.f22224a;
            cArr[i] = cArr2[(b >> 4) & 15];
            i += 2;
            cArr[i2] = cArr2[b & 15];
        }
        return StringsKt.concatToString(cArr);
    }

    public boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof ByteString) {
                ByteString byteString = (ByteString) obj;
                int d = byteString.d();
                byte[] bArr = this.f22198c;
                if (d == bArr.length && byteString.n(bArr, 0, 0, bArr.length)) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public int f(byte[] other, int i) {
        Intrinsics.checkNotNullParameter(other, "other");
        byte[] bArr = this.f22198c;
        int length = bArr.length - other.length;
        int max = Math.max(i, 0);
        if (max <= length) {
            while (!SegmentedByteString.a(bArr, other, max, 0, other.length)) {
                if (max != length) {
                    max++;
                } else {
                    return -1;
                }
            }
            return max;
        }
        return -1;
    }

    /* renamed from: h, reason: from getter */
    public byte[] getF22198c() {
        return this.f22198c;
    }

    public int hashCode() {
        int i = this.f;
        if (i != 0) {
            return i;
        }
        int hashCode = Arrays.hashCode(this.f22198c);
        this.f = hashCode;
        return hashCode;
    }

    public byte i(int i) {
        return this.f22198c[i];
    }

    public int j(byte[] other) {
        Intrinsics.checkNotNullParameter(other, "other");
        Intrinsics.checkNotNullParameter(this, "<this>");
        int d = d();
        byte[] bArr = this.f22198c;
        for (int min = Math.min(d, bArr.length - other.length); -1 < min; min--) {
            if (SegmentedByteString.a(bArr, other, min, 0, other.length)) {
                return min;
            }
        }
        return -1;
    }

    public boolean l(int i, ByteString other, int i2) {
        Intrinsics.checkNotNullParameter(other, "other");
        return other.n(this.f22198c, 0, i, i2);
    }

    public boolean n(byte[] other, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(other, "other");
        if (i >= 0) {
            byte[] bArr = this.f22198c;
            if (i <= bArr.length - i3 && i2 >= 0 && i2 <= other.length - i3 && SegmentedByteString.a(bArr, other, i, i2, i3)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public String o(Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "charset");
        return new String(this.f22198c, charset);
    }

    public ByteString p(int i, int i2) {
        Intrinsics.checkNotNullParameter(this, "<this>");
        if (i2 == -1234567890) {
            i2 = d();
        }
        if (i >= 0) {
            byte[] bArr = this.f22198c;
            if (i2 <= bArr.length) {
                if (i2 - i >= 0) {
                    if (i == 0 && i2 == bArr.length) {
                        return this;
                    }
                    return new ByteString(ArraysKt.copyOfRange(bArr, i, i2));
                }
                throw new IllegalArgumentException("endIndex < beginIndex");
            }
            throw new IllegalArgumentException(("endIndex > length(" + bArr.length + ')').toString());
        }
        throw new IllegalArgumentException("beginIndex < 0");
    }

    public ByteString r() {
        int i = 0;
        while (true) {
            byte[] bArr = this.f22198c;
            if (i < bArr.length) {
                byte b = bArr[i];
                if (b >= 65 && b <= 90) {
                    byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
                    Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
                    copyOf[i] = (byte) (b + 32);
                    for (int i2 = i + 1; i2 < copyOf.length; i2++) {
                        byte b2 = copyOf[i2];
                        if (b2 >= 65 && b2 <= 90) {
                            copyOf[i2] = (byte) (b2 + 32);
                        }
                    }
                    return new ByteString(copyOf);
                }
                i++;
            } else {
                return this;
            }
        }
    }

    public final String s() {
        String str = this.g;
        if (str == null) {
            byte[] f22198c = getF22198c();
            Intrinsics.checkNotNullParameter(f22198c, "<this>");
            String str2 = new String(f22198c, Charsets.UTF_8);
            this.g = str2;
            return str2;
        }
        return str;
    }

    public void t(Buffer buffer, int i) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        Intrinsics.checkNotNullParameter(this, "<this>");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        buffer.o(this.f22198c, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x00fb, code lost:
    
        if (r6 == 64) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0137, code lost:
    
        if (r6 == 64) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x013b, code lost:
    
        if (r6 == 64) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x00db, code lost:
    
        if (r6 == 64) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x017a, code lost:
    
        if (r6 == 64) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0181, code lost:
    
        if (r6 == 64) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0173, code lost:
    
        if (r6 == 64) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x01b3, code lost:
    
        if (r6 == 64) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x01b6, code lost:
    
        if (r6 == 64) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x01b9, code lost:
    
        if (r6 == 64) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0147, code lost:
    
        if (r6 == 64) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x01bc, code lost:
    
        if (r6 == 64) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x007a, code lost:
    
        r3 = kotlin.Unit.INSTANCE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0099, code lost:
    
        if (r6 == 64) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00c9, code lost:
    
        if (r6 == 64) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0088, code lost:
    
        if (r6 == 64) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0103, code lost:
    
        if (r6 == 64) goto L430;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 651
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.ByteString.toString():java.lang.String");
    }
}
