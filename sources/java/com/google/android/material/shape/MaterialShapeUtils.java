package com.google.android.material.shape;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.shape.MaterialShapeDrawable;

/* loaded from: classes3.dex */
public class MaterialShapeUtils {
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, com.google.android.material.shape.CornerTreatment] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, com.google.android.material.shape.CornerTreatment] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, com.google.android.material.shape.CornerTreatment] */
    public static CornerTreatment a(int i) {
        if (i != 0) {
            if (i != 1) {
                return new Object();
            }
            return new Object();
        }
        return new Object();
    }

    public static void b(ViewGroup viewGroup, float f) {
        Drawable background = viewGroup.getBackground();
        if (background instanceof MaterialShapeDrawable) {
            ((MaterialShapeDrawable) background).n(f);
        }
    }

    public static void c(View view, MaterialShapeDrawable materialShapeDrawable) {
        ElevationOverlayProvider elevationOverlayProvider = materialShapeDrawable.f.f11881c;
        if (elevationOverlayProvider != null && elevationOverlayProvider.f11789a) {
            float f = 0.0f;
            for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                f += ((View) parent).getElevation();
            }
            MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState = materialShapeDrawable.f;
            if (materialShapeDrawableState.m != f) {
                materialShapeDrawableState.m = f;
                materialShapeDrawable.v();
            }
        }
    }

    public static void d(ViewGroup viewGroup) {
        Drawable background = viewGroup.getBackground();
        if (background instanceof MaterialShapeDrawable) {
            c(viewGroup, (MaterialShapeDrawable) background);
        }
    }
}
