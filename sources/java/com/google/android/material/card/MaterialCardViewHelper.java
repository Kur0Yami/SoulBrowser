package com.google.android.material.card;

import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import androidx.annotation.RestrictTo;

@RestrictTo
/* loaded from: classes3.dex */
class MaterialCardViewHelper {

    /* renamed from: com.google.android.material.card.MaterialCardViewHelper$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends InsetDrawable {
        @Override // android.graphics.drawable.Drawable
        public final int getMinimumHeight() {
            return -1;
        }

        @Override // android.graphics.drawable.Drawable
        public final int getMinimumWidth() {
            return -1;
        }

        @Override // android.graphics.drawable.InsetDrawable, android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public final boolean getPadding(Rect rect) {
            return false;
        }
    }

    static {
        Math.cos(Math.toRadians(45.0d));
        if (Build.VERSION.SDK_INT <= 28) {
            new ColorDrawable();
        }
    }
}
