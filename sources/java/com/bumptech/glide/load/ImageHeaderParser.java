package com.bumptech.glide.load;

import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public interface ImageHeaderParser {

    /* renamed from: com.bumptech.glide.load.ImageHeaderParser$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2149a;

        static {
            int[] iArr = new int[ImageType.values().length];
            f2149a = iArr;
            try {
                iArr[ImageType.WEBP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2149a[ImageType.WEBP_A.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2149a[ImageType.ANIMATED_WEBP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes.dex */
    public enum ImageType {
        GIF(true),
        JPEG(false),
        RAW(false),
        PNG_A(true),
        PNG(false),
        WEBP_A(true),
        WEBP(false),
        ANIMATED_WEBP(true),
        AVIF(true),
        ANIMATED_AVIF(true),
        UNKNOWN(false);


        /* renamed from: c, reason: collision with root package name */
        public final boolean f2150c;

        ImageType(boolean z) {
            this.f2150c = z;
        }

        public boolean hasAlpha() {
            return this.f2150c;
        }

        public boolean isWebp() {
            int i = AnonymousClass1.f2149a[ordinal()];
            if (i == 1 || i == 2 || i == 3) {
                return true;
            }
            return false;
        }
    }

    ImageType a(ByteBuffer byteBuffer);

    boolean b(ByteBuffer byteBuffer, ArrayPool arrayPool);

    int c(ByteBuffer byteBuffer, ArrayPool arrayPool);

    ImageType d(InputStream inputStream);

    int e(InputStream inputStream, ArrayPool arrayPool);

    boolean f(InputStream inputStream, ArrayPool arrayPool);
}
