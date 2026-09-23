package androidx.core.view.accessibility;

import android.graphics.Rect;
import android.os.Build;
import android.os.LocaleList;
import android.view.accessibility.AccessibilityWindowInfo;
import androidx.annotation.RequiresApi;
import androidx.core.os.LocaleListCompat;

/* loaded from: classes.dex */
public class AccessibilityWindowInfoCompat {

    /* renamed from: a, reason: collision with root package name */
    public final AccessibilityWindowInfo f841a;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api21Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api24Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api26Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api30Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api33Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api34Impl {
        public static LocaleList a(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getLocales();
        }

        public static long b(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getTransitionTimeMillis();
        }
    }

    public AccessibilityWindowInfoCompat(AccessibilityWindowInfo accessibilityWindowInfo) {
        this.f841a = accessibilityWindowInfo;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AccessibilityWindowInfoCompat)) {
            return false;
        }
        return this.f841a.equals(((AccessibilityWindowInfoCompat) obj).f841a);
    }

    public final int hashCode() {
        return this.f841a.hashCode();
    }

    public final String toString() {
        String str;
        AccessibilityWindowInfoCompat accessibilityWindowInfoCompat;
        boolean z;
        long j;
        LocaleListCompat localeListCompat;
        StringBuilder sb = new StringBuilder("AccessibilityWindowInfo[id=");
        Rect rect = new Rect();
        AccessibilityWindowInfo accessibilityWindowInfo = this.f841a;
        accessibilityWindowInfo.getBoundsInScreen(rect);
        sb.append(accessibilityWindowInfo.getId());
        sb.append(", type=");
        int type = accessibilityWindowInfo.getType();
        boolean z2 = true;
        if (type != 1) {
            if (type != 2) {
                if (type != 3) {
                    if (type != 4) {
                        str = "<UNKNOWN>";
                    } else {
                        str = "TYPE_ACCESSIBILITY_OVERLAY";
                    }
                } else {
                    str = "TYPE_SYSTEM";
                }
            } else {
                str = "TYPE_INPUT_METHOD";
            }
        } else {
            str = "TYPE_APPLICATION";
        }
        sb.append(str);
        sb.append(", layer=");
        sb.append(accessibilityWindowInfo.getLayer());
        sb.append(", bounds=");
        sb.append(rect);
        sb.append(", focused=");
        sb.append(accessibilityWindowInfo.isFocused());
        sb.append(", active=");
        sb.append(accessibilityWindowInfo.isActive());
        sb.append(", hasParent=");
        AccessibilityWindowInfo parent = accessibilityWindowInfo.getParent();
        if (parent != null) {
            accessibilityWindowInfoCompat = new AccessibilityWindowInfoCompat(parent);
        } else {
            accessibilityWindowInfoCompat = null;
        }
        if (accessibilityWindowInfoCompat != null) {
            z = true;
        } else {
            z = false;
        }
        sb.append(z);
        sb.append(", hasChildren=");
        if (accessibilityWindowInfo.getChildCount() <= 0) {
            z2 = false;
        }
        sb.append(z2);
        sb.append(", transitionTime=");
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            j = Api34Impl.b(accessibilityWindowInfo);
        } else {
            j = 0;
        }
        sb.append(j);
        sb.append(", locales=");
        if (i >= 34) {
            localeListCompat = LocaleListCompat.g(Api34Impl.a(accessibilityWindowInfo));
        } else {
            localeListCompat = LocaleListCompat.b;
        }
        sb.append(localeListCompat);
        sb.append(']');
        return sb.toString();
    }
}
