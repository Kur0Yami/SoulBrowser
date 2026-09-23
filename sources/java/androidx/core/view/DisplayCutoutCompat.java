package androidx.core.view;

import android.view.DisplayCutout;
import androidx.annotation.RequiresApi;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class DisplayCutoutCompat {

    /* renamed from: a, reason: collision with root package name */
    public final DisplayCutout f774a;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api28Impl {
        public static int a(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetBottom();
        }

        public static int b(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetLeft();
        }

        public static int c(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetRight();
        }

        public static int d(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetTop();
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api29Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api30Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api31Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api33Impl {
    }

    public DisplayCutoutCompat(DisplayCutout displayCutout) {
        this.f774a = displayCutout;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && DisplayCutoutCompat.class == obj.getClass()) {
            return Objects.equals(this.f774a, ((DisplayCutoutCompat) obj).f774a);
        }
        return false;
    }

    public final int hashCode() {
        DisplayCutout displayCutout = this.f774a;
        if (displayCutout == null) {
            return 0;
        }
        return displayCutout.hashCode();
    }

    public final String toString() {
        return "DisplayCutoutCompat{" + this.f774a + "}";
    }
}
