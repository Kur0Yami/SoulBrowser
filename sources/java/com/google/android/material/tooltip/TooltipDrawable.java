package com.google.android.material.tooltip;

import android.graphics.Canvas;
import android.view.View;
import androidx.annotation.RestrictTo;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.shape.MaterialShapeDrawable;

@RestrictTo
/* loaded from: classes3.dex */
public class TooltipDrawable extends MaterialShapeDrawable implements TextDrawableHelper.TextDrawableDelegate {
    public static final /* synthetic */ int L = 0;

    /* renamed from: com.google.android.material.tooltip.TooltipDrawable$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements View.OnLayoutChangeListener {
        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            int i9 = TooltipDrawable.L;
            view.getLocationOnScreen(new int[2]);
            view.getWindowVisibleDisplayFrame(null);
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        canvas.save();
        throw null;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        throw null;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return (int) Math.max(0 + 0.0f, 0);
    }
}
