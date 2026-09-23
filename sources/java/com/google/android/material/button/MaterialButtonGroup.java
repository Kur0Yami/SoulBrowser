package com.google.android.material.button;

import android.graphics.Canvas;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.StateListCornerSize;
import com.google.android.material.shape.StateListShapeAppearanceModel;
import com.google.android.material.shape.StateListSizeChange;
import java.util.ArrayList;
import java.util.TreeMap;

/* loaded from: classes3.dex */
public class MaterialButtonGroup extends LinearLayout {
    public static final int o = R.style.Widget_Material3_MaterialButtonGroup;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f11698c;
    public final ArrayList f;
    public final PressedStateTracker g;
    public final a h;
    public Integer[] i;
    public StateListCornerSize j;
    public StateListShapeAppearanceModel k;
    public int l;
    public StateListSizeChange m;
    public boolean n;

    /* loaded from: classes3.dex */
    public class PressedStateTracker implements MaterialButton.OnPressedChangeListener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ MaterialButtonToggleGroup f11699a;

        public PressedStateTracker(MaterialButtonToggleGroup materialButtonToggleGroup) {
            this.f11699a = materialButtonToggleGroup;
        }

        @Override // com.google.android.material.button.MaterialButton.OnPressedChangeListener
        public final void a() {
            this.f11699a.invalidate();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Type inference failed for: r0v19, types: [java.lang.Object, com.google.android.material.shape.StateListSizeChange] */
    /* JADX WARN: Type inference failed for: r11v5, types: [com.google.android.material.button.a] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialButtonGroup(android.content.Context r11, android.util.AttributeSet r12, int r13) {
        /*
            Method dump skipped, instructions count: 393
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.MaterialButtonGroup.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (c(i)) {
                return i;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (c(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private void setGeneratedIdIfNeeded(@NonNull MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            materialButton.setId(View.generateViewId());
        }
    }

    public final void a() {
        int i;
        LinearLayout.LayoutParams layoutParams;
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex != -1) {
            for (int i2 = firstVisibleChildIndex + 1; i2 < getChildCount(); i2++) {
                MaterialButton materialButton = (MaterialButton) getChildAt(i2);
                MaterialButton materialButton2 = (MaterialButton) getChildAt(i2 - 1);
                if (this.l <= 0) {
                    i = Math.min(materialButton.getStrokeWidth(), materialButton2.getStrokeWidth());
                    materialButton.setShouldDrawSurfaceColorStroke(true);
                    materialButton2.setShouldDrawSurfaceColorStroke(true);
                } else {
                    materialButton.setShouldDrawSurfaceColorStroke(false);
                    materialButton2.setShouldDrawSurfaceColorStroke(false);
                    i = 0;
                }
                ViewGroup.LayoutParams layoutParams2 = materialButton.getLayoutParams();
                if (layoutParams2 instanceof LinearLayout.LayoutParams) {
                    layoutParams = (LinearLayout.LayoutParams) layoutParams2;
                } else {
                    layoutParams = new LinearLayout.LayoutParams(layoutParams2.width, layoutParams2.height);
                }
                if (getOrientation() == 0) {
                    layoutParams.setMarginEnd(0);
                    layoutParams.setMarginStart(this.l - i);
                    layoutParams.topMargin = 0;
                } else {
                    layoutParams.bottomMargin = 0;
                    layoutParams.topMargin = this.l - i;
                    layoutParams.setMarginStart(0);
                }
                materialButton.setLayoutParams(layoutParams);
            }
            if (getChildCount() != 0 && firstVisibleChildIndex != -1) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) ((MaterialButton) getChildAt(firstVisibleChildIndex)).getLayoutParams();
                if (getOrientation() == 1) {
                    layoutParams3.topMargin = 0;
                    layoutParams3.bottomMargin = 0;
                } else {
                    layoutParams3.setMarginEnd(0);
                    layoutParams3.setMarginStart(0);
                    layoutParams3.leftMargin = 0;
                    layoutParams3.rightMargin = 0;
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e("MButtonGroup", "Child views must be of type MaterialButton.");
            return;
        }
        d();
        this.n = true;
        super.addView(view, i, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        setGeneratedIdIfNeeded(materialButton);
        materialButton.setOnPressedChangeListenerInternal(this.g);
        this.f11698c.add(materialButton.getShapeAppearanceModel());
        this.f.add(materialButton.getStateListShapeAppearanceModel());
        materialButton.setEnabled(isEnabled());
    }

    public final void b() {
        int i;
        MaterialButton materialButton;
        MaterialButton materialButton2;
        int allowedWidthDecrease;
        float max;
        if (this.m != null && getChildCount() != 0) {
            int firstVisibleChildIndex = getFirstVisibleChildIndex();
            int lastVisibleChildIndex = getLastVisibleChildIndex();
            int i2 = Integer.MAX_VALUE;
            for (int i3 = firstVisibleChildIndex; i3 <= lastVisibleChildIndex; i3++) {
                if (c(i3)) {
                    int i4 = 0;
                    if (c(i3) && this.m != null) {
                        MaterialButton materialButton3 = (MaterialButton) getChildAt(i3);
                        StateListSizeChange stateListSizeChange = this.m;
                        int width = materialButton3.getWidth();
                        int i5 = -width;
                        for (int i6 = 0; i6 < stateListSizeChange.f11912a; i6++) {
                            StateListSizeChange.SizeChangeAmount sizeChangeAmount = stateListSizeChange.d[i6].f11914a;
                            StateListSizeChange.SizeChangeType sizeChangeType = sizeChangeAmount.f11915a;
                            float f = sizeChangeAmount.b;
                            if (sizeChangeType == StateListSizeChange.SizeChangeType.f) {
                                max = Math.max(i5, f);
                            } else if (sizeChangeType == StateListSizeChange.SizeChangeType.f11916c) {
                                max = Math.max(i5, width * f);
                            }
                            i5 = (int) max;
                        }
                        int max2 = Math.max(0, i5);
                        int i7 = i3 - 1;
                        while (true) {
                            materialButton = null;
                            if (i7 >= 0) {
                                if (c(i7)) {
                                    materialButton2 = (MaterialButton) getChildAt(i7);
                                    break;
                                }
                                i7--;
                            } else {
                                materialButton2 = null;
                                break;
                            }
                        }
                        if (materialButton2 == null) {
                            allowedWidthDecrease = 0;
                        } else {
                            allowedWidthDecrease = materialButton2.getAllowedWidthDecrease();
                        }
                        int childCount = getChildCount();
                        int i8 = i3 + 1;
                        while (true) {
                            if (i8 >= childCount) {
                                break;
                            }
                            if (c(i8)) {
                                materialButton = (MaterialButton) getChildAt(i8);
                                break;
                            }
                            i8++;
                        }
                        if (materialButton != null) {
                            i4 = materialButton.getAllowedWidthDecrease();
                        }
                        i4 = Math.min(max2, allowedWidthDecrease + i4);
                    }
                    if (i3 != firstVisibleChildIndex && i3 != lastVisibleChildIndex) {
                        i4 /= 2;
                    }
                    i2 = Math.min(i2, i4);
                }
            }
            for (int i9 = firstVisibleChildIndex; i9 <= lastVisibleChildIndex; i9++) {
                if (c(i9)) {
                    ((MaterialButton) getChildAt(i9)).setSizeChange(this.m);
                    MaterialButton materialButton4 = (MaterialButton) getChildAt(i9);
                    if (i9 != firstVisibleChildIndex && i9 != lastVisibleChildIndex) {
                        i = i2 * 2;
                    } else {
                        i = i2;
                    }
                    materialButton4.setWidthChangeMax(i);
                }
            }
        }
    }

    public final boolean c(int i) {
        if (getChildAt(i).getVisibility() != 8) {
            return true;
        }
        return false;
    }

    public final void d() {
        for (int i = 0; i < getChildCount(); i++) {
            MaterialButton materialButton = (MaterialButton) getChildAt(i);
            LinearLayout.LayoutParams layoutParams = materialButton.z;
            if (layoutParams != null) {
                materialButton.setLayoutParams(layoutParams);
                materialButton.z = null;
                materialButton.w = -1.0f;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        TreeMap treeMap = new TreeMap(this.h);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            treeMap.put((MaterialButton) getChildAt(i), Integer.valueOf(i));
        }
        this.i = (Integer[]) treeMap.values().toArray(new Integer[0]);
        super.dispatchDraw(canvas);
    }

    /* JADX WARN: Type inference failed for: r11v0, types: [java.lang.Object, com.google.android.material.shape.StateListShapeAppearanceModel$Builder] */
    public final void e() {
        boolean z;
        boolean z2;
        StateListShapeAppearanceModel.Builder builder;
        boolean z3;
        boolean z4;
        int i;
        StateListShapeAppearanceModel stateListShapeAppearanceModel;
        if ((this.j != null || this.k != null) && this.n) {
            this.n = false;
            int childCount = getChildCount();
            int firstVisibleChildIndex = getFirstVisibleChildIndex();
            int lastVisibleChildIndex = getLastVisibleChildIndex();
            for (int i2 = 0; i2 < childCount; i2++) {
                MaterialButton materialButton = (MaterialButton) getChildAt(i2);
                if (materialButton.getVisibility() != 8) {
                    if (i2 == firstVisibleChildIndex) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (i2 == lastVisibleChildIndex) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    StateListShapeAppearanceModel stateListShapeAppearanceModel2 = this.k;
                    if (stateListShapeAppearanceModel2 == null || (!z && !z2)) {
                        stateListShapeAppearanceModel2 = (StateListShapeAppearanceModel) this.f.get(i2);
                    }
                    if (stateListShapeAppearanceModel2 == null) {
                        builder = new StateListShapeAppearanceModel.Builder((ShapeAppearanceModel) this.f11698c.get(i2));
                    } else {
                        ?? obj = new Object();
                        int i3 = stateListShapeAppearanceModel2.f11908a;
                        obj.f11910a = i3;
                        obj.b = stateListShapeAppearanceModel2.b;
                        int[][] iArr = stateListShapeAppearanceModel2.f11909c;
                        int[][] iArr2 = new int[iArr.length];
                        obj.f11911c = iArr2;
                        ShapeAppearanceModel[] shapeAppearanceModelArr = stateListShapeAppearanceModel2.d;
                        obj.d = new ShapeAppearanceModel[shapeAppearanceModelArr.length];
                        System.arraycopy(iArr, 0, iArr2, 0, i3);
                        System.arraycopy(shapeAppearanceModelArr, 0, obj.d, 0, obj.f11910a);
                        obj.e = stateListShapeAppearanceModel2.e;
                        obj.f = stateListShapeAppearanceModel2.f;
                        obj.g = stateListShapeAppearanceModel2.g;
                        obj.h = stateListShapeAppearanceModel2.h;
                        builder = obj;
                    }
                    if (getOrientation() == 0) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (getLayoutDirection() == 1) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (z3) {
                        if (z) {
                            i = 5;
                        } else {
                            i = 0;
                        }
                        if (z2) {
                            i |= 10;
                        }
                        if (z4) {
                            i = ((i & 10) >> 1) | ((i & 5) << 1);
                        }
                    } else {
                        if (z) {
                            i = 3;
                        } else {
                            i = 0;
                        }
                        if (z2) {
                            i |= 12;
                        }
                    }
                    int i4 = ~i;
                    StateListCornerSize stateListCornerSize = this.j;
                    if ((i4 | 1) == i4) {
                        builder.e = stateListCornerSize;
                    }
                    if ((i4 | 2) == i4) {
                        builder.f = stateListCornerSize;
                    }
                    if ((i4 | 4) == i4) {
                        builder.g = stateListCornerSize;
                    }
                    if ((i4 | 8) == i4) {
                        builder.h = stateListCornerSize;
                    }
                    if (builder.f11910a == 0) {
                        stateListShapeAppearanceModel = null;
                    } else {
                        stateListShapeAppearanceModel = new StateListShapeAppearanceModel(builder);
                    }
                    if (stateListShapeAppearanceModel.d()) {
                        materialButton.setStateListShapeAppearanceModel(stateListShapeAppearanceModel);
                    } else {
                        materialButton.setShapeAppearanceModel(stateListShapeAppearanceModel.c());
                    }
                }
            }
        }
    }

    @Nullable
    @RestrictTo
    public StateListSizeChange getButtonSizeChange() {
        return this.m;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        Integer[] numArr = this.i;
        if (numArr != null && i2 < numArr.length) {
            return numArr[i2].intValue();
        }
        Log.w("MButtonGroup", "Child order wasn't updated");
        return i2;
    }

    @NonNull
    public CornerSize getInnerCornerSize() {
        return this.j.b;
    }

    @NonNull
    @RestrictTo
    public StateListCornerSize getInnerCornerSizeStateList() {
        return this.j;
    }

    @Nullable
    public ShapeAppearanceModel getShapeAppearance() {
        StateListShapeAppearanceModel stateListShapeAppearanceModel = this.k;
        if (stateListShapeAppearanceModel == null) {
            return null;
        }
        return stateListShapeAppearanceModel.c();
    }

    @Px
    public int getSpacing() {
        return this.l;
    }

    @Nullable
    @RestrictTo
    public StateListShapeAppearanceModel getStateListShapeAppearance() {
        return this.k;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            d();
            b();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        e();
        a();
        super.onMeasure(i, i2);
    }

    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            ((MaterialButton) view).setOnPressedChangeListenerInternal(null);
        }
        int indexOfChild = indexOfChild(view);
        if (indexOfChild >= 0) {
            this.f11698c.remove(indexOfChild);
            this.f.remove(indexOfChild);
        }
        this.n = true;
        e();
        d();
        a();
    }

    @RestrictTo
    public void setButtonSizeChange(@NonNull StateListSizeChange stateListSizeChange) {
        if (this.m != stateListSizeChange) {
            this.m = stateListSizeChange;
            b();
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        for (int i = 0; i < getChildCount(); i++) {
            ((MaterialButton) getChildAt(i)).setEnabled(z);
        }
    }

    public void setInnerCornerSize(@NonNull CornerSize cornerSize) {
        this.j = StateListCornerSize.b(cornerSize);
        this.n = true;
        e();
        invalidate();
    }

    @RestrictTo
    public void setInnerCornerSizeStateList(@NonNull StateListCornerSize stateListCornerSize) {
        this.j = stateListCornerSize;
        this.n = true;
        e();
        invalidate();
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (getOrientation() != i) {
            this.n = true;
        }
        super.setOrientation(i);
    }

    public void setShapeAppearance(@Nullable ShapeAppearanceModel shapeAppearanceModel) {
        StateListShapeAppearanceModel stateListShapeAppearanceModel;
        StateListShapeAppearanceModel.Builder builder = new StateListShapeAppearanceModel.Builder(shapeAppearanceModel);
        if (builder.f11910a == 0) {
            stateListShapeAppearanceModel = null;
        } else {
            stateListShapeAppearanceModel = new StateListShapeAppearanceModel(builder);
        }
        this.k = stateListShapeAppearanceModel;
        this.n = true;
        e();
        invalidate();
    }

    public void setSpacing(@Px int i) {
        this.l = i;
        invalidate();
        requestLayout();
    }

    @RestrictTo
    public void setStateListShapeAppearance(@Nullable StateListShapeAppearanceModel stateListShapeAppearanceModel) {
        this.k = stateListShapeAppearanceModel;
        this.n = true;
        e();
        invalidate();
    }
}
