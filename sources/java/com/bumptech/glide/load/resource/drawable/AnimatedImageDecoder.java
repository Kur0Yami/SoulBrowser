package com.bumptech.glide.load.resource.drawable;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParserUtils;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.resource.DefaultOnHeaderDecodedListener;
import com.bumptech.glide.util.ByteBufferUtil;
import com.bumptech.glide.util.Util;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;

@RequiresApi
/* loaded from: classes.dex */
public final class AnimatedImageDecoder {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2391a;
    public final ArrayPool b;

    /* loaded from: classes.dex */
    public static final class AnimatedImageDrawableResource implements Resource<Drawable> {

        /* renamed from: c, reason: collision with root package name */
        public final AnimatedImageDrawable f2392c;

        public AnimatedImageDrawableResource(AnimatedImageDrawable animatedImageDrawable) {
            this.f2392c = animatedImageDrawable;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public final void a() {
            this.f2392c.stop();
            this.f2392c.clearAnimationCallbacks();
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public final Class c() {
            return Drawable.class;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public final Object get() {
            return this.f2392c;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public final int getSize() {
            return Util.d(Bitmap.Config.ARGB_8888) * this.f2392c.getIntrinsicHeight() * this.f2392c.getIntrinsicWidth() * 2;
        }
    }

    /* loaded from: classes.dex */
    public static final class ByteBufferAnimatedImageDecoder implements ResourceDecoder<ByteBuffer, Drawable> {

        /* renamed from: a, reason: collision with root package name */
        public final AnimatedImageDecoder f2393a;

        public ByteBufferAnimatedImageDecoder(AnimatedImageDecoder animatedImageDecoder) {
            this.f2393a = animatedImageDecoder;
        }

        @Override // com.bumptech.glide.load.ResourceDecoder
        public final boolean a(Object obj, Options options) {
            ImageHeaderParser.ImageType g = ImageHeaderParserUtils.g(this.f2393a.f2391a, (ByteBuffer) obj);
            if (g != ImageHeaderParser.ImageType.ANIMATED_WEBP) {
                if (Build.VERSION.SDK_INT < 31 || g != ImageHeaderParser.ImageType.ANIMATED_AVIF) {
                    return false;
                }
                return true;
            }
            return true;
        }

        @Override // com.bumptech.glide.load.ResourceDecoder
        public final Resource b(Object obj, int i, int i2, Options options) {
            return AnimatedImageDecoder.b(ImageDecoder.createSource((ByteBuffer) obj), i, i2, options);
        }
    }

    /* loaded from: classes.dex */
    public static final class StreamAnimatedImageDecoder implements ResourceDecoder<InputStream, Drawable> {

        /* renamed from: a, reason: collision with root package name */
        public final AnimatedImageDecoder f2394a;

        public StreamAnimatedImageDecoder(AnimatedImageDecoder animatedImageDecoder) {
            this.f2394a = animatedImageDecoder;
        }

        @Override // com.bumptech.glide.load.ResourceDecoder
        public final boolean a(Object obj, Options options) {
            AnimatedImageDecoder animatedImageDecoder = this.f2394a;
            ImageHeaderParser.ImageType f = ImageHeaderParserUtils.f(animatedImageDecoder.f2391a, (InputStream) obj, animatedImageDecoder.b);
            if (f != ImageHeaderParser.ImageType.ANIMATED_WEBP) {
                if (Build.VERSION.SDK_INT < 31 || f != ImageHeaderParser.ImageType.ANIMATED_AVIF) {
                    return false;
                }
                return true;
            }
            return true;
        }

        @Override // com.bumptech.glide.load.ResourceDecoder
        public final Resource b(Object obj, int i, int i2, Options options) {
            return AnimatedImageDecoder.b(ImageDecoder.createSource(ByteBufferUtil.b((InputStream) obj)), i, i2, options);
        }
    }

    public AnimatedImageDecoder(ArrayList arrayList, ArrayPool arrayPool) {
        this.f2391a = arrayList;
        this.b = arrayPool;
    }

    public static ResourceDecoder a(ArrayList arrayList, ArrayPool arrayPool) {
        return new ByteBufferAnimatedImageDecoder(new AnimatedImageDecoder(arrayList, arrayPool));
    }

    public static Resource b(ImageDecoder.Source source, int i, int i2, Options options) {
        Drawable decodeDrawable = ImageDecoder.decodeDrawable(source, new DefaultOnHeaderDecodedListener(i, i2, options));
        if (decodeDrawable instanceof AnimatedImageDrawable) {
            return new AnimatedImageDrawableResource((AnimatedImageDrawable) decodeDrawable);
        }
        throw new IOException("Received unexpected drawable type for animated image, failing: " + decodeDrawable);
    }

    public static ResourceDecoder c(ArrayList arrayList, ArrayPool arrayPool) {
        return new StreamAnimatedImageDecoder(new AnimatedImageDecoder(arrayList, arrayPool));
    }
}
