package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.util.Log;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.util.Arrays;
import java.util.HashSet;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public final class TransformationUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final Paint f2381a = new Paint(6);
    public static final Paint b = new Paint(7);

    /* renamed from: c, reason: collision with root package name */
    public static final Paint f2382c;
    public static final Lock d;

    /* renamed from: com.bumptech.glide.load.resource.bitmap.TransformationUtils$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements DrawRoundedCornerFn {
        @Override // com.bumptech.glide.load.resource.bitmap.TransformationUtils.DrawRoundedCornerFn
        public final void a(Canvas canvas, Paint paint, RectF rectF) {
            float f = 0;
            canvas.drawRoundRect(rectF, f, f, paint);
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.TransformationUtils$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements DrawRoundedCornerFn {
        @Override // com.bumptech.glide.load.resource.bitmap.TransformationUtils.DrawRoundedCornerFn
        public final void a(Canvas canvas, Paint paint, RectF rectF) {
            Path path = new Path();
            path.addRoundRect(rectF, new float[]{0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f}, Path.Direction.CW);
            canvas.drawPath(path, paint);
        }
    }

    /* loaded from: classes.dex */
    public interface DrawRoundedCornerFn {
        void a(Canvas canvas, Paint paint, RectF rectF);
    }

    /* loaded from: classes.dex */
    public static final class NoLock implements Lock {
        @Override // java.util.concurrent.locks.Lock
        public final void lock() {
        }

        @Override // java.util.concurrent.locks.Lock
        public final void lockInterruptibly() {
        }

        @Override // java.util.concurrent.locks.Lock
        public final Condition newCondition() {
            throw new UnsupportedOperationException("Should not be called");
        }

        @Override // java.util.concurrent.locks.Lock
        public final boolean tryLock() {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public final void unlock() {
        }

        @Override // java.util.concurrent.locks.Lock
        public final boolean tryLock(long j, TimeUnit timeUnit) {
            return true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.concurrent.locks.Lock] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    static {
        ?? r0;
        if (new HashSet(Arrays.asList("XT1085", "XT1092", "XT1093", "XT1094", "XT1095", "XT1096", "XT1097", "XT1098", "XT1031", "XT1028", "XT937C", "XT1032", "XT1008", "XT1033", "XT1035", "XT1034", "XT939G", "XT1039", "XT1040", "XT1042", "XT1045", "XT1063", "XT1064", "XT1068", "XT1069", "XT1072", "XT1077", "XT1078", "XT1079")).contains(Build.MODEL)) {
            r0 = new ReentrantLock();
        } else {
            r0 = new Object();
        }
        d = r0;
        Paint paint = new Paint(7);
        f2382c = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    }

    public static void a(Bitmap bitmap, Bitmap bitmap2, Matrix matrix) {
        Lock lock = d;
        lock.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawBitmap(bitmap, matrix, f2381a);
            canvas.setBitmap(null);
        } finally {
            lock.unlock();
        }
    }

    public static Bitmap b(BitmapPool bitmapPool, Bitmap bitmap, int i, int i2) {
        Bitmap.Config config;
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            if (Log.isLoggable("TransformationUtils", 2)) {
                Log.v("TransformationUtils", "requested target size matches input, returning input");
                return bitmap;
            }
        } else {
            float min = Math.min(i / bitmap.getWidth(), i2 / bitmap.getHeight());
            int round = Math.round(bitmap.getWidth() * min);
            int round2 = Math.round(bitmap.getHeight() * min);
            if (bitmap.getWidth() == round && bitmap.getHeight() == round2) {
                if (Log.isLoggable("TransformationUtils", 2)) {
                    Log.v("TransformationUtils", "adjusted target size matches input, returning input");
                }
            } else {
                int width = (int) (bitmap.getWidth() * min);
                int height = (int) (bitmap.getHeight() * min);
                if (bitmap.getConfig() != null) {
                    config = bitmap.getConfig();
                } else {
                    config = Bitmap.Config.ARGB_8888;
                }
                Bitmap e = bitmapPool.e(width, height, config);
                e.setHasAlpha(bitmap.hasAlpha());
                if (Log.isLoggable("TransformationUtils", 2)) {
                    Log.v("TransformationUtils", "request: " + i + "x" + i2);
                    Log.v("TransformationUtils", "toFit:   " + bitmap.getWidth() + "x" + bitmap.getHeight());
                    Log.v("TransformationUtils", "toReuse: " + e.getWidth() + "x" + e.getHeight());
                    StringBuilder sb = new StringBuilder("minPct:   ");
                    sb.append(min);
                    Log.v("TransformationUtils", sb.toString());
                }
                Matrix matrix = new Matrix();
                matrix.setScale(min, min);
                a(bitmap, e, matrix);
                return e;
            }
        }
        return bitmap;
    }

    public static Bitmap c(Bitmap bitmap, BitmapPool bitmapPool) {
        Bitmap.Config d2 = d(bitmap);
        if (d2.equals(bitmap.getConfig())) {
            return bitmap;
        }
        Bitmap e = bitmapPool.e(bitmap.getWidth(), bitmap.getHeight(), d2);
        new Canvas(e).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        return e;
    }

    public static Bitmap.Config d(Bitmap bitmap) {
        Bitmap.Config config;
        if (Build.VERSION.SDK_INT >= 26) {
            config = Bitmap.Config.RGBA_F16;
            if (config.equals(bitmap.getConfig())) {
                return config;
            }
        }
        return Bitmap.Config.ARGB_8888;
    }

    public static Bitmap e(Bitmap bitmap, int i) {
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                Matrix matrix = new Matrix();
                switch (i) {
                    case 2:
                        matrix.setScale(-1.0f, 1.0f);
                        break;
                    case 3:
                        matrix.setRotate(180.0f);
                        break;
                    case 4:
                        matrix.setRotate(180.0f);
                        matrix.postScale(-1.0f, 1.0f);
                        break;
                    case 5:
                        matrix.setRotate(90.0f);
                        matrix.postScale(-1.0f, 1.0f);
                        break;
                    case 6:
                        matrix.setRotate(90.0f);
                        break;
                    case 7:
                        matrix.setRotate(-90.0f);
                        matrix.postScale(-1.0f, 1.0f);
                        break;
                    case 8:
                        matrix.setRotate(-90.0f);
                        break;
                }
                return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            default:
                return bitmap;
        }
    }

    public static Bitmap f(BitmapPool bitmapPool, Bitmap bitmap, DrawRoundedCornerFn drawRoundedCornerFn) {
        Bitmap.Config d2 = d(bitmap);
        Bitmap c2 = c(bitmap, bitmapPool);
        Bitmap e = bitmapPool.e(c2.getWidth(), c2.getHeight(), d2);
        e.setHasAlpha(true);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(c2, tileMode, tileMode);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setShader(bitmapShader);
        RectF rectF = new RectF(0.0f, 0.0f, e.getWidth(), e.getHeight());
        Lock lock = d;
        lock.lock();
        try {
            Canvas canvas = new Canvas(e);
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            drawRoundedCornerFn.a(canvas, paint, rectF);
            canvas.setBitmap(null);
            lock.unlock();
            if (!c2.equals(bitmap)) {
                bitmapPool.d(c2);
            }
            return e;
        } catch (Throwable th) {
            lock.unlock();
            throw th;
        }
    }
}
