package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Gainmap;
import android.graphics.Paint;
import android.os.Build;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.resource.bitmap.ImageReader;
import com.bumptech.glide.util.GlideSuppliers;
import com.bumptech.glide.util.Preconditions;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
final class GlideBitmapFactory {

    @RequiresApi
    /* loaded from: classes.dex */
    public static final class GainmapCopier {

        /* renamed from: a, reason: collision with root package name */
        public static final ColorMatrixColorFilter f2364a = new ColorMatrixColorFilter(new float[]{0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 255.0f});
    }

    /* loaded from: classes.dex */
    public static final class GainmapDecoderWorkaroundStateCalculator {

        /* renamed from: a, reason: collision with root package name */
        public static final GlideSuppliers.GlideSupplier f2365a = GlideSuppliers.a(new Object());

        public static Boolean a() {
            boolean z = false;
            if (Build.VERSION.SDK_INT == 34) {
                Bitmap createBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ALPHA_8);
                Bitmap copy = createBitmap.copy(Bitmap.Config.HARDWARE, false);
                createBitmap.recycle();
                if (copy == null) {
                    z = true;
                }
                if (Log.isLoggable("GainmapWorkaroundCalc", 2)) {
                    Log.v("GainmapWorkaroundCalc", "calculateNeedsGainmapDecodeWorkaround=" + z);
                }
                if (copy != null) {
                    copy.recycle();
                }
            }
            return Boolean.valueOf(z);
        }

