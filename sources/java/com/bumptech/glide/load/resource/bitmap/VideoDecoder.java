package com.bumptech.glide.load.resource.bitmap;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaDataSource;
import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.support.v4.media.a;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.core.provider.b;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import j$.util.DesugarCollections;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public class VideoDecoder<T> implements ResourceDecoder<T, Bitmap> {
    public static final Option d = new Option("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new Option.CacheKeyUpdater<Long>() { // from class: com.bumptech.glide.load.resource.bitmap.VideoDecoder.1

        /* renamed from: a, reason: collision with root package name */
        public final ByteBuffer f2386a = ByteBuffer.allocate(8);

        @Override // com.bumptech.glide.load.Option.CacheKeyUpdater
        public final void a(byte[] bArr, Object obj, MessageDigest messageDigest) {
            Long l = (Long) obj;
            messageDigest.update(bArr);
            synchronized (this.f2386a) {
                this.f2386a.position(0);
                messageDigest.update(this.f2386a.putLong(l.longValue()).array());
            }
        }
    });
    public static final Option e = new Option("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new Option.CacheKeyUpdater<Integer>() { // from class: com.bumptech.glide.load.resource.bitmap.VideoDecoder.2

        /* renamed from: a, reason: collision with root package name */
        public final ByteBuffer f2387a = ByteBuffer.allocate(4);

        @Override // com.bumptech.glide.load.Option.CacheKeyUpdater
        public final void a(byte[] bArr, Object obj, MessageDigest messageDigest) {
            Integer num = (Integer) obj;
            if (num == null) {
                return;
            }
            messageDigest.update(bArr);
            synchronized (this.f2387a) {
                this.f2387a.position(0);
                messageDigest.update(this.f2387a.putInt(num.intValue()).array());
            }
        }
    });
    public static final MediaMetadataRetrieverFactory f = new Object();
    public static final List g = DesugarCollections.unmodifiableList(Arrays.asList("TP1A", "TD1A.220804.031"));

    /* renamed from: a, reason: collision with root package name */
    public final MediaInitializer f2384a;
    public final BitmapPool b;

    /* renamed from: c, reason: collision with root package name */
    public final MediaMetadataRetrieverFactory f2385c = f;

    @RequiresApi
    /* loaded from: classes.dex */
    public static final class AssetFileDescriptorInitializer implements MediaInitializer<AssetFileDescriptor> {
        @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaInitializer
        public final void a(MediaExtractor mediaExtractor, Object obj) {
            AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) obj;
            mediaExtractor.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        }

        @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaInitializer
        public final void b(MediaMetadataRetriever mediaMetadataRetriever, Object obj) {
            AssetFileDescriptor assetFileDescriptor = (AssetFileDescriptor) obj;
            mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static final class ByteBufferInitializer implements MediaInitializer<ByteBuffer> {

        /* renamed from: com.bumptech.glide.load.resource.bitmap.VideoDecoder$ByteBufferInitializer$1, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 extends MediaDataSource {

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ByteBuffer f2388c;

            public AnonymousClass1(ByteBuffer byteBuffer) {
                this.f2388c = byteBuffer;
            }

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
            }

            @Override // android.media.MediaDataSource
            public final long getSize() {
                return this.f2388c.limit();
            }

            @Override // android.media.MediaDataSource
            public final int readAt(long j, byte[] bArr, int i, int i2) {
                ByteBuffer byteBuffer = this.f2388c;
                if (j >= byteBuffer.limit()) {
                    return -1;
                }
                byteBuffer.position((int) j);
                int min = Math.min(i2, byteBuffer.remaining());
                byteBuffer.get(bArr, i, min);
                return min;
            }
        }

        @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaInitializer
        public final void a(MediaExtractor mediaExtractor, Object obj) {
            mediaExtractor.setDataSource(new AnonymousClass1((ByteBuffer) obj));
        }

        @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaInitializer
        public final void b(MediaMetadataRetriever mediaMetadataRetriever, Object obj) {
            mediaMetadataRetriever.setDataSource(new AnonymousClass1((ByteBuffer) obj));
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public interface MediaInitializer<T> {
        void a(MediaExtractor mediaExtractor, Object obj);

        void b(MediaMetadataRetriever mediaMetadataRetriever, Object obj);
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class MediaMetadataRetrieverFactory {
    }

    /* loaded from: classes.dex */
    public static final class ParcelFileDescriptorInitializer implements MediaInitializer<ParcelFileDescriptor> {
        @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaInitializer
        public final void a(MediaExtractor mediaExtractor, Object obj) {
            mediaExtractor.setDataSource(((ParcelFileDescriptor) obj).getFileDescriptor());
        }

        @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.MediaInitializer
        public final void b(MediaMetadataRetriever mediaMetadataRetriever, Object obj) {
            mediaMetadataRetriever.setDataSource(((ParcelFileDescriptor) obj).getFileDescriptor());
        }
    }

    /* loaded from: classes.dex */
    public static final class VideoDecoderException extends RuntimeException {
    }

    public VideoDecoder(BitmapPool bitmapPool, MediaInitializer mediaInitializer) {
        this.b = bitmapPool;
        this.f2384a = mediaInitializer;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.bumptech.glide.load.resource.bitmap.VideoDecoder$MediaInitializer, java.lang.Object] */
    public static VideoDecoder c(BitmapPool bitmapPool) {
        return new VideoDecoder(bitmapPool, new Object());
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.bumptech.glide.load.resource.bitmap.VideoDecoder$MediaInitializer, java.lang.Object] */
    public static VideoDecoder d(BitmapPool bitmapPool) {
        return new VideoDecoder(bitmapPool, new Object());
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.bumptech.glide.load.resource.bitmap.VideoDecoder$MediaInitializer, java.lang.Object] */
    public static VideoDecoder f(BitmapPool bitmapPool) {
        return new VideoDecoder(bitmapPool, new Object());
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final boolean a(Object obj, Options options) {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.load.ResourceDecoder
    public final Resource b(Object obj, int i, int i2, Options options) {
        long longValue = ((Long) options.c(d)).longValue();
        if (longValue < 0 && longValue != -1) {
            throw new IllegalArgumentException(a.h(longValue, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "));
        }
        Integer num = (Integer) options.c(e);
        if (num == null) {
            num = 2;
        }
        DownsampleStrategy downsampleStrategy = (DownsampleStrategy) options.c(DownsampleStrategy.f);
        if (downsampleStrategy == null) {
            downsampleStrategy = DownsampleStrategy.e;
        }
        DownsampleStrategy downsampleStrategy2 = downsampleStrategy;
        this.f2385c.getClass();
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            this.f2384a.b(mediaMetadataRetriever, obj);
            try {
                Bitmap e2 = e(obj, mediaMetadataRetriever, longValue, num.intValue(), i, i2, downsampleStrategy2);
                if (Build.VERSION.SDK_INT >= 29) {
                    if (mediaMetadataRetriever instanceof AutoCloseable) {
                        mediaMetadataRetriever.close();
                    } else if (mediaMetadataRetriever instanceof ExecutorService) {
                        b.f((ExecutorService) mediaMetadataRetriever);
                    } else {
                        mediaMetadataRetriever.release();
                    }
                } else {
                    mediaMetadataRetriever.release();
                }
                return BitmapResource.b(e2, this.b);
            } catch (Throwable th) {
                th = th;
                Throwable th2 = th;
                if (Build.VERSION.SDK_INT >= 29) {
                    if (!(mediaMetadataRetriever instanceof AutoCloseable)) {
                        if (!(mediaMetadataRetriever instanceof ExecutorService)) {
                            mediaMetadataRetriever.release();
                            throw th2;
                        }
                        b.f((ExecutorService) mediaMetadataRetriever);
                        throw th2;
                    }
                    mediaMetadataRetriever.close();
                    throw th2;
                }
                mediaMetadataRetriever.release();
                throw th2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:1|(4:5|6|7|(1:9)(6:10|11|12|(2:14|(1:16)(3:17|18|19))|22|23))|38|(5:45|46|47|(1:53)|51)|(1:59)|60|(3:93|(0)|(1:76)(2:77|78))(4:64|(3:67|(1:69)(1:91)|65)|92|(0)(0))|70|71|72|(3:80|81|(3:83|(1:85)|86))|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006d, code lost:
    
        if (r5 != null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x017d, code lost:
    
        if (android.util.Log.isLoggable("VideoDecoder", 3) != false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x017f, code lost:
    
        android.util.Log.d("VideoDecoder", "Exception trying to extract HDR transfer function or rotation");
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x010c, code lost:
    
        if (r0 < 33) goto L68;
     */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0186 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0187  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap e(java.lang.Object r14, android.media.MediaMetadataRetriever r15, long r16, int r18, int r19, int r20, com.bumptech.glide.load.resource.bitmap.DownsampleStrategy r21) {
        /*
            Method dump skipped, instructions count: 399
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.VideoDecoder.e(java.lang.Object, android.media.MediaMetadataRetriever, long, int, int, int, com.bumptech.glide.load.resource.bitmap.DownsampleStrategy):android.graphics.Bitmap");
    }
}
