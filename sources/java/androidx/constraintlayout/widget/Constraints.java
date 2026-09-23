package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;

/* loaded from: classes.dex */
public class Constraints extends ViewGroup {

    /* loaded from: classes.dex */
    public static class LayoutParams extends ConstraintLayout.LayoutParams {
        public float A0;
        public float B0;
        public float C0;
        public float q0;
        public boolean r0;
        public float s0;
        public float t0;
        public float u0;
        public float v0;
        public float w0;
        public float x0;
        public float y0;
        public float z0;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.constraintlayout.widget.Constraints$LayoutParams, android.view.ViewGroup$LayoutParams, androidx.constraintlayout.widget.ConstraintLayout$LayoutParams] */
    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        ?? layoutParams = new ConstraintLayout.LayoutParams(-2, -2);
        layoutParams.q0 = 1.0f;
        layoutParams.r0 = false;
        layoutParams.s0 = 0.0f;
        layoutParams.t0 = 0.0f;
        layoutParams.u0 = 0.0f;
        layoutParams.v0 = 0.0f;
        layoutParams.w0 = 1.0f;
        layoutParams.x0 = 1.0f;
        layoutParams.y0 = 0.0f;
        layoutParams.z0 = 0.0f;
        layoutParams.A0 = 0.0f;
        layoutParams.B0 = 0.0f;
        layoutParams.C0 = 0.0f;
        return layoutParams;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.constraintlayout.widget.Constraints$LayoutParams, android.view.ViewGroup$LayoutParams, androidx.constraintlayout.widget.ConstraintLayout$LayoutParams] */
    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        ?? layoutParams = new ConstraintLayout.LayoutParams(context, attributeSet);
        layoutParams.q0 = 1.0f;
        layoutParams.r0 = false;
        layoutParams.s0 = 0.0f;
        layoutParams.t0 = 0.0f;
        layoutParams.u0 = 0.0f;
        layoutParams.v0 = 0.0f;
        layoutParams.w0 = 1.0f;
        layoutParams.x0 = 1.0f;
        layoutParams.y0 = 0.0f;
        layoutParams.z0 = 0.0f;
        layoutParams.A0 = 0.0f;
        layoutParams.B0 = 0.0f;
        layoutParams.C0 = 0.0f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ConstraintSet);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == R.styleable.ConstraintSet_android_alpha) {
                layoutParams.q0 = obtainStyledAttributes.getFloat(index, layoutParams.q0);
            } else if (index == R.styleable.ConstraintSet_android_elevation) {
                layoutParams.s0 = obtainStyledAttributes.getFloat(index, layoutParams.s0);
                layoutParams.r0 = true;
            } else if (index == R.styleable.ConstraintSet_android_rotationX) {
                layoutParams.u0 = obtainStyledAttributes.getFloat(index, layoutParams.u0);
            } else if (index == R.styleable.ConstraintSet_android_rotationY) {
                layoutParams.v0 = obtainStyledAttributes.getFloat(index, layoutParams.v0);
            } else if (index == R.styleable.ConstraintSet_android_rotation) {
                layoutParams.t0 = obtainStyledAttributes.getFloat(index, layoutParams.t0);
            } else if (index == R.styleable.ConstraintSet_android_scaleX) {
                layoutParams.w0 = obtainStyledAttributes.getFloat(index, layoutParams.w0);
            } else if (index == R.styleable.ConstraintSet_android_scaleY) {
                layoutParams.x0 = obtainStyledAttributes.getFloat(index, layoutParams.x0);
            } else if (index == R.styleable.ConstraintSet_android_transformPivotX) {
                layoutParams.y0 = obtainStyledAttributes.getFloat(index, layoutParams.y0);
            } else if (index == R.styleable.ConstraintSet_android_transformPivotY) {
                layoutParams.z0 = obtainStyledAttributes.getFloat(index, layoutParams.z0);
            } else if (index == R.styleable.ConstraintSet_android_translationX) {
                layoutParams.A0 = obtainStyledAttributes.getFloat(index, layoutParams.A0);
            } else if (index == R.styleable.ConstraintSet_android_translationY) {
                layoutParams.B0 = obtainStyledAttributes.getFloat(index, layoutParams.B0);
            } else if (index == R.styleable.ConstraintSet_android_translationZ) {
                layoutParams.C0 = obtainStyledAttributes.getFloat(index, layoutParams.C0);
            }
        }
        obtainStyledAttributes.recycle();
        return layoutParams;
    }

    public ConstraintSet getConstraintSet() {
        getChildCount();
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ConstraintLayout.LayoutParams(layoutParams);
    }
}
