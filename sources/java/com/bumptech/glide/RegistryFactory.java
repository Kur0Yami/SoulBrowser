package com.bumptech.glide;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.GlideBuilder;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.data.InputStreamRewinder;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.model.AssetUriLoader;
import com.bumptech.glide.load.model.DataUrlLoader;
import com.bumptech.glide.load.model.DirectResourceLoader;
import com.bumptech.glide.load.model.FileLoader;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.MediaStoreFileLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.ModelLoaderRegistry;
import com.bumptech.glide.load.model.ResourceLoader;
import com.bumptech.glide.load.model.ResourceUriLoader;
import com.bumptech.glide.load.model.StreamEncoder;
import com.bumptech.glide.load.model.UnitModelLoader;
import com.bumptech.glide.load.model.UriLoader;
import com.bumptech.glide.load.model.stream.HttpGlideUrlLoader;
import com.bumptech.glide.load.model.stream.MediaStoreImageThumbLoader;
import com.bumptech.glide.load.model.stream.MediaStoreVideoThumbLoader;
import com.bumptech.glide.load.model.stream.QMediaStoreUriLoader;
import com.bumptech.glide.load.resource.bitmap.BitmapDrawableDecoder;
import com.bumptech.glide.load.resource.bitmap.BitmapDrawableEncoder;
import com.bumptech.glide.load.resource.bitmap.BitmapEncoder;
import com.bumptech.glide.load.resource.bitmap.ByteBufferBitmapDecoder;
import com.bumptech.glide.load.resource.bitmap.ByteBufferBitmapImageDecoderResourceDecoder;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.load.resource.bitmap.InputStreamBitmapImageDecoderResourceDecoder;
import com.bumptech.glide.load.resource.bitmap.ParcelFileDescriptorBitmapDecoder;
import com.bumptech.glide.load.resource.bitmap.ResourceBitmapDecoder;
import com.bumptech.glide.load.resource.bitmap.StreamBitmapDecoder;
import com.bumptech.glide.load.resource.bitmap.VideoDecoder;
import com.bumptech.glide.load.resource.drawable.AnimatedImageDecoder;
import com.bumptech.glide.load.resource.drawable.ResourceDrawableDecoder;
import com.bumptech.glide.load.resource.gif.ByteBufferGifDecoder;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gif.GifFrameResourceDecoder;
import com.bumptech.glide.load.resource.gif.StreamGifDecoder;
import com.bumptech.glide.load.resource.transcode.BitmapBytesTranscoder;
import com.bumptech.glide.load.resource.transcode.BitmapDrawableTranscoder;
import com.bumptech.glide.load.resource.transcode.DrawableBytesTranscoder;
import com.bumptech.glide.load.resource.transcode.TranscoderRegistry;
import com.bumptech.glide.module.AppGlideModule;
import com.bumptech.glide.module.GlideModule;
import com.bumptech.glide.provider.EncoderRegistry;
import com.bumptech.glide.provider.ImageHeaderParserRegistry;
import com.bumptech.glide.provider.ResourceDecoderRegistry;
import com.bumptech.glide.provider.ResourceEncoderRegistry;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
final class RegistryFactory {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [java.lang.Object, com.bumptech.glide.load.model.ModelLoaderFactory] */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.lang.Object, com.bumptech.glide.load.model.ModelLoaderFactory] */
    /* JADX WARN: Type inference failed for: r0v15, types: [com.bumptech.glide.load.ResourceDecoder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.Object, com.bumptech.glide.load.model.ModelLoaderFactory] */
    /* JADX WARN: Type inference failed for: r14v11, types: [com.bumptech.glide.load.ResourceDecoder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v8, types: [java.lang.Object, com.bumptech.glide.load.data.DataRewinder$Factory] */
    /* JADX WARN: Type inference failed for: r14v9, types: [java.lang.Object, com.bumptech.glide.load.model.ModelLoaderFactory] */
    /* JADX WARN: Type inference failed for: r1v11, types: [com.bumptech.glide.load.ImageHeaderParser, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.lang.Object, com.bumptech.glide.load.model.ModelLoaderFactory] */
    /* JADX WARN: Type inference failed for: r2v18, types: [java.lang.Object, com.bumptech.glide.load.model.ModelLoaderFactory] */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.lang.Object, com.bumptech.glide.load.model.ModelLoaderFactory] */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.lang.Object, com.bumptech.glide.load.model.ModelLoaderFactory] */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.lang.Object, com.bumptech.glide.load.data.DataRewinder$Factory] */
    /* JADX WARN: Type inference failed for: r4v10, types: [com.bumptech.glide.load.ResourceEncoder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v2, types: [com.bumptech.glide.load.resource.transcode.ResourceTranscoder, com.bumptech.glide.load.resource.transcode.GifDrawableBytesTranscoder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.Object, com.bumptech.glide.load.Encoder] */
    /* JADX WARN: Type inference failed for: r6v2, types: [com.bumptech.glide.load.ResourceDecoder, java.lang.Object] */
    public static Registry a(Glide glide, List list, AppGlideModule appGlideModule) {
        ResourceDecoder byteBufferBitmapDecoder;
        ResourceDecoder streamBitmapDecoder;
        Class cls;
        BitmapPool bitmapPool = glide.f;
        ArrayPool arrayPool = glide.i;
        GlideContext glideContext = glide.h;
        Context applicationContext = glideContext.getApplicationContext();
        GlideExperiments glideExperiments = glideContext.h;
        Registry registry = new Registry();
        EncoderRegistry encoderRegistry = registry.b;
        Object obj = new Object();
        ImageHeaderParserRegistry imageHeaderParserRegistry = registry.g;
        synchronized (imageHeaderParserRegistry) {
            imageHeaderParserRegistry.f2447a.add(obj);
        }
        TranscoderRegistry transcoderRegistry = registry.f;
        ResourceEncoderRegistry resourceEncoderRegistry = registry.d;
        ResourceDecoderRegistry resourceDecoderRegistry = registry.f2090c;
        ModelLoaderRegistry modelLoaderRegistry = registry.f2089a;
        int i = Build.VERSION.SDK_INT;
        if (i >= 27) {
            registry.d(new Object());
        }
        Resources resources = applicationContext.getResources();
        ArrayList b = registry.b();
        ByteBufferGifDecoder byteBufferGifDecoder = new ByteBufferGifDecoder(applicationContext, b, bitmapPool, arrayPool);
        VideoDecoder f = VideoDecoder.f(bitmapPool);
        Downsampler downsampler = new Downsampler(registry.b(), resources.getDisplayMetrics(), bitmapPool, arrayPool);
        if (i >= 28 && glideExperiments.f2082a.containsKey(GlideBuilder.EnableImageDecoderForBitmaps.class)) {
            streamBitmapDecoder = new InputStreamBitmapImageDecoderResourceDecoder();
            byteBufferBitmapDecoder = new ByteBufferBitmapImageDecoderResourceDecoder();
        } else {
            byteBufferBitmapDecoder = new ByteBufferBitmapDecoder(downsampler);
            streamBitmapDecoder = new StreamBitmapDecoder(downsampler, arrayPool);
        }
        if (i >= 28) {
            registry.a(AnimatedImageDecoder.c(b, arrayPool), InputStream.class, Drawable.class, "Animation");
            registry.a(AnimatedImageDecoder.a(b, arrayPool), ByteBuffer.class, Drawable.class, "Animation");
        }
        ResourceDrawableDecoder resourceDrawableDecoder = new ResourceDrawableDecoder(applicationContext);
        BitmapEncoder bitmapEncoder = new BitmapEncoder(arrayPool);
        BitmapBytesTranscoder bitmapBytesTranscoder = new BitmapBytesTranscoder();
        ?? obj2 = new Object();
        ContentResolver contentResolver = applicationContext.getContentResolver();
        encoderRegistry.a(ByteBuffer.class, new Object());
        encoderRegistry.a(InputStream.class, new StreamEncoder(arrayPool));
        resourceDecoderRegistry.a(byteBufferBitmapDecoder, ByteBuffer.class, Bitmap.class, "Bitmap");
        registry.a(streamBitmapDecoder, InputStream.class, Bitmap.class, "Bitmap");
        String str = Build.FINGERPRINT;
        if ("robolectric".equals(str)) {
            cls = ParcelFileDescriptor.class;
        } else {
            ParcelFileDescriptorBitmapDecoder parcelFileDescriptorBitmapDecoder = new ParcelFileDescriptorBitmapDecoder(downsampler);
            cls = ParcelFileDescriptor.class;
            registry.a(parcelFileDescriptorBitmapDecoder, cls, Bitmap.class, "Bitmap");
        }
        registry.a(VideoDecoder.c(bitmapPool), AssetFileDescriptor.class, Bitmap.class, "Bitmap");
        resourceDecoderRegistry.a(f, cls, Bitmap.class, "Bitmap");
        UnitModelLoader.Factory factory = UnitModelLoader.Factory.f2323a;
        modelLoaderRegistry.a(Bitmap.class, Bitmap.class, factory);
        resourceDecoderRegistry.a(new Object(), Bitmap.class, Bitmap.class, "Bitmap");
        resourceEncoderRegistry.a(Bitmap.class, bitmapEncoder);
        resourceDecoderRegistry.a(new BitmapDrawableDecoder(resources, byteBufferBitmapDecoder), ByteBuffer.class, BitmapDrawable.class, "BitmapDrawable");
        resourceDecoderRegistry.a(new BitmapDrawableDecoder(resources, streamBitmapDecoder), InputStream.class, BitmapDrawable.class, "BitmapDrawable");
        resourceDecoderRegistry.a(new BitmapDrawableDecoder(resources, f), cls, BitmapDrawable.class, "BitmapDrawable");
        resourceEncoderRegistry.a(BitmapDrawable.class, new BitmapDrawableEncoder(bitmapPool, bitmapEncoder));
        resourceDecoderRegistry.a(new StreamGifDecoder(b, byteBufferGifDecoder, arrayPool), InputStream.class, GifDrawable.class, "Animation");
        resourceDecoderRegistry.a(byteBufferGifDecoder, ByteBuffer.class, GifDrawable.class, "Animation");
        resourceEncoderRegistry.a(GifDrawable.class, new Object());
        modelLoaderRegistry.a(GifDecoder.class, GifDecoder.class, factory);
        resourceDecoderRegistry.a(new GifFrameResourceDecoder(bitmapPool), GifDecoder.class, Bitmap.class, "Bitmap");
        registry.a(resourceDrawableDecoder, Uri.class, Drawable.class, "legacy_append");
        registry.a(new ResourceBitmapDecoder(resourceDrawableDecoder, bitmapPool), Uri.class, Bitmap.class, "legacy_append");
        registry.e(new Object());
        modelLoaderRegistry.a(File.class, ByteBuffer.class, new Object());
        modelLoaderRegistry.a(File.class, InputStream.class, new FileLoader.StreamFactory());
        registry.a(new Object(), File.class, File.class, "legacy_append");
        modelLoaderRegistry.a(File.class, cls, new FileLoader.FileDescriptorFactory());
        modelLoaderRegistry.a(File.class, File.class, factory);
        registry.e(new InputStreamRewinder.Factory(arrayPool));
        if (!"robolectric".equals(str)) {
            registry.e(new Object());
        }
        ModelLoaderFactory e = DirectResourceLoader.e(applicationContext);
        ModelLoaderFactory c2 = DirectResourceLoader.c(applicationContext);
        ModelLoaderFactory d = DirectResourceLoader.d(applicationContext);
        Class cls2 = Integer.TYPE;
        modelLoaderRegistry.a(cls2, InputStream.class, e);
        modelLoaderRegistry.a(Integer.class, InputStream.class, e);
        modelLoaderRegistry.a(cls2, AssetFileDescriptor.class, c2);
        modelLoaderRegistry.a(Integer.class, AssetFileDescriptor.class, c2);
        modelLoaderRegistry.a(cls2, Drawable.class, d);
        modelLoaderRegistry.a(Integer.class, Drawable.class, d);
        modelLoaderRegistry.a(Uri.class, InputStream.class, ResourceUriLoader.d(applicationContext));
        registry.f2089a.a(Uri.class, AssetFileDescriptor.class, ResourceUriLoader.c(applicationContext));
        ResourceLoader.UriFactory uriFactory = new ResourceLoader.UriFactory(resources);
        ResourceLoader.AssetFileDescriptorFactory assetFileDescriptorFactory = new ResourceLoader.AssetFileDescriptorFactory(resources);
        ResourceLoader.StreamFactory streamFactory = new ResourceLoader.StreamFactory(resources);
        modelLoaderRegistry.a(Integer.class, Uri.class, uriFactory);
        modelLoaderRegistry.a(cls2, Uri.class, uriFactory);
        modelLoaderRegistry.a(Integer.class, AssetFileDescriptor.class, assetFileDescriptorFactory);
        modelLoaderRegistry.a(cls2, AssetFileDescriptor.class, assetFileDescriptorFactory);
        modelLoaderRegistry.a(Integer.class, InputStream.class, streamFactory);
        registry.f2089a.a(cls2, InputStream.class, streamFactory);
        modelLoaderRegistry.a(String.class, InputStream.class, new DataUrlLoader.StreamFactory());
        modelLoaderRegistry.a(Uri.class, InputStream.class, new DataUrlLoader.StreamFactory());
        modelLoaderRegistry.a(String.class, InputStream.class, new Object());
        modelLoaderRegistry.a(String.class, cls, new Object());
        modelLoaderRegistry.a(String.class, AssetFileDescriptor.class, new Object());
        modelLoaderRegistry.a(Uri.class, InputStream.class, new AssetUriLoader.StreamFactory(applicationContext.getAssets()));
        modelLoaderRegistry.a(Uri.class, AssetFileDescriptor.class, new AssetUriLoader.FileDescriptorFactory(applicationContext.getAssets()));
        modelLoaderRegistry.a(Uri.class, InputStream.class, new MediaStoreImageThumbLoader.Factory(applicationContext));
        registry.f2089a.a(Uri.class, InputStream.class, new MediaStoreVideoThumbLoader.Factory(applicationContext));
        if (i >= 29) {
            registry.f2089a.a(Uri.class, InputStream.class, new QMediaStoreUriLoader.InputStreamFactory(applicationContext));
            registry.f2089a.a(Uri.class, cls, new QMediaStoreUriLoader.FileDescriptorFactory(applicationContext));
        }
        boolean containsKey = glideExperiments.f2082a.containsKey(GlideBuilder.UseMediaStoreOpenFileApisIfPossible.class);
        modelLoaderRegistry.a(Uri.class, InputStream.class, new UriLoader.StreamFactory(contentResolver, containsKey));
        modelLoaderRegistry.a(Uri.class, cls, new UriLoader.FileDescriptorFactory(contentResolver, containsKey));
        modelLoaderRegistry.a(Uri.class, AssetFileDescriptor.class, new UriLoader.AssetFileDescriptorFactory(contentResolver, containsKey));
        modelLoaderRegistry.a(Uri.class, InputStream.class, new Object());
        modelLoaderRegistry.a(URL.class, InputStream.class, new Object());
        modelLoaderRegistry.a(Uri.class, File.class, new MediaStoreFileLoader.Factory(applicationContext));
        modelLoaderRegistry.a(GlideUrl.class, InputStream.class, new HttpGlideUrlLoader.Factory());
        modelLoaderRegistry.a(byte[].class, ByteBuffer.class, new Object());
        modelLoaderRegistry.a(byte[].class, InputStream.class, new Object());
        modelLoaderRegistry.a(Uri.class, Uri.class, factory);
        modelLoaderRegistry.a(Drawable.class, Drawable.class, factory);
        registry.a(new Object(), Drawable.class, Drawable.class, "legacy_append");
        transcoderRegistry.c(Bitmap.class, BitmapDrawable.class, new BitmapDrawableTranscoder(resources));
        transcoderRegistry.c(Bitmap.class, byte[].class, bitmapBytesTranscoder);
        transcoderRegistry.c(Drawable.class, byte[].class, new DrawableBytesTranscoder(bitmapPool, bitmapBytesTranscoder, obj2));
        registry.f.c(GifDrawable.class, byte[].class, obj2);
        VideoDecoder d2 = VideoDecoder.d(bitmapPool);
        registry.a(d2, ByteBuffer.class, Bitmap.class, "legacy_append");
        registry.a(new BitmapDrawableDecoder(resources, d2), ByteBuffer.class, BitmapDrawable.class, "legacy_append");
        Iterator it = list.iterator();
        while (it.hasNext()) {
            GlideModule glideModule = (GlideModule) it.next();
            try {
                glideModule.a(applicationContext, glide, registry);
            } catch (AbstractMethodError e2) {
                throw new IllegalStateException("Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you're using Glide v4. You'll need to find and remove (or update) the offending dependency. The v3 module name is: ".concat(glideModule.getClass().getName()), e2);
            }
        }
        if (appGlideModule != null) {
            appGlideModule.a(applicationContext, glide, registry);
        }
        return registry;
    }
}
