package com.google.android.gms.cast.framework.media.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.cast.internal.Logger;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzo {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f3559a = new Logger("WidgetUtil", null);

    public static Drawable a(Context context, int i, int i2) {
        return b(context, i, i2, R.attr.colorForeground, 0);
    }

    public static Drawable b(Context context, int i, int i2, int i3, int i4) {
        int color;
        ColorStateList colorStateList;
        Drawable mutate = context.getResources().getDrawable(i2).mutate();
        mutate.setTintMode(PorterDuff.Mode.SRC_IN);
        if (i != 0) {
            colorStateList = ResourcesCompat.b(i, context.getTheme(), context.getResources());
        } else {
            if (i3 != 0) {
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{i3});
                color = obtainStyledAttributes.getColor(0, 0);
                obtainStyledAttributes.recycle();
            } else {
                color = context.getColor(i4);
            }
            colorStateList = new ColorStateList(new int[][]{new int[]{R.attr.state_enabled}, new int[]{-16842910}}, new int[]{color, ColorUtils.l(color, Uuid.SIZE_BITS)});
        }
        mutate.setTintList(colorStateList);
        return mutate;
    }
}
