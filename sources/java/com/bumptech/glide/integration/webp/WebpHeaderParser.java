package com.bumptech.glide.integration.webp;

import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.KotlinVersion;

/* loaded from: classes.dex */
public class WebpHeaderParser {

    /* loaded from: classes.dex */
    public static final class ByteArrayReader implements Reader {

        /* renamed from: a, reason: collision with root package name */
        public final byte[] f2117a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final int f2118c;
        public int d;

        public ByteArrayReader(byte[] bArr, int i, int i2) {
            this.f2117a = bArr;
            this.b = i;
            this.f2118c = i2;
            this.d = i;
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public final int a() {
            return ((b() << 8) & 65280) | (b() & KotlinVersion.MAX_COMPONENT_VALUE);
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public final int b() {
            int i = this.d;
            if (i >= this.b + this.f2118c) {
                return -1;
            }
            this.d = i + 1;
            return this.f2117a[i];
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public final long c() {
            int min = (int) Math.min((this.b + this.f2118c) - this.d, 4L);
            this.d += min;
            return min;
        }
    }

    /* loaded from: classes.dex */
    public static final class ByteBufferReader implements Reader {

        /* renamed from: a, reason: collision with root package name */
        public final ByteBuffer f2119a;

        public ByteBufferReader(ByteBuffer byteBuffer) {
            this.f2119a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public final int a() {
            return ((b() << 8) & 65280) | (b() & KotlinVersion.MAX_COMPONENT_VALUE);
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public final int b() {
            ByteBuffer byteBuffer = this.f2119a;
            if (byteBuffer.remaining() < 1) {
                return -1;
            }
            return byteBuffer.get();
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public final long c() {
            ByteBuffer byteBuffer = this.f2119a;
            int min = (int) Math.min(byteBuffer.remaining(), 4L);
            byteBuffer.position(byteBuffer.position() + min);
            return min;
        }
    }

    /* loaded from: classes.dex */
    public interface Reader {
        int a();

        int b();

        long c();
    }

    /* loaded from: classes.dex */
    public static final class StreamReader implements Reader {

        /* renamed from: a, reason: collision with root package name */
        public final InputStream f2120a;

        public StreamReader(InputStream inputStream) {
            this.f2120a = inputStream;
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public final int a() {
            InputStream inputStream = this.f2120a;
            return (inputStream.read() & KotlinVersion.MAX_COMPONENT_VALUE) | ((inputStream.read() << 8) & 65280);
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public final int b() {
            return this.f2120a.read();
        }

        @Override // com.bumptech.glide.integration.webp.WebpHeaderParser.Reader
        public final long c() {
            long j = 4;
            while (j > 0) {
                InputStream inputStream = this.f2120a;
                long skip = inputStream.skip(j);
                if (skip > 0) {
                    j -= skip;
                } else {
                    if (inputStream.read() == -1) {
                        break;
                    }
                    j--;
                }
            }
            return 4 - j;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class WebpImageType {

        /* renamed from: c, reason: collision with root package name */
        public static final WebpImageType f2121c;
        public static final WebpImageType f;
        public static final WebpImageType g;
        public static final WebpImageType h;
        public static final WebpImageType i;
        public static final WebpImageType j;
        public static final WebpImageType k;
        public static final /* synthetic */ WebpImageType[] l;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.bumptech.glide.integration.webp.WebpHeaderParser$WebpImageType] */
        /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Enum, com.bumptech.glide.integration.webp.WebpHeaderParser$WebpImageType] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.bumptech.glide.integration.webp.WebpHeaderParser$WebpImageType] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.bumptech.glide.integration.webp.WebpHeaderParser$WebpImageType] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, com.bumptech.glide.integration.webp.WebpHeaderParser$WebpImageType] */
        /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, com.bumptech.glide.integration.webp.WebpHeaderParser$WebpImageType] */
        /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Enum, com.bumptech.glide.integration.webp.WebpHeaderParser$WebpImageType] */
        static {
            ?? r0 = new Enum("WEBP_SIMPLE", 0);
            f2121c = r0;
            ?? r1 = new Enum("WEBP_LOSSLESS", 1);
            f = r1;
            ?? r3 = new Enum("WEBP_LOSSLESS_WITH_ALPHA", 2);
            g = r3;
            ?? r5 = new Enum("WEBP_EXTENDED", 3);
            h = r5;
            ?? r7 = new Enum("WEBP_EXTENDED_WITH_ALPHA", 4);
            i = r7;
            ?? r9 = new Enum("WEBP_EXTENDED_ANIMATED", 5);
            j = r9;
            ?? r11 = new Enum("NONE_WEBP", 6);
            k = r11;
            l = new WebpImageType[]{r0, r1, r3, r5, r7, r9, r11};
        }

        public static WebpImageType valueOf(String str) {
            return (WebpImageType) Enum.valueOf(WebpImageType.class, str);
        }

        public static WebpImageType[] values() {
            return (WebpImageType[]) l.clone();
        }
    }

    public static WebpImageType a(Reader reader) {
        if ((((reader.a() << 16) & (-65536)) | (reader.a() & 65535)) == 1380533830) {
            reader.c();
            if ((((reader.a() << 16) & (-65536)) | (reader.a() & 65535)) == 1464156752) {
                int a2 = ((reader.a() << 16) & (-65536)) | (reader.a() & 65535);
                if (a2 == 1448097824) {
                    return WebpImageType.f2121c;
                }
                if (a2 == 1448097868) {
                    reader.c();
                    if ((reader.b() & 8) != 0) {
                        return WebpImageType.g;
                    }
                    return WebpImageType.f;
                }
                if (a2 == 1448097880) {
                    reader.c();
                    int b = reader.b();
                    if ((b & 2) != 0) {
                        return WebpImageType.j;
                    }
                    if ((b & 16) != 0) {
                        return WebpImageType.i;
                    }
                    return WebpImageType.h;
                }
            }
        }
        return WebpImageType.k;
    }

    public static WebpImageType b(InputStream inputStream, ArrayPool arrayPool) {
        if (inputStream == null) {
            return WebpImageType.k;
        }
        if (!inputStream.markSupported()) {
            inputStream = new RecyclableBufferedInputStream(inputStream, arrayPool);
        }
        inputStream.mark(21);
        try {
            return a(new StreamReader(inputStream));
        } finally {
            inputStream.reset();
        }
    }

    public static WebpImageType c(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return WebpImageType.k;
        }
        return a(new ByteBufferReader(byteBuffer));
    }

    public static boolean d(WebpImageType webpImageType) {
        if (webpImageType != WebpImageType.f2121c && webpImageType != WebpImageType.f && webpImageType != WebpImageType.g && webpImageType != WebpImageType.h && webpImageType != WebpImageType.i) {
            return false;
        }
        return true;
    }
}
