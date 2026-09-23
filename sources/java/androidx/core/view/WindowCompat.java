package androidx.core.view;

import android.os.Build;
import android.view.View;
import android.view.Window;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class WindowCompat {

    /* loaded from: classes.dex */
    public static class Api16Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api28Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api30Impl {
        public static void a(Window window, boolean z) {
            int i;
            View decorView = window.getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            if (z) {
                i = systemUiVisibility & (-257);
            } else {
                i = systemUiVisibility | 256;
            }
            decorView.setSystemUiVisibility(i);
            window.setDecorFitsSystemWindows(z);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api35Impl {
        public static void a(Window window, boolean z) {
            window.setDecorFitsSystemWindows(z);
        }
    }

    public static void a(Window window, boolean z) {
        int i;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 35) {
            Api35Impl.a(window, z);
            return;
        }
        if (i2 >= 30) {
            Api30Impl.a(window, z);
            return;
        }
        View decorView = window.getDecorView();
        int systemUiVisibility = decorView.getSystemUiVisibility();
        if (z) {
            i = systemUiVisibility & (-1793);
        } else {
            i = systemUiVisibility | 1792;
        }
        decorView.setSystemUiVisibility(i);
    }
}
