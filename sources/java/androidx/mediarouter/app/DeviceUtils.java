package androidx.mediarouter.app;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;

/* loaded from: classes.dex */
final class DeviceUtils {

    /* renamed from: a, reason: collision with root package name */
    public static Boolean f1280a;
    public static Boolean b;

    /* renamed from: c, reason: collision with root package name */
    public static Boolean f1281c;
    public static Boolean d;
    public static Boolean e;
    public static Boolean f;
    public static Boolean g;

    public static boolean a(Context context) {
        boolean z;
        PackageManager packageManager = context.getPackageManager();
        if (f == null) {
            if (Build.VERSION.SDK_INT >= 26 && packageManager.hasSystemFeature("android.hardware.type.automotive")) {
                z = true;
            } else {
                z = false;
            }
            f = Boolean.valueOf(z);
        }
        return f.booleanValue();
    }

    public static boolean b(Resources resources) {
        boolean z = false;
        if (resources == null) {
            return false;
        }
        if (d == null) {
            Configuration configuration = resources.getConfiguration();
            if ((configuration.screenLayout & 15) <= 3 && configuration.smallestScreenWidthDp >= 600) {
                z = true;
            }
            d = Boolean.valueOf(z);
        }
        return d.booleanValue();
    }

    public static boolean c(Context context) {
        Resources resources = context.getResources();
        boolean z = false;
        if (resources == null) {
            return false;
        }
        if (b == null) {
            if ((resources.getConfiguration().screenLayout & 15) > 3 || b(resources)) {
                z = true;
            }
            b = Boolean.valueOf(z);
        }
        return b.booleanValue();
    }

    public static boolean d(Context context) {
        boolean z;
        PackageManager packageManager = context.getPackageManager();
        if (g == null) {
            if (!packageManager.hasSystemFeature("com.google.android.tv") && !packageManager.hasSystemFeature("android.hardware.type.television") && !packageManager.hasSystemFeature("android.software.leanback")) {
                z = false;
            } else {
                z = true;
            }
            g = Boolean.valueOf(z);
        }
        return g.booleanValue();
    }
}
