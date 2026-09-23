package com.bumptech.glide.load.resource.bitmap;

import com.bumptech.glide.load.Option;

/* loaded from: classes.dex */
public abstract class DownsampleStrategy {

    /* renamed from: a, reason: collision with root package name */
    public static final DownsampleStrategy f2357a = new Object();
    public static final DownsampleStrategy b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static final DownsampleStrategy f2358c;
    public static final DownsampleStrategy d;
    public static final DownsampleStrategy e;
    public static final Option f;
    public static final boolean g;

    /* loaded from: classes.dex */
    public static class AtLeast extends DownsampleStrategy {
        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public final SampleSizeRounding a(int i, int i2, int i3, int i4) {
            return SampleSizeRounding.f;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public final float b(int i, int i2, int i3, int i4) {
            if (Math.min(i2 / i4, i / i3) == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(r1);
        }
    }

    /* loaded from: classes.dex */
    public static class AtMost extends DownsampleStrategy {
        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public final SampleSizeRounding a(int i, int i2, int i3, int i4) {
            return SampleSizeRounding.f2359c;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public final float b(int i, int i2, int i3, int i4) {
            int ceil = (int) Math.ceil(Math.max(i2 / i4, i / i3));
            int i5 = 1;
            if (Math.max(1, Integer.highestOneBit(ceil)) >= ceil) {
                i5 = 0;
            }
            return 1.0f / (r2 << i5);
        }
    }

    /* loaded from: classes.dex */
    public static class CenterInside extends DownsampleStrategy {
        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public final SampleSizeRounding a(int i, int i2, int i3, int i4) {
            if (b(i, i2, i3, i4) == 1.0f) {
                return SampleSizeRounding.f;
            }
            return DownsampleStrategy.f2357a.a(i, i2, i3, i4);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public final float b(int i, int i2, int i3, int i4) {
            return Math.min(1.0f, DownsampleStrategy.f2357a.b(i, i2, i3, i4));
        }
    }

    /* loaded from: classes.dex */
    public static class CenterOutside extends DownsampleStrategy {
        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public final SampleSizeRounding a(int i, int i2, int i3, int i4) {
            return SampleSizeRounding.f;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public final float b(int i, int i2, int i3, int i4) {
            return Math.max(i3 / i, i4 / i2);
        }
    }

    /* loaded from: classes.dex */
    public static class FitCenter extends DownsampleStrategy {
        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public final SampleSizeRounding a(int i, int i2, int i3, int i4) {
            if (DownsampleStrategy.g) {
                return SampleSizeRounding.f;
            }
            return SampleSizeRounding.f2359c;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public final float b(int i, int i2, int i3, int i4) {
            if (DownsampleStrategy.g) {
                return Math.min(i3 / i, i4 / i2);
            }
            if (Math.max(i2 / i4, i / i3) == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(r2);
        }
    }

    /* loaded from: classes.dex */
    public static class None extends DownsampleStrategy {
        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public final SampleSizeRounding a(int i, int i2, int i3, int i4) {
            return SampleSizeRounding.f;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.DownsampleStrategy
        public final float b(int i, int i2, int i3, int i4) {
            return 1.0f;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class SampleSizeRounding {

        /* renamed from: c, reason: collision with root package name */
        public static final SampleSizeRounding f2359c;
        public static final SampleSizeRounding f;
        public static final /* synthetic */ SampleSizeRounding[] g;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.bumptech.glide.load.resource.bitmap.DownsampleStrategy$SampleSizeRounding, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r1v1, types: [com.bumptech.glide.load.resource.bitmap.DownsampleStrategy$SampleSizeRounding, java.lang.Enum] */
        static {
            ?? r0 = new Enum("MEMORY", 0);
            f2359c = r0;
            ?? r1 = new Enum("QUALITY", 1);
            f = r1;
            g = new SampleSizeRounding[]{r0, r1};
        }

        public static SampleSizeRounding valueOf(String str) {
            return (SampleSizeRounding) Enum.valueOf(SampleSizeRounding.class, str);
        }

        public static SampleSizeRounding[] values() {
            return (SampleSizeRounding[]) g.clone();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.bumptech.glide.load.resource.bitmap.DownsampleStrategy, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.bumptech.glide.load.resource.bitmap.DownsampleStrategy, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.bumptech.glide.load.resource.bitmap.DownsampleStrategy, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.bumptech.glide.load.resource.bitmap.DownsampleStrategy, java.lang.Object] */
    static {
        ?? obj = new Object();
        f2358c = obj;
        d = new Object();
        e = obj;
        f = Option.a(obj, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy");
        g = true;
    }

    public abstract SampleSizeRounding a(int i, int i2, int i3, int i4);

    public abstract float b(int i, int i2, int i3, int i4);
}
