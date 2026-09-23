package com.bumptech.glide.integration.webp;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Registry;
import com.bumptech.glide.integration.webp.decoder.AnimatedWebpBitmapDecoder;
import com.bumptech.glide.integration.webp.decoder.ByteBufferAnimatedBitmapDecoder;
import com.bumptech.glide.integration.webp.decoder.ByteBufferBitmapWebpDecoder;
import com.bumptech.glide.integration.webp.decoder.ByteBufferWebpDecoder;
import com.bumptech.glide.integration.webp.decoder.StreamAnimatedBitmapDecoder;
import com.bumptech.glide.integration.webp.decoder.StreamBitmapWebpDecoder;
import com.bumptech.glide.integration.webp.decoder.StreamWebpDecoder;
import com.bumptech.glide.integration.webp.decoder.WebpDownsampler;
import com.bumptech.glide.integration.webp.decoder.WebpDrawable;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapDrawableDecoder;
import com.bumptech.glide.module.GlideModule;
import com.bumptech.glide.provider.ResourceDecoderRegistry;
import java.io.InputStream;
import java.nio.ByteBuffer;

@Deprecated
/* loaded from: classes.dex */
public class WebpGlideModule implements GlideModule {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v2, types: [com.bumptech.glide.integration.webp.decoder.WebpDrawableEncoder, java.lang.Object] */
    @Override // com.bumptech.glide.module.GlideModule
    public final void a(Context context, Glide glide, Registry registry) {
        Resources resources = context.getResources();
        BitmapPool bitmapPool = glide.f;
        ArrayPool arrayPool = glide.i;
        WebpDownsampler webpDownsampler = new WebpDownsampler(registry.b(), resources.getDisplayMetrics(), bitmapPool, arrayPool);
        AnimatedWebpBitmapDecoder animatedWebpBitmapDecoder = new AnimatedWebpBitmapDecoder(arrayPool, bitmapPool);
        ByteBufferBitmapWebpDecoder byteBufferBitmapWebpDecoder = new ByteBufferBitmapWebpDecoder(webpDownsampler);
        StreamBitmapWebpDecoder streamBitmapWebpDecoder = new StreamBitmapWebpDecoder(webpDownsampler, arrayPool);
        ByteBufferWebpDecoder byteBufferWebpDecoder = new ByteBufferWebpDecoder(context, arrayPool, bitmapPool);
        ResourceDecoderRegistry resourceDecoderRegistry = registry.f2090c;
        resourceDecoderRegistry.e(byteBufferBitmapWebpDecoder, ByteBuffer.class, Bitmap.class, "Bitmap");
        resourceDecoderRegistry.e(streamBitmapWebpDecoder, InputStream.class, Bitmap.class, "Bitmap");
        resourceDecoderRegistry.e(new BitmapDrawableDecoder(resources, byteBufferBitmapWebpDecoder), ByteBuffer.class, BitmapDrawable.class, "BitmapDrawable");
        resourceDecoderRegistry.e(new BitmapDrawableDecoder(resources, streamBitmapWebpDecoder), InputStream.class, BitmapDrawable.class, "BitmapDrawable");
        resourceDecoderRegistry.e(new ByteBufferAnimatedBitmapDecoder(animatedWebpBitmapDecoder), ByteBuffer.class, Bitmap.class, "Bitmap");
        resourceDecoderRegistry.e(new StreamAnimatedBitmapDecoder(animatedWebpBitmapDecoder), InputStream.class, Bitmap.class, "Bitmap");
        resourceDecoderRegistry.e(byteBufferWebpDecoder, ByteBuffer.class, WebpDrawable.class, "legacy_prepend_all");
        resourceDecoderRegistry.e(new StreamWebpDecoder(byteBufferWebpDecoder, arrayPool), InputStream.class, WebpDrawable.class, "legacy_prepend_all");
        registry.d.c(new Object());
    }
}
