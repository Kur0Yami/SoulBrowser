package androidx.mediarouter.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.widget.ProgressBar;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.ColorUtils;
import androidx.mediarouter.R;

/* loaded from: classes.dex */
final class MediaRouterThemeHelper {

    /* renamed from: a, reason: collision with root package name */
    public static final int f1336a = R.color.mr_dynamic_dialog_icon_light;

    public static ContextThemeWrapper a(Context context, boolean z) {
        int i;
        if (!z) {
            i = androidx.appcompat.R.attr.dialogTheme;
        } else {
            i = androidx.appcompat.R.attr.alertDialogTheme;
        }
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, g(context, i));
        if (g(contextThemeWrapper, R.attr.mediaRouteTheme) != 0) {
            return new ContextThemeWrapper(contextThemeWrapper, e(contextThemeWrapper));
        }
        return contextThemeWrapper;
    }

    public static int b(Context context) {
        if (ColorUtils.f(-1, f(context, androidx.appcompat.R.attr.colorPrimary)) >= 3.0d) {
            return -1;
        }
        return -570425344;
    }

    public static float c(Context context) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(android.R.attr.disabledAlpha, typedValue, true)) {
            return typedValue.getFloat();
        }
        return 0.5f;
    }

    public static Drawable d(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{i});
        Drawable a2 = AppCompatResources.a(context, obtainStyledAttributes.getResourceId(0, 0));
        if (h(context)) {
            a2.setTint(context.getColor(f1336a));
        }
        obtainStyledAttributes.recycle();
        return a2;
    }

    public static int e(Context context) {
        if (h(context)) {
            if (b(context) == -570425344) {
                return R.style.Theme_MediaRouter_Light;
            }
            return R.style.Theme_MediaRouter_Light_DarkControlPanel;
        }
        if (b(context) == -570425344) {
            return R.style.Theme_MediaRouter_LightControlPanel;
        }
        return R.style.Theme_MediaRouter;
    }

    public static int f(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i, typedValue, true);
        if (typedValue.resourceId != 0) {
            return context.getResources().getColor(typedValue.resourceId);
        }
        return typedValue.data;
    }

    public static int g(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return typedValue.resourceId;
        }
        return 0;
    }

    public static boolean h(Context context) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(androidx.appcompat.R.attr.isLightTheme, typedValue, true) && typedValue.data != 0) {
            return true;
        }
        return false;
    }

    public static void i(Context context, ProgressBar progressBar) {
        int i;
        if (!progressBar.isIndeterminate()) {
            return;
        }
        if (h(context)) {
            i = R.color.mr_cast_progressbar_progress_and_thumb_light;
        } else {
            i = R.color.mr_cast_progressbar_progress_and_thumb_dark;
        }
        progressBar.getIndeterminateDrawable().setColorFilter(context.getColor(i), PorterDuff.Mode.SRC_IN);
    }
}