        public static boolean b(BitmapFactory.Options options) {
            Bitmap.Config config;
            if (Build.VERSION.SDK_INT == 34) {
                Bitmap.Config config2 = options.inPreferredConfig;
                config = Bitmap.Config.HARDWARE;
                if (config2 != config) {
                    return false;
                }
                return ((Boolean) f2365a.get()).booleanValue();
            }
            return false;
        }
    }

    public static Bitmap a(BitmapFactory.Options options, ImageReader.ByteArrayReader byteArrayReader) {
        boolean z;
        if (Build.VERSION.SDK_INT == 34) {
            if (GainmapDecoderWorkaroundStateCalculator.b(options)) {
                if (d(byteArrayReader)) {
                    Bitmap.Config config = options.inPreferredConfig;
                    Bitmap.Config config2 = Bitmap.Config.HARDWARE;
                    if (config == config2) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Preconditions.a(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, z);
                    options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                    try {
                        throw null;
                    } catch (Throwable th) {
                        options.inPreferredConfig = config2;
                        throw th;
                    }
                }
                throw null;
            }
            throw null;
        }
        throw null;
    }

    public static Bitmap b(FileDescriptor fileDescriptor, BitmapFactory.Options options, ImageReader.ParcelFileDescriptorImageReader parcelFileDescriptorImageReader) {
        boolean z;
        Bitmap bitmap = null;
        if (Build.VERSION.SDK_INT == 34 && GainmapDecoderWorkaroundStateCalculator.b(options) && d(parcelFileDescriptorImageReader)) {
            Bitmap.Config config = options.inPreferredConfig;
            Bitmap.Config config2 = Bitmap.Config.HARDWARE;
            if (config == config2) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.a(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, z);
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            try {
                Bitmap decodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
                if (decodeFileDescriptor == null) {
                    if (decodeFileDescriptor != null) {
                        decodeFileDescriptor.recycle();
                    }
                    options.inPreferredConfig = config2;
                    return null;
                }
                try {
                    Bitmap e = e(decodeFileDescriptor);
                    decodeFileDescriptor.recycle();
                    options.inPreferredConfig = config2;
                    return e;
                } catch (Throwable th) {
                    th = th;
                    bitmap = decodeFileDescriptor;
                    if (bitmap != null) {
                        bitmap.recycle();
                    }
                    options.inPreferredConfig = Bitmap.Config.HARDWARE;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            return BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
        }
    }

    public static Bitmap c(InputStream inputStream, BitmapFactory.Options options, ImageReader imageReader) {
        Bitmap.Config config;
        boolean z;
        Bitmap.Config config2;
        Bitmap bitmap = null;
        if (Build.VERSION.SDK_INT == 34 && GainmapDecoderWorkaroundStateCalculator.b(options) && d(imageReader)) {
            Bitmap.Config config3 = options.inPreferredConfig;
            config = Bitmap.Config.HARDWARE;
            if (config3 == config) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.a(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, z);
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            try {
                Bitmap decodeStream = BitmapFactory.decodeStream(inputStream, null, options);
                if (decodeStream == null) {
                    if (decodeStream != null) {
                        decodeStream.recycle();
                    }
                    options.inPreferredConfig = config;
                    return null;
                }
                try {
                    Bitmap e = e(decodeStream);
                    decodeStream.recycle();
                    options.inPreferredConfig = config;
                    return e;
                } catch (Throwable th) {
                    th = th;
                    bitmap = decodeStream;
                    if (bitmap != null) {
                        bitmap.recycle();
                    }
                    config2 = Bitmap.Config.HARDWARE;
                    options.inPreferredConfig = config2;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            return BitmapFactory.decodeStream(inputStream, null, options);
        }
    }

    public static boolean d(ImageReader imageReader) {
        try {
            boolean c2 = imageReader.c();
            if (Log.isLoggable("GlideBitmapFactory", 2)) {
                Log.v("GlideBitmapFactory", "isLikelyToContainGainmap=" + c2);
                return c2;
            }
            return c2;
        } catch (IOException e) {
            if (Log.isLoggable("GlideBitmapFactory", 2)) {
                Log.v("GlideBitmapFactory", "isLikelyToContainGainmap failed", e);
                return false;
            }
            return false;
        }
    }

    public static Bitmap e(Bitmap bitmap) {
        Bitmap.Config config;
        boolean z;
        Gainmap gainmap = bitmap.getGainmap();
        if (gainmap != null) {
            Bitmap.Config config2 = gainmap.getGainmapContents().getConfig();
            Bitmap.Config config3 = Bitmap.Config.ALPHA_8;
            if (config2 == config3) {
                ColorMatrixColorFilter colorMatrixColorFilter = GainmapCopier.f2364a;
                Bitmap gainmapContents = gainmap.getGainmapContents();
                if (gainmapContents.getConfig() == config3) {
                    if (gainmapContents.getConfig() == config3) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Preconditions.a(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, z);
                    Bitmap createBitmap = Bitmap.createBitmap(gainmapContents.getWidth(), gainmapContents.getHeight(), Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(createBitmap);
                    Paint paint = new Paint();
                    paint.setColorFilter(GainmapCopier.f2364a);
                    canvas.drawBitmap(gainmapContents, 0.0f, 0.0f, paint);
                    canvas.setBitmap(null);
                    Gainmap gainmap2 = new Gainmap(createBitmap);
                    float[] ratioMin = gainmap.getRatioMin();
                    gainmap2.setRatioMin(ratioMin[0], ratioMin[1], ratioMin[2]);
                    float[] ratioMax = gainmap.getRatioMax();
                    gainmap2.setRatioMax(ratioMax[0], ratioMax[1], ratioMax[2]);
                    float[] gamma = gainmap.getGamma();
                    gainmap2.setGamma(gamma[0], gamma[1], gamma[2]);
                    float[] epsilonSdr = gainmap.getEpsilonSdr();
                    gainmap2.setEpsilonSdr(epsilonSdr[0], epsilonSdr[1], epsilonSdr[2]);
                    float[] epsilonHdr = gainmap.getEpsilonHdr();
                    gainmap2.setEpsilonHdr(epsilonHdr[0], epsilonHdr[1], epsilonHdr[2]);
                    gainmap2.setDisplayRatioForFullHdr(gainmap.getDisplayRatioForFullHdr());
                    gainmap2.setMinDisplayRatioForHdrTransition(gainmap.getMinDisplayRatioForHdrTransition());
                    gainmap = gainmap2;
                }
                bitmap.setGainmap(gainmap);
            }
        }
        config = Bitmap.Config.HARDWARE;
        return bitmap.copy(config, false);
    }
}
