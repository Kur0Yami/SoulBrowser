package com.google.android.material.textfield;

import android.R;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Filterable;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.ArrayRes;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.ListPopupWindow;
import androidx.core.graphics.ColorUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class MaterialAutoCompleteTextView extends AppCompatAutoCompleteTextView {
    public final ListPopupWindow i;
    public final AccessibilityManager j;
    public final Rect k;
    public final int l;
    public final float m;
    public ColorStateList n;
    public int o;
    public ColorStateList p;

    /* loaded from: classes3.dex */
    public class MaterialArrayAdapter<T> extends ArrayAdapter<String> {

        /* renamed from: c, reason: collision with root package name */
        public ColorStateList f11976c;
        public ColorStateList f;

        public MaterialArrayAdapter(Context context, int i, String[] strArr) {
            super(context, i, strArr);
            a();
        }

        public final void a() {
            ColorStateList colorStateList;
            MaterialAutoCompleteTextView materialAutoCompleteTextView = MaterialAutoCompleteTextView.this;
            ColorStateList colorStateList2 = materialAutoCompleteTextView.p;
            ColorStateList colorStateList3 = null;
            if (colorStateList2 != null) {
                int[] iArr = {R.attr.state_pressed};
                colorStateList = new ColorStateList(new int[][]{iArr, new int[0]}, new int[]{colorStateList2.getColorForState(iArr, 0), 0});
            } else {
                colorStateList = null;
            }
            this.f = colorStateList;
            if (materialAutoCompleteTextView.o != 0 && materialAutoCompleteTextView.p != null) {
                int[] iArr2 = {R.attr.state_hovered, -16842919};
                int[] iArr3 = {R.attr.state_selected, -16842919};
                colorStateList3 = new ColorStateList(new int[][]{iArr3, iArr2, new int[0]}, new int[]{ColorUtils.i(materialAutoCompleteTextView.p.getColorForState(iArr3, 0), materialAutoCompleteTextView.o), ColorUtils.i(materialAutoCompleteTextView.p.getColorForState(iArr2, 0), materialAutoCompleteTextView.o), materialAutoCompleteTextView.o});
            }
            this.f11976c = colorStateList3;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = super.getView(i, view, viewGroup);
            if (view2 instanceof TextView) {
                TextView textView = (TextView) view2;
                MaterialAutoCompleteTextView materialAutoCompleteTextView = MaterialAutoCompleteTextView.this;
                Drawable drawable = null;
                if (materialAutoCompleteTextView.getText().toString().contentEquals(textView.getText()) && materialAutoCompleteTextView.o != 0) {
                    ColorDrawable colorDrawable = new ColorDrawable(materialAutoCompleteTextView.o);
                    if (this.f != null) {
                        colorDrawable.setTintList(this.f11976c);
                        drawable = new RippleDrawable(this.f, colorDrawable, null);
                    } else {
                        drawable = colorDrawable;
                    }
                }
                textView.setBackground(drawable);
            }
            return view2;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialAutoCompleteTextView(android.content.Context r8, android.util.AttributeSet r9) {
        /*
            r7 = this;
            int r3 = androidx.appcompat.R.attr.autoCompleteTextViewStyle
            r6 = 0
            android.content.Context r8 = com.google.android.material.theme.overlay.MaterialThemeOverlay.a(r8, r9, r3, r6)
            r7.<init>(r8, r9, r3)
            android.graphics.Rect r8 = new android.graphics.Rect
            r8.<init>()
            r7.k = r8
            android.content.Context r0 = r7.getContext()
            int[] r2 = com.google.android.material.R.styleable.MaterialAutoCompleteTextView
            int r4 = androidx.appcompat.R.style.Widget_AppCompat_AutoCompleteTextView
            int[] r5 = new int[r6]
            r1 = r9
            android.content.res.TypedArray r8 = com.google.android.material.internal.ThemeEnforcement.d(r0, r1, r2, r3, r4, r5)
            int r9 = com.google.android.material.R.styleable.MaterialAutoCompleteTextView_android_inputType
            boolean r9 = r8.hasValue(r9)
            if (r9 == 0) goto L34
            int r9 = com.google.android.material.R.styleable.MaterialAutoCompleteTextView_android_inputType
            int r9 = r8.getInt(r9, r6)
            if (r9 != 0) goto L34
            r9 = 0
            r7.setKeyListener(r9)
        L34:
            int r9 = com.google.android.material.R.styleable.MaterialAutoCompleteTextView_simpleItemLayout
            int r1 = com.google.android.material.R.layout.mtrl_auto_complete_simple_item
            int r9 = r8.getResourceId(r9, r1)
            r7.l = r9
            int r9 = com.google.android.material.R.styleable.MaterialAutoCompleteTextView_android_popupElevation
            int r1 = com.google.android.material.R.dimen.mtrl_exposed_dropdown_menu_popup_elevation
            int r9 = r8.getDimensionPixelOffset(r9, r1)
            float r9 = (float) r9
            r7.m = r9
            int r9 = com.google.android.material.R.styleable.MaterialAutoCompleteTextView_dropDownBackgroundTint
            boolean r9 = r8.hasValue(r9)
            if (r9 == 0) goto L5d
            int r9 = com.google.android.material.R.styleable.MaterialAutoCompleteTextView_dropDownBackgroundTint
            int r9 = r8.getColor(r9, r6)
            android.content.res.ColorStateList r9 = android.content.res.ColorStateList.valueOf(r9)
            r7.n = r9
        L5d:
            int r9 = com.google.android.material.R.styleable.MaterialAutoCompleteTextView_simpleItemSelectedColor
            int r9 = r8.getColor(r9, r6)
            r7.o = r9
            int r9 = com.google.android.material.R.styleable.MaterialAutoCompleteTextView_simpleItemSelectedRippleColor
            android.content.res.ColorStateList r9 = com.google.android.material.resources.MaterialResources.a(r0, r8, r9)
            r7.p = r9
            java.lang.String r9 = "accessibility"
            java.lang.Object r9 = r0.getSystemService(r9)
            android.view.accessibility.AccessibilityManager r9 = (android.view.accessibility.AccessibilityManager) r9
            r7.j = r9
            androidx.appcompat.widget.ListPopupWindow r9 = new androidx.appcompat.widget.ListPopupWindow
            r9.<init>(r0)
            r7.i = r9
            r0 = 1
            r9.C = r0
            android.widget.PopupWindow r1 = r9.D
            r1.setFocusable(r0)
            r9.s = r7
            r0 = 2
            android.widget.PopupWindow r1 = r9.D
            r1.setInputMethodMode(r0)
            android.widget.ListAdapter r0 = r7.getAdapter()
            r9.p(r0)
            com.google.android.material.textfield.MaterialAutoCompleteTextView$1 r0 = new com.google.android.material.textfield.MaterialAutoCompleteTextView$1
            r0.<init>()
            r9.t = r0
            int r9 = com.google.android.material.R.styleable.MaterialAutoCompleteTextView_simpleItems
            boolean r9 = r8.hasValue(r9)
            if (r9 == 0) goto Lad
            int r9 = com.google.android.material.R.styleable.MaterialAutoCompleteTextView_simpleItems
            int r9 = r8.getResourceId(r9, r6)
            r7.setSimpleItems(r9)
        Lad:
            r8.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.MaterialAutoCompleteTextView.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public final TextInputLayout b() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    public final boolean c() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        AccessibilityManager accessibilityManager = this.j;
        if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
            if (accessibilityManager != null && accessibilityManager.isEnabled() && (enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(16)) != null) {
                for (AccessibilityServiceInfo accessibilityServiceInfo : enabledAccessibilityServiceList) {
                    if (accessibilityServiceInfo.getSettingsActivityName() != null && accessibilityServiceInfo.getSettingsActivityName().contains("SwitchAccess")) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        }
        return true;
    }

    @Override // android.widget.AutoCompleteTextView
    public final void dismissDropDown() {
        if (c()) {
            this.i.dismiss();
        } else {
            super.dismissDropDown();
        }
    }

    @Nullable
    public ColorStateList getDropDownBackgroundTintList() {
        return this.n;
    }

    @Override // android.widget.TextView
    @Nullable
    public CharSequence getHint() {
        TextInputLayout b = b();
        if (b != null && b.J) {
            return b.getHint();
        }
        return super.getHint();
    }

    public float getPopupElevation() {
        return this.m;
    }

    public int getSimpleItemSelectedColor() {
        return this.o;
    }

    @Nullable
    public ColorStateList getSimpleItemSelectedRippleColor() {
        return this.p;
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        String str;
        super.onAttachedToWindow();
        TextInputLayout b = b();
        if (b != null && b.J && super.getHint() == null) {
            String str2 = Build.MANUFACTURER;
            if (str2 != null) {
                str = str2.toLowerCase(Locale.ENGLISH);
            } else {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            if (str.equals("meizu")) {
                setHint(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            }
        }
    }

    @Override // android.widget.AutoCompleteTextView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.i.dismiss();
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i, int i2) {
        int selectedItemPosition;
        super.onMeasure(i, i2);
        if (View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            int measuredWidth = getMeasuredWidth();
            ListAdapter adapter = getAdapter();
            TextInputLayout b = b();
            int i3 = 0;
            if (adapter != null && b != null) {
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
                int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
                ListPopupWindow listPopupWindow = this.i;
                if (!listPopupWindow.D.isShowing()) {
                    selectedItemPosition = -1;
                } else {
                    selectedItemPosition = listPopupWindow.g.getSelectedItemPosition();
                }
                int min = Math.min(adapter.getCount(), Math.max(0, selectedItemPosition) + 15);
                View view = null;
                int i4 = 0;
                for (int max = Math.max(0, min - 15); max < min; max++) {
                    int itemViewType = adapter.getItemViewType(max);
                    if (itemViewType != i3) {
                        view = null;
                        i3 = itemViewType;
                    }
                    view = adapter.getView(max, view, b);
                    if (view.getLayoutParams() == null) {
                        view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
                    }
                    view.measure(makeMeasureSpec, makeMeasureSpec2);
                    i4 = Math.max(i4, view.getMeasuredWidth());
                }
                Drawable background = listPopupWindow.D.getBackground();
                if (background != null) {
                    Rect rect = this.k;
                    background.getPadding(rect);
                    i4 += rect.left + rect.right;
                }
                i3 = b.getEndIconView().getMeasuredWidth() + i4;
            }
            setMeasuredDimension(Math.min(Math.max(measuredWidth, i3), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public final void onWindowFocusChanged(boolean z) {
        if (c()) {
            return;
        }
        super.onWindowFocusChanged(z);
    }

    @Override // android.widget.AutoCompleteTextView
    public <T extends ListAdapter & Filterable> void setAdapter(@Nullable T t) {
        super.setAdapter(t);
        this.i.p(getAdapter());
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundDrawable(Drawable drawable) {
        super.setDropDownBackgroundDrawable(drawable);
        ListPopupWindow listPopupWindow = this.i;
        if (listPopupWindow != null) {
            listPopupWindow.k(drawable);
        }
    }

    public void setDropDownBackgroundTint(@ColorInt int i) {
        setDropDownBackgroundTintList(ColorStateList.valueOf(i));
    }

    public void setDropDownBackgroundTintList(@Nullable ColorStateList colorStateList) {
        this.n = colorStateList;
        Drawable dropDownBackground = getDropDownBackground();
        if (dropDownBackground instanceof MaterialShapeDrawable) {
            ((MaterialShapeDrawable) dropDownBackground).o(this.n);
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setOnItemSelectedListener(@Nullable AdapterView.OnItemSelectedListener onItemSelectedListener) {
        super.setOnItemSelectedListener(onItemSelectedListener);
        this.i.u = getOnItemSelectedListener();
    }

    @Override // android.widget.TextView
    public void setRawInputType(int i) {
        super.setRawInputType(i);
        TextInputLayout b = b();
        if (b != null) {
            b.u();
        }
    }

    public void setSimpleItemSelectedColor(int i) {
        this.o = i;
        if (getAdapter() instanceof MaterialArrayAdapter) {
            ((MaterialArrayAdapter) getAdapter()).a();
        }
    }

    public void setSimpleItemSelectedRippleColor(@Nullable ColorStateList colorStateList) {
        this.p = colorStateList;
        if (getAdapter() instanceof MaterialArrayAdapter) {
            ((MaterialArrayAdapter) getAdapter()).a();
        }
    }

    public void setSimpleItems(@ArrayRes int i) {
        setSimpleItems(getResources().getStringArray(i));
    }

    @Override // android.widget.AutoCompleteTextView
    public final void showDropDown() {
        if (c()) {
            this.i.b();
        } else {
            super.showDropDown();
        }
    }

    public void setSimpleItems(@NonNull String[] strArr) {
        setAdapter(new MaterialArrayAdapter(getContext(), this.l, strArr));
    }
}
