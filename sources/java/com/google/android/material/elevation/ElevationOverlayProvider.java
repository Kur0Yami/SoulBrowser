package com.google.android.material.elevation;

import android.content.Context;
import com.google.android.material.R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.resources.MaterialAttributes;

/* loaded from: classes3.dex */
public class ElevationOverlayProvider {
    public static final int f = (int) Math.round(5.1000000000000005d);

    /* renamed from: a, reason: collision with root package name */
    public final boolean f11789a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f11790c;
    public final int d;
    public final float e;

    public ElevationOverlayProvider(Context context) {
        boolean b = MaterialAttributes.b(context, R.attr.elevationOverlayEnabled, false);
        int b2 = MaterialColors.b(context, R.attr.elevationOverlayColor, 0);
        int b3 = MaterialColors.b(context, R.attr.elevationOverlayAccentColor, 0);
        int b4 = MaterialColors.b(context, R.attr.colorSurface, 0);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.f11789a = b;
        this.b = b2;
        this.f11790c = b3;
        this.d = b4;
        this.e = f2;
    }
}
