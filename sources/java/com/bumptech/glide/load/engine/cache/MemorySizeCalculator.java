package com.bumptech.glide.load.engine.cache;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;

/* loaded from: classes.dex */
public final class MemorySizeCalculator {

    /* renamed from: a, reason: collision with root package name */
    public final int f2260a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2261c;

    /* loaded from: classes.dex */
    public static final class Builder {
        public static final int e;

        /* renamed from: a, reason: collision with root package name */
        public final Context f2262a;
        public final ActivityManager b;

        /* renamed from: c, reason: collision with root package name */
        public final DisplayMetricsScreenDimensions f2263c;
        public final float d;

        static {
            int i;
            if (Build.VERSION.SDK_INT < 26) {
                i = 4;
            } else {
                i = 1;
            }
            e = i;
        }

        public Builder(Context context) {
            this.d = e;
            this.f2262a = context;
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            this.b = activityManager;
            this.f2263c = new DisplayMetricsScreenDimensions(context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT >= 26 && activityManager.isLowRamDevice()) {
                this.d = 0.0f;
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class DisplayMetricsScreenDimensions implements ScreenDimensions {

        /* renamed from: a, reason: collision with root package name */
        public final DisplayMetrics f2264a;

        public DisplayMetricsScreenDimensions(DisplayMetrics displayMetrics) {
            this.f2264a = displayMetrics;
        }
    }

    /* loaded from: classes.dex */
    public interface ScreenDimensions {
    }

    public MemorySizeCalculator(Builder builder) {
        int i;
        float f;
        boolean z;
        Context context = builder.f2262a;
        float f2 = builder.d;
        ActivityManager activityManager = builder.b;
        if (activityManager.isLowRamDevice()) {
            i = 2097152;
        } else {
            i = 4194304;
        }
        this.f2261c = i;
        float memoryClass = activityManager.getMemoryClass() * 1048576;
        if (activityManager.isLowRamDevice()) {
            f = 0.33f;
        } else {
            f = 0.4f;
        }
        int round = Math.round(memoryClass * f);
        DisplayMetrics displayMetrics = builder.f2263c.f2264a;
        float f3 = displayMetrics.widthPixels * displayMetrics.heightPixels * 4;
        int round2 = Math.round(f3 * f2);
        int round3 = Math.round(f3 * 2.0f);
        int i2 = round - i;
        int i3 = round3 + round2;
        if (i3 <= i2) {
            this.b = round3;
            this.f2260a = round2;
        } else {
            float f4 = i2 / (f2 + 2.0f);
            this.b = Math.round(2.0f * f4);
            this.f2260a = Math.round(f4 * f2);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            StringBuilder sb = new StringBuilder("Calculation complete, Calculated memory cache size: ");
            sb.append(Formatter.formatFileSize(context, this.b));
            sb.append(", pool size: ");
            sb.append(Formatter.formatFileSize(context, this.f2260a));
            sb.append(", byte array size: ");
            sb.append(Formatter.formatFileSize(context, i));
            sb.append(", memory class limited? ");
            if (i3 > round) {
                z = true;
            } else {
                z = false;
            }
            sb.append(z);
            sb.append(", max size: ");
            sb.append(Formatter.formatFileSize(context, round));
            sb.append(", memoryClass: ");
            sb.append(activityManager.getMemoryClass());
            sb.append(", isLowMemoryDevice: ");
            sb.append(activityManager.isLowRamDevice());
            Log.d("MemorySizeCalculator", sb.toString());
        }
    }
}
