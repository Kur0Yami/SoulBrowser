package com.bumptech.glide.load.resource.drawable;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.res.ResourcesCompat;

/* loaded from: classes.dex */
public final class DrawableDecoderCompat {

    /* renamed from: a, reason: collision with root package name */
    public static volatile boolean f2395a = true;

    public static Drawable a(Context context, Context context2, int i, Resources.Theme theme) {
        try {
            if (f2395a) {
                return b(context2, i, theme);
            }
        } catch (Resources.NotFoundException unused) {
        } catch (IllegalStateException e) {
            if (!context.getPackageName().equals(context2.getPackageName())) {
                return context2.getDrawable(i);
            }
            throw e;
        } catch (NoClassDefFoundError unused2) {
            f2395a = false;
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        Resources resources = context2.getResources();
        ThreadLocal threadLocal = ResourcesCompat.f668a;
        return resources.getDrawable(i, theme);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.content.ContextWrapper, androidx.appcompat.view.ContextThemeWrapper] */
    public static Drawable b(Context context, int i, Resources.Theme theme) {
        if (theme != null) {
            ?? contextWrapper = new ContextWrapper(context);
            contextWrapper.b = theme;
            contextWrapper.a(theme.getResources().getConfiguration());
            context = contextWrapper;
        }
        return AppCompatResources.a(context, i);
    }
}
