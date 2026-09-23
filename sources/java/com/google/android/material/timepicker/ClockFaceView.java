package com.google.android.material.timepicker;

import android.content.res.ColorStateList;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.timepicker.ClockHandView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class ClockFaceView extends RadialViewGroup implements ClockHandView.OnRotateListener {
    public final Rect A;
    public final RectF B;
    public final Rect C;
    public final SparseArray D;
    public final AccessibilityDelegateCompat E;
    public final int[] F;
    public final float[] G;
    public final int H;
    public final int I;
    public final int J;
    public final int K;
    public String[] L;
    public float M;
    public final ColorStateList N;
    public final ClockHandView z;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ClockFaceView(@androidx.annotation.NonNull android.content.Context r6, @androidx.annotation.Nullable android.util.AttributeSet r7) {
        /*
            r5 = this;
            int r0 = com.google.android.material.R.attr.materialClockStyle
            r5.<init>(r6, r7, r0)
            android.graphics.Rect r1 = new android.graphics.Rect
            r1.<init>()
            r5.A = r1
            android.graphics.RectF r1 = new android.graphics.RectF
            r1.<init>()
            r5.B = r1
            android.graphics.Rect r1 = new android.graphics.Rect
            r1.<init>()
            r5.C = r1
            android.util.SparseArray r1 = new android.util.SparseArray
            r1.<init>()
            r5.D = r1
            r1 = 3
            float[] r1 = new float[r1]
            r1 = {x00d8: FILL_ARRAY_DATA , data: [0, 1063675494, 1065353216} // fill-array
            r5.G = r1
            int[] r1 = com.google.android.material.R.styleable.ClockFaceView
            int r2 = com.google.android.material.R.style.Widget_MaterialComponents_TimePicker_Clock
            android.content.res.TypedArray r7 = r6.obtainStyledAttributes(r7, r1, r0, r2)
            android.content.res.Resources r0 = r5.getResources()
            int r1 = com.google.android.material.R.styleable.ClockFaceView_clockNumberTextColor
            android.content.res.ColorStateList r1 = com.google.android.material.resources.MaterialResources.a(r6, r7, r1)
            r5.N = r1
            android.view.LayoutInflater r2 = android.view.LayoutInflater.from(r6)
            int r3 = com.google.android.material.R.layout.material_clockface_view
            r4 = 1
            r2.inflate(r3, r5, r4)
            int r2 = com.google.android.material.R.id.material_clock_hand
            android.view.View r2 = r5.findViewById(r2)
            com.google.android.material.timepicker.ClockHandView r2 = (com.google.android.material.timepicker.ClockHandView) r2
            r5.z = r2
            int r3 = com.google.android.material.R.dimen.material_clock_hand_padding
            int r3 = r0.getDimensionPixelSize(r3)
            r5.H = r3
            r3 = 16842913(0x10100a1, float:2.369401E-38)
            int[] r3 = new int[]{r3}
            int r4 = r1.getDefaultColor()
            int r3 = r1.getColorForState(r3, r4)
            int r1 = r1.getDefaultColor()
            int[] r1 = new int[]{r3, r3, r1}
            r5.F = r1
            java.util.ArrayList r1 = r2.n
            r1.add(r5)
            int r1 = com.google.android.material.R.color.material_timepicker_clockface
            android.content.res.Resources r2 = r6.getResources()
            android.content.res.Resources$Theme r3 = r6.getTheme()
            android.content.res.ColorStateList r1 = androidx.core.content.res.ResourcesCompat.b(r1, r3, r2)
            int r1 = r1.getDefaultColor()
            int r2 = com.google.android.material.R.styleable.ClockFaceView_clockFaceBackgroundColor
            android.content.res.ColorStateList r6 = com.google.android.material.resources.MaterialResources.a(r6, r7, r2)
            if (r6 != 0) goto L92
            goto L96
        L92:
            int r1 = r6.getDefaultColor()
        L96:
            r5.setBackgroundColor(r1)
            android.view.ViewTreeObserver r6 = r5.getViewTreeObserver()
            com.google.android.material.timepicker.ClockFaceView$1 r1 = new com.google.android.material.timepicker.ClockFaceView$1
            r1.<init>()
            r6.addOnPreDrawListener(r1)
            r6 = 0
            r5.setFocusable(r6)
            r7.recycle()
            com.google.android.material.timepicker.ClockFaceView$2 r7 = new com.google.android.material.timepicker.ClockFaceView$2
            r7.<init>()
            r5.E = r7
            r7 = 12
            java.lang.String[] r7 = new java.lang.String[r7]
            java.lang.String r1 = ""
            java.util.Arrays.fill(r7, r1)
            r5.q(r7, r6)
            int r6 = com.google.android.material.R.dimen.material_time_picker_minimum_screen_height
            int r6 = r0.getDimensionPixelSize(r6)
            r5.I = r6
            int r6 = com.google.android.material.R.dimen.material_time_picker_minimum_screen_width
            int r6 = r0.getDimensionPixelSize(r6)
            r5.J = r6
            int r6 = com.google.android.material.R.dimen.material_clock_size
            int r6 = r0.getDimensionPixelSize(r6)
            r5.K = r6
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.timepicker.ClockFaceView.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @Override // com.google.android.material.timepicker.ClockHandView.OnRotateListener
    public final void a(float f, boolean z) {
        if (Math.abs(this.M - f) > 0.001f) {
            this.M = f;
            p();
        }
    }

    @Override // com.google.android.material.timepicker.RadialViewGroup
    public final void i() {
        super.i();
        int i = 0;
        while (true) {
            SparseArray sparseArray = this.D;
            if (i < sparseArray.size()) {
                ((TextView) sparseArray.get(i)).setVisibility(0);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        new AccessibilityNodeInfoCompat(accessibilityNodeInfo).l(AccessibilityNodeInfoCompat.CollectionInfoCompat.a(1, this.L.length, 1));
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        p();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        int max = (int) (this.K / Math.max(Math.max(this.I / displayMetrics.heightPixels, this.J / displayMetrics.widthPixels), 1.0f));
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(max, 1073741824);
        setMeasuredDimension(max, max);
        super.onMeasure(makeMeasureSpec, makeMeasureSpec);
    }

    public final void p() {
        SparseArray sparseArray;
        Rect rect;
        RectF rectF;
        boolean z;
        RadialGradient radialGradient;
        RectF rectF2 = this.z.r;
        float f = Float.MAX_VALUE;
        TextView textView = null;
        int i = 0;
        while (true) {
            sparseArray = this.D;
            int size = sparseArray.size();
            rect = this.A;
            rectF = this.B;
            if (i >= size) {
                break;
            }
            TextView textView2 = (TextView) sparseArray.get(i);
            if (textView2 != null) {
                textView2.getHitRect(rect);
                rectF.set(rect);
                rectF.union(rectF2);
                float height = rectF.height() * rectF.width();
                if (height < f) {
                    textView = textView2;
                    f = height;
                }
            }
            i++;
        }
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            TextView textView3 = (TextView) sparseArray.get(i2);
            if (textView3 != null) {
                if (textView3 == textView) {
                    z = true;
                } else {
                    z = false;
                }
                textView3.setSelected(z);
                textView3.getHitRect(rect);
                rectF.set(rect);
                textView3.getLineBounds(0, this.C);
                rectF.inset(r8.left, r8.top);
                if (!RectF.intersects(rectF2, rectF)) {
                    radialGradient = null;
                } else {
                    radialGradient = new RadialGradient(rectF2.centerX() - rectF.left, rectF2.centerY() - rectF.top, 0.5f * rectF2.width(), this.F, this.G, Shader.TileMode.CLAMP);
                }
                textView3.getPaint().setShader(radialGradient);
                textView3.invalidate();
            }
        }
    }

    public final void q(String[] strArr, int i) {
        this.L = strArr;
        LayoutInflater from = LayoutInflater.from(getContext());
        SparseArray sparseArray = this.D;
        int size = sparseArray.size();
        boolean z = false;
        for (int i2 = 0; i2 < Math.max(this.L.length, size); i2++) {
            TextView textView = (TextView) sparseArray.get(i2);
            if (i2 >= this.L.length) {
                removeView(textView);
                sparseArray.remove(i2);
            } else {
                if (textView == null) {
                    textView = (TextView) from.inflate(R.layout.material_clockface_textview, (ViewGroup) this, false);
                    sparseArray.put(i2, textView);
                    addView(textView);
                }
                textView.setText(this.L[i2]);
                textView.setTag(R.id.material_value_index, Integer.valueOf(i2));
                int i3 = (i2 / 12) + 1;
                textView.setTag(R.id.material_clock_level, Integer.valueOf(i3));
                if (i3 > 1) {
                    z = true;
                }
                ViewCompat.z(textView, this.E);
                textView.setTextColor(this.N);
                if (i != 0) {
                    textView.setContentDescription(getResources().getString(i, this.L[i2]));
                }
            }
        }
        ClockHandView clockHandView = this.z;
        if (clockHandView.m && !z) {
            clockHandView.y = 1;
        }
        clockHandView.m = z;
        clockHandView.invalidate();
    }
}
