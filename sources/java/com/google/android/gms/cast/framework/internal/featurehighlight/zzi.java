package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.content.res.Resources;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.cast.framework.R;
import kotlin.jvm.internal.IntCompanionObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzi {

    /* renamed from: a, reason: collision with root package name */
    public final Rect f3492a = new Rect();
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f3493c;
    public final int d;
    public final int e;
    public final zzh f;

    public zzi(zzh zzhVar) {
        this.f = zzhVar;
        Resources resources = zzhVar.getResources();
        this.b = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_inner_radius);
        this.f3493c = resources.getDimensionPixelOffset(R.dimen.cast_libraries_material_featurehighlight_inner_margin);
        this.d = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_text_max_width);
        this.e = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_text_horizontal_offset);
    }

    public final int a(View view, int i, int i2, int i3, int i4) {
        int i5;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i6 = i4 - i;
        int i7 = i2 - i4;
        int i8 = i4 - (i3 / 2);
        int i9 = this.e;
        if (i6 <= i7) {
            i5 = i8 + i9;
        } else {
            i5 = i8 - i9;
        }
        int i10 = marginLayoutParams.leftMargin;
        if (i5 - i10 < i) {
            return i + i10;
        }
        int i11 = marginLayoutParams.rightMargin;
        if (i5 + i3 + i11 > i2) {
            return (i2 - i3) - i11;
        }
        return i5;
    }

    public final void b(View view, int i, int i2) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(View.MeasureSpec.makeMeasureSpec(Math.min((i - marginLayoutParams.leftMargin) - marginLayoutParams.rightMargin, this.d), 1073741824), View.MeasureSpec.makeMeasureSpec(i2, IntCompanionObject.MIN_VALUE));
    }
}
