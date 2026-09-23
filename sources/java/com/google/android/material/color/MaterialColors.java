package com.google.android.material.color;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.resources.MaterialAttributes;
import kotlin.KotlinVersion;

/* loaded from: classes3.dex */
public class MaterialColors {
    public static int a(int i, int i2) {
        return ColorUtils.l(i, (Color.alpha(i) * i2) / KotlinVersion.MAX_COMPONENT_VALUE);
    }

    public static int b(Context context, int i, int i2) {
        Integer d = d(context, i);
        if (d != null) {
            return d.intValue();
        }
        return i2;
    }

    public static int c(View view, int i) {
        Context context = view.getContext();
        TypedValue c2 = MaterialAttributes.c(view.getContext(), i, view.getClass().getCanonicalName());
        int i2 = c2.resourceId;
        if (i2 != 0) {
            return context.getColor(i2);
        }
        return c2.data;
    }

    public static Integer d(Context context, int i) {
        int i2;
        TypedValue a2 = MaterialAttributes.a(context, i);
        if (a2 != null) {
            int i3 = a2.resourceId;
            if (i3 != 0) {
                i2 = context.getColor(i3);
            } else {
                i2 = a2.data;
            }
            return Integer.valueOf(i2);
        }
        return null;
    }

    public static ColorStateList e(Context context, int i) {
        TypedValue a2 = MaterialAttributes.a(context, i);
        if (a2 == null) {
            return null;
        }
        int i2 = a2.resourceId;
        if (i2 != 0) {
            return ResourcesCompat.b(i2, context.getTheme(), context.getResources());
        }
        int i3 = a2.data;
        if (i3 == 0) {
            return null;
        }
        return ColorStateList.valueOf(i3);
    }

    public static boolean f(int i) {
        if (i != 0 && ColorUtils.g(i) > 0.5d) {
            return true;
        }
        return false;
    }

    public static int g(float f, int i, int i2) {
        return ColorUtils.i(ColorUtils.l(i2, Math.round(Color.alpha(i2) * f)), i);
    }
}
