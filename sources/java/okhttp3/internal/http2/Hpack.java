package okhttp3.internal.http2;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.http.HttpMethods;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.KotlinVersion;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.io.ConstantsKt;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.uuid.Uuid;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.http2.Http2Reader;
import okhttp3.internal.http2.Huffman;
import okio.Buffer;
import okio.ByteString;
import okio.Okio;
import okio.RealBufferedSource;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/internal/http2/Hpack;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Reader", "Writer", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nHpack.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Hpack.kt\nokhttp3/internal/http2/Hpack\n+ 2 -UtilJvm.kt\nokhttp3/internal/_UtilJvmKt\n*L\n1#1,647:1\n250#2:648\n*S KotlinDebug\n*F\n+ 1 Hpack.kt\nokhttp3/internal/http2/Hpack\n*L\n398#1:648\n*E\n"})
/* loaded from: classes4.dex */
public final class Hpack {

    /* renamed from: a, reason: collision with root package name */
    public static final Header[] f22132a;
    public static final Map b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http2/Hpack$Reader;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Reader {

        /* renamed from: a, reason: collision with root package name */
        public int f22133a;
        public final ArrayList b;

        /* renamed from: c, reason: collision with root package name */
        public final RealBufferedSource f22134c;
        public Header[] d;
        public int e;
        public int f;
        public int g;

        public Reader(Http2Reader.ContinuationSource source) {
            Intrinsics.checkNotNullParameter(source, "source");
            this.f22133a = ConstantsKt.DEFAULT_BLOCK_SIZE;
            this.b = new ArrayList();
            this.f22134c = Okio.b(source);
            this.d = new Header[8];
            this.e = 7;
        }

        public final int a(int i) {
            int i2;
            int i3 = 0;
            if (i > 0) {
                int length = this.d.length;
                while (true) {
                    length--;
                    i2 = this.e;
                    if (length < i2 || i <= 0) {
                        break;
                    }
                    Header header = this.d[length];
                    Intrinsics.checkNotNull(header);
                    int i4 = header.f22131c;
                    i -= i4;
                    this.g -= i4;
                    this.f--;
                    i3++;
                }
                Header[] headerArr = this.d;
                System.arraycopy(headerArr, i2 + 1, headerArr, i2 + 1 + i3, this.f);
                this.e += i3;
            }
            return i3;
        }

        public final ByteString b(int i) {
            if (i >= 0) {
                Header[] headerArr = Hpack.f22132a;
                if (i <= headerArr.length - 1) {
                    return headerArr[i].f22130a;
                }
            }
            int length = this.e + 1 + (i - Hpack.f22132a.length);
            if (length >= 0) {
                Header[] headerArr2 = this.d;
                if (length < headerArr2.length) {
                    Header header = headerArr2[length];
                    Intrinsics.checkNotNull(header);
                    return header.f22130a;
                }
            }
            throw new IOException("Header index too large " + (i + 1));
        }

        public final void c(Header header) {
            this.b.add(header);
            int i = header.f22131c;
            int i2 = this.f22133a;
            if (i > i2) {
                ArraysKt___ArraysJvmKt.fill$default(this.d, (Object) null, 0, 0, 6, (Object) null);
                this.e = this.d.length - 1;
                this.f = 0;
                this.g = 0;
                return;
            }
            a((this.g + i) - i2);
            int i3 = this.f + 1;
            Header[] headerArr = this.d;
            if (i3 > headerArr.length) {
                Header[] headerArr2 = new Header[headerArr.length * 2];
                System.arraycopy(headerArr, 0, headerArr2, headerArr.length, headerArr.length);
                this.e = this.d.length - 1;
                this.d = headerArr2;
            }
            int i4 = this.e;
            this.e = i4 - 1;
            this.d[i4] = header;
            this.f++;
            this.g += i;
        }

        /* JADX WARN: Type inference failed for: r1v4, types: [okio.Buffer, java.lang.Object] */
        public final ByteString d() {
            boolean z;
            RealBufferedSource source = this.f22134c;
            byte readByte = source.readByte();
            byte[] bArr = _UtilCommonKt.f22076a;
            int i = readByte & UByte.MAX_VALUE;
            int i2 = 0;
            if ((readByte & ByteCompanionObject.MIN_VALUE) == 128) {
                z = true;
            } else {
                z = false;
            }
            long e = e(i, 127);
            if (z) {
                ?? sink = new Object();
                int[] iArr = Huffman.f22152a;
                Intrinsics.checkNotNullParameter(source, "source");
                Intrinsics.checkNotNullParameter(sink, "sink");
                Huffman.Node node = Huffman.f22153c;
                Huffman.Node node2 = node;
                int i3 = 0;
                for (long j = 0; j < e; j++) {
                    byte readByte2 = source.readByte();
                    byte[] bArr2 = _UtilCommonKt.f22076a;
                    i2 = (i2 << 8) | (readByte2 & UByte.MAX_VALUE);
                    i3 += 8;
                    while (i3 >= 8) {
                        int i4 = (i2 >>> (i3 - 8)) & KotlinVersion.MAX_COMPONENT_VALUE;
                        Huffman.Node[] nodeArr = node2.f22154a;
                        Intrinsics.checkNotNull(nodeArr);
                        node2 = nodeArr[i4];
                        Intrinsics.checkNotNull(node2);
                        if (node2.f22154a == null) {
                            sink.v(node2.b);
                            i3 -= node2.f22155c;
                            node2 = node;
                        } else {
                            i3 -= 8;
                        }
                    }
                }
                while (i3 > 0) {
                    int i5 = (i2 << (8 - i3)) & KotlinVersion.MAX_COMPONENT_VALUE;
                    Huffman.Node[] nodeArr2 = node2.f22154a;
                    Intrinsics.checkNotNull(nodeArr2);
                    Huffman.Node node3 = nodeArr2[i5];
                    Intrinsics.checkNotNull(node3);
                    Huffman.Node[] nodeArr3 = node3.f22154a;
                    int i6 = node3.f22155c;
                    if (nodeArr3 != null || i6 > i3) {
                        break;
                    }
                    sink.v(node3.b);
                    i3 -= i6;
                    node2 = node;
                }
                return sink.r(sink.f);
            }
            return source.r(e);
        }

        public final int e(int i, int i2) {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                byte readByte = this.f22134c.readByte();
                byte[] bArr = _UtilCommonKt.f22076a;
                int i5 = readByte & UByte.MAX_VALUE;
                if ((readByte & ByteCompanionObject.MIN_VALUE) != 0) {
                    i2 += (readByte & ByteCompanionObject.MAX_VALUE) << i4;
                    i4 += 7;
                } else {
                    return i2 + (i5 << i4);
                }
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http2/Hpack$Writer;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Writer {

        /* renamed from: a, reason: collision with root package name */
        public final Buffer f22135a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f22136c;
        public int d;
        public Header[] e;
        public int f;
        public int g;
        public int h;

        public Writer(Buffer out) {
            Intrinsics.checkNotNullParameter(out, "out");
            this.f22135a = out;
            this.b = Integer.MAX_VALUE;
            this.d = ConstantsKt.DEFAULT_BLOCK_SIZE;
            this.e = new Header[8];
            this.f = 7;
        }

        public final void a(int i) {
            int i2;
            if (i > 0) {
                int length = this.e.length - 1;
                int i3 = 0;
                while (true) {
                    i2 = this.f;
                    if (length < i2 || i <= 0) {
                        break;
                    }
                    Header header = this.e[length];
                    Intrinsics.checkNotNull(header);
                    i -= header.f22131c;
                    int i4 = this.h;
                    Header header2 = this.e[length];
                    Intrinsics.checkNotNull(header2);
                    this.h = i4 - header2.f22131c;
                    this.g--;
                    i3++;
                    length--;
                }
                Header[] headerArr = this.e;
                int i5 = i2 + 1;
                System.arraycopy(headerArr, i5, headerArr, i5 + i3, this.g);
                Header[] headerArr2 = this.e;
                int i6 = this.f + 1;
                Arrays.fill(headerArr2, i6, i6 + i3, (Object) null);
                this.f += i3;
            }
        }

        public final void b(Header header) {
            int i = header.f22131c;
            int i2 = this.d;
            if (i > i2) {
                ArraysKt___ArraysJvmKt.fill$default(this.e, (Object) null, 0, 0, 6, (Object) null);
                this.f = this.e.length - 1;
                this.g = 0;
                this.h = 0;
                return;
            }
            a((this.h + i) - i2);
            int i3 = this.g + 1;
            Header[] headerArr = this.e;
            if (i3 > headerArr.length) {
                Header[] headerArr2 = new Header[headerArr.length * 2];
                System.arraycopy(headerArr, 0, headerArr2, headerArr.length, headerArr.length);
                this.f = this.e.length - 1;
                this.e = headerArr2;
            }
            int i4 = this.f;
            this.f = i4 - 1;
            this.e[i4] = header;
            this.g++;
            this.h += i;
        }

        /* JADX WARN: Type inference failed for: r0v8, types: [okio.Buffer, java.lang.Object] */
        public final void c(ByteString source) {
            Intrinsics.checkNotNullParameter(source, "data");
            int[] iArr = Huffman.f22152a;
            Intrinsics.checkNotNullParameter(source, "bytes");
            int d = source.d();
            long j = 0;
            long j2 = 0;
            for (int i = 0; i < d; i++) {
                byte i2 = source.i(i);
                byte[] bArr = _UtilCommonKt.f22076a;
                j2 += Huffman.b[i2 & UByte.MAX_VALUE];
            }
            int i3 = (int) ((j2 + 7) >> 3);
            int d2 = source.d();
            Buffer buffer = this.f22135a;
            if (i3 < d2) {
                ?? sink = new Object();
                int[] iArr2 = Huffman.f22152a;
                Intrinsics.checkNotNullParameter(source, "source");
                Intrinsics.checkNotNullParameter(sink, "sink");
                int d3 = source.d();
                int i4 = 0;
                for (int i5 = 0; i5 < d3; i5++) {
                    byte i6 = source.i(i5);
                    byte[] bArr2 = _UtilCommonKt.f22076a;
                    int i7 = i6 & UByte.MAX_VALUE;
                    int i8 = Huffman.f22152a[i7];
                    byte b = Huffman.b[i7];
                    j = (j << b) | i8;
                    i4 += b;
                    while (i4 >= 8) {
                        i4 -= 8;
                        sink.v((int) (j >> i4));
                    }
                }
                if (i4 > 0) {
                    sink.v((int) ((j << (8 - i4)) | (255 >>> i4)));
                }
                ByteString r = sink.r(sink.f);
                e(r.d(), 127, Uuid.SIZE_BITS);
                buffer.n(r);
                return;
            }
            e(source.d(), 127, 0);
            buffer.n(source);
        }

        public final void d(ArrayList headerBlock) {
            int i;
            int i2;
            Intrinsics.checkNotNullParameter(headerBlock, "headerBlock");
            if (this.f22136c) {
                int i3 = this.b;
                if (i3 < this.d) {
                    e(i3, 31, 32);
                }
                this.f22136c = false;
                this.b = Integer.MAX_VALUE;
                e(this.d, 31, 32);
            }
            int size = headerBlock.size();
            for (int i4 = 0; i4 < size; i4++) {
                Header header = (Header) headerBlock.get(i4);
                ByteString r = header.f22130a.r();
                ByteString byteString = header.b;
                Integer num = (Integer) Hpack.b.get(r);
                if (num != null) {
                    int intValue = num.intValue();
                    i2 = intValue + 1;
                    if (2 <= i2 && i2 < 8) {
                        Header[] headerArr = Hpack.f22132a;
                        if (Intrinsics.areEqual(headerArr[intValue].b, byteString)) {
                            i = i2;
                        } else if (Intrinsics.areEqual(headerArr[i2].b, byteString)) {
                            i2 = intValue + 2;
                            i = i2;
                        }
                    }
                    i = i2;
                    i2 = -1;
                } else {
                    i = -1;
                    i2 = -1;
                }
                if (i2 == -1) {
                    int i5 = this.f + 1;
                    int length = this.e.length;
                    while (true) {
                        if (i5 >= length) {
                            break;
                        }
                        Header header2 = this.e[i5];
                        Intrinsics.checkNotNull(header2);
                        if (Intrinsics.areEqual(header2.f22130a, r)) {
                            Header header3 = this.e[i5];
                            Intrinsics.checkNotNull(header3);
                            if (Intrinsics.areEqual(header3.b, byteString)) {
                                i2 = Hpack.f22132a.length + (i5 - this.f);
                                break;
                            } else if (i == -1) {
                                i = (i5 - this.f) + Hpack.f22132a.length;
                            }
                        }
                        i5++;
                    }
                }
                if (i2 != -1) {
                    e(i2, 127, Uuid.SIZE_BITS);
                } else if (i == -1) {
                    this.f22135a.v(64);
                    c(r);
                    c(byteString);
                    b(header);
                } else {
                    ByteString prefix = Header.d;
                    r.getClass();
                    Intrinsics.checkNotNullParameter(prefix, "prefix");
                    if (r.l(0, prefix, prefix.d()) && !Intrinsics.areEqual(Header.i, r)) {
                        e(i, 15, 0);
                        c(byteString);
                    } else {
                        e(i, 63, 64);
                        c(byteString);
                        b(header);
                    }
                }
            }
        }

        public final void e(int i, int i2, int i3) {
            Buffer buffer = this.f22135a;
            if (i < i2) {
                buffer.v(i | i3);
                return;
            }
            buffer.v(i3 | i2);
            int i4 = i - i2;
            while (i4 >= 128) {
                buffer.v(128 | (i4 & 127));
                i4 >>>= 7;
            }
            buffer.v(i4);
        }
    }

    static {
        Header header = new Header(Header.i, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        ByteString byteString = Header.f;
        Header header2 = new Header(byteString, HttpMethods.GET);
        Header header3 = new Header(byteString, HttpMethods.POST);
        ByteString byteString2 = Header.g;
        Header header4 = new Header(byteString2, "/");
        Header header5 = new Header(byteString2, "/index.html");
        ByteString byteString3 = Header.h;
        Header header6 = new Header(byteString3, "http");
        Header header7 = new Header(byteString3, "https");
        ByteString byteString4 = Header.e;
        Header[] headerArr = {header, header2, header3, header4, header5, header6, header7, new Header(byteString4, "200"), new Header(byteString4, "204"), new Header(byteString4, "206"), new Header(byteString4, "304"), new Header(byteString4, "400"), new Header(byteString4, "404"), new Header(byteString4, "500"), new Header("accept-charset", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("accept-encoding", "gzip, deflate"), new Header("accept-language", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("accept-ranges", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("accept", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("access-control-allow-origin", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("age", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("allow", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("authorization", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("cache-control", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("content-disposition", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("content-encoding", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("content-language", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("content-length", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("content-location", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("content-range", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("content-type", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("cookie", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("date", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("etag", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("expect", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("expires", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("from", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("host", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("if-match", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("if-modified-since", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("if-none-match", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("if-range", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("if-unmodified-since", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("last-modified", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("link", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("location", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("max-forwards", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("proxy-authenticate", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("proxy-authorization", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("range", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("referer", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("refresh", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("retry-after", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("server", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("set-cookie", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("strict-transport-security", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("transfer-encoding", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("user-agent", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("vary", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("via", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), new Header("www-authenticate", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)};
        f22132a = headerArr;
        LinkedHashMap linkedHashMap = new LinkedHashMap(61, 1.0f);
        for (int i = 0; i < 61; i++) {
            if (!linkedHashMap.containsKey(headerArr[i].f22130a)) {
                linkedHashMap.put(headerArr[i].f22130a, Integer.valueOf(i));
            }
        }
        Map unmodifiableMap = DesugarCollections.unmodifiableMap(linkedHashMap);
        Intrinsics.checkNotNullExpressionValue(unmodifiableMap, "unmodifiableMap(...)");
        b = unmodifiableMap;
    }

    public static void a(ByteString name) {
        Intrinsics.checkNotNullParameter(name, "name");
        int d = name.d();
        for (int i = 0; i < d; i++) {
            byte i2 = name.i(i);
            if (65 <= i2 && i2 < 91) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: ".concat(name.s()));
            }
        }
    }
}
