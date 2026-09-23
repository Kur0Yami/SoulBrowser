package com.google.android.material.textfield;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class CutoutDrawable extends MaterialShapeDrawable {
    public static final /* synthetic */ int M = 0;
    public CutoutDrawableState L;

    /* loaded from: classes3.dex */
    public static class ImplApi18 extends CutoutDrawable {
        @Override // com.google.android.material.shape.MaterialShapeDrawable
        public final void g(Canvas canvas) {
            if (this.L.s.isEmpty()) {
                super.g(canvas);
                return;
            }
            canvas.save();
            if (Build.VERSION.SDK_INT >= 26) {
                canvas.clipOutRect(this.L.s);
            } else {
                canvas.clipRect(this.L.s, Region.Op.DIFFERENCE);
            }
            super.g(canvas);
            canvas.restore();
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public final Drawable mutate() {
        this.L = new CutoutDrawableState(this.L);
        return this;
    }

    public final void w(float f, float f2, float f3, float f4) {
        RectF rectF = this.L.s;
        if (f == rectF.left && f2 == rectF.top && f3 == rectF.right && f4 == rectF.bottom) {
            return;
        }
        rectF.set(f, f2, f3, f4);
        invalidateSelf();
    }

    /* loaded from: classes3.dex */
    public static final class CutoutDrawableState extends MaterialShapeDrawable.MaterialShapeDrawableState {
        public final RectF s;

        public CutoutDrawableState(ShapeAppearanceModel shapeAppearanceModel, RectF rectF) {
            super(shapeAppearanceModel);
            this.s = rectF;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.material.textfield.CutoutDrawable, android.graphics.drawable.Drawable, com.google.android.material.shape.MaterialShapeDrawable] */
        @Override // com.google.android.material.shape.MaterialShapeDrawable.MaterialShapeDrawableState, android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            int i = CutoutDrawable.M;
            ?? materialShapeDrawable = new MaterialShapeDrawable(this);
            materialShapeDrawable.L = this;
            materialShapeDrawable.invalidateSelf();
            return materialShapeDrawable;
        }

        public CutoutDrawableState(CutoutDrawableState cutoutDrawableState) {
            super(cutoutDrawableState);
            this.s = cutoutDrawableState.s;
        }
    }
}
