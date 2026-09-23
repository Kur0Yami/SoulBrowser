package com.google.android.material.ripple;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Log;
import android.util.StateSet;
import android.util.TypedValue;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.resources.MaterialAttributes;
import kotlin.KotlinVersion;

@RestrictTo
/* loaded from: classes3.dex */
public class RippleUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f11868a = {R.attr.state_pressed};
    public static final int[] b = {R.attr.state_focused};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f11869c = {R.attr.state_selected, R.attr.state_pressed};
    public static final int[] d = {R.attr.state_selected};
    public static final int[] e = {R.attr.state_enabled, R.attr.state_pressed};

    /* loaded from: classes3.dex */
    public static class RippleUtilsLollipop {
        @DoNotInline
        private static Drawable a(@NonNull Context context, @Px int i) {
            ColorStateList colorStateList;
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setColor(-1);
            gradientDrawable.setShape(1);
            InsetDrawable insetDrawable = new InsetDrawable((Drawable) gradientDrawable, i, i, i, i);
            int i2 = androidx.appcompat.R.attr.colorControlHighlight;
            ColorStateList valueOf = ColorStateList.valueOf(0);
            TypedValue a2 = MaterialAttributes.a(context, i2);
            if (a2 != null) {
                int i3 = a2.resourceId;
                if (i3 != 0) {
                    colorStateList = ContextCompat.c(context, i3);
                } else {
                    colorStateList = ColorStateList.valueOf(a2.data);
                }
            } else {
                colorStateList = null;
            }
            if (colorStateList != null) {
                valueOf = colorStateList;
            }
            return new RippleDrawable(valueOf, null, insetDrawable);
        }
    }

    public static ColorStateList a(ColorStateList colorStateList) {
        int[] iArr = b;
        return new ColorStateList(new int[][]{d, iArr, StateSet.NOTHING}, new int[]{b(colorStateList, f11869c), b(colorStateList, iArr), b(colorStateList, f11868a)});
    }

    public static int b(ColorStateList colorStateList, int[] iArr) {
        int i;
        if (colorStateList != null) {
            i = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        } else {
            i = 0;
        }
        return ColorUtils.l(i, Math.min(Color.alpha(i) * 2, KotlinVersion.MAX_COMPONENT_VALUE));
    }

    public static ColorStateList c(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (Build.VERSION.SDK_INT <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0 && Color.alpha(colorStateList.getColorForState(e, 0)) != 0) {
                Log.w("RippleUtils", "Use a non-transparent color for the default color as it will be used to finish ripple animations.");
            }
            return colorStateList;
        }
        return ColorStateList.valueOf(0);
    }

    public static boolean d(int[] iArr) {
        boolean z = false;
        boolean z2 = false;
        for (int i : iArr) {
            if (i == 16842910) {
                z = true;
            } else if (i == 16842908 || i == 16842919 || i == 16843623) {
                z2 = true;
            }
        }
        if (!z || !z2) {
            return false;
        }
        return true;
    }
}
