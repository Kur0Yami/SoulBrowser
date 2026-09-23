package com.bumptech.glide.integration.webp.decoder;

/* loaded from: classes.dex */
public final class WebpFrameCacheStrategy {
    public static final WebpFrameCacheStrategy b;

    /* renamed from: c, reason: collision with root package name */
    public static final WebpFrameCacheStrategy f2139c;

    /* renamed from: a, reason: collision with root package name */
    public CacheControl f2140a;

    /* loaded from: classes.dex */
    public static final class Builder {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class CacheControl {

        /* renamed from: c, reason: collision with root package name */
        public static final CacheControl f2141c;
        public static final CacheControl f;
        public static final CacheControl g;
        public static final /* synthetic */ CacheControl[] h;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.bumptech.glide.integration.webp.decoder.WebpFrameCacheStrategy$CacheControl, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r3v1, types: [com.bumptech.glide.integration.webp.decoder.WebpFrameCacheStrategy$CacheControl, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r5v1, types: [com.bumptech.glide.integration.webp.decoder.WebpFrameCacheStrategy$CacheControl, java.lang.Enum] */
        static {
            ?? r0 = new Enum("CACHE_NONE", 0);
            f2141c = r0;
            Enum r1 = new Enum("CACHE_LIMITED", 1);
            ?? r3 = new Enum("CACHE_AUTO", 2);
            f = r3;
            ?? r5 = new Enum("CACHE_ALL", 3);
            g = r5;
            h = new CacheControl[]{r0, r1, r3, r5};
        }

        public static CacheControl valueOf(String str) {
            return (CacheControl) Enum.valueOf(CacheControl.class, str);
        }

        public static CacheControl[] values() {
            return (CacheControl[]) h.clone();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.bumptech.glide.integration.webp.decoder.WebpFrameCacheStrategy, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.bumptech.glide.integration.webp.decoder.WebpFrameCacheStrategy, java.lang.Object] */
    static {
        ?? obj = new Object();
        obj.f2140a = CacheControl.f2141c;
        b = obj;
        ?? obj2 = new Object();
        obj2.f2140a = CacheControl.f;
        f2139c = obj2;
    }
}
