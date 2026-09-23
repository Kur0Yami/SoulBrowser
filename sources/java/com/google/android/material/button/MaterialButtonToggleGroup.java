package com.google.android.material.button;

import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.RadioButton;
import android.widget.ToggleButton;
import androidx.annotation.BoolRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes3.dex */
public class MaterialButtonToggleGroup extends MaterialButtonGroup {
    public static final int v = R.style.Widget_MaterialComponents_MaterialButtonToggleGroup;
    public final LinkedHashSet p;
    public boolean q;
    public boolean r;
    public boolean s;
    public final int t;
    public HashSet u;

    /* loaded from: classes3.dex */
    public interface OnButtonCheckedListener {
        void a(int i, boolean z);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialButtonToggleGroup(@androidx.annotation.NonNull android.content.Context r7, @androidx.annotation.Nullable android.util.AttributeSet r8) {
        /*
            r6 = this;
            int r3 = com.google.android.material.R.attr.materialButtonToggleGroupStyle
            int r4 = com.google.android.material.button.MaterialButtonToggleGroup.v
            android.content.Context r7 = com.google.android.material.theme.overlay.MaterialThemeOverlay.a(r7, r8, r3, r4)
            r6.<init>(r7, r8, r3)
            java.util.LinkedHashSet r7 = new java.util.LinkedHashSet
            r7.<init>()
            r6.p = r7
            r7 = 0
            r6.q = r7
            java.util.HashSet r0 = new java.util.HashSet
            r0.<init>()
            r6.u = r0
            android.content.Context r0 = r6.getContext()
            int[] r2 = com.google.android.material.R.styleable.MaterialButtonToggleGroup
            int[] r5 = new int[r7]
            r1 = r8
            android.content.res.TypedArray r8 = com.google.android.material.internal.ThemeEnforcement.d(r0, r1, r2, r3, r4, r5)
            int r0 = com.google.android.material.R.styleable.MaterialButtonToggleGroup_singleSelection
            boolean r0 = r8.getBoolean(r0, r7)
            r6.setSingleSelection(r0)
            int r0 = com.google.android.material.R.styleable.MaterialButtonToggleGroup_checkedButton
            r1 = -1
            int r0 = r8.getResourceId(r0, r1)
            r6.t = r0
            int r0 = com.google.android.material.R.styleable.MaterialButtonToggleGroup_selectionRequired
            boolean r7 = r8.getBoolean(r0, r7)
            r6.s = r7
            com.google.android.material.shape.StateListCornerSize r7 = r6.j
            if (r7 != 0) goto L53
            com.google.android.material.shape.AbsoluteCornerSize r7 = new com.google.android.material.shape.AbsoluteCornerSize
            r0 = 0
            r7.<init>(r0)
            com.google.android.material.shape.StateListCornerSize r7 = com.google.android.material.shape.StateListCornerSize.b(r7)
            r6.j = r7
        L53:
            int r7 = com.google.android.material.R.styleable.MaterialButtonToggleGroup_android_enabled
            r0 = 1
            boolean r7 = r8.getBoolean(r7, r0)
            r6.setEnabled(r7)
            r8.recycle()
            r6.setImportantForAccessibility(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.MaterialButtonToggleGroup.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @NonNull
    private String getChildrenA11yClassName() {
        Class cls;
        if (this.r) {
            cls = RadioButton.class;
        } else {
            cls = ToggleButton.class;
        }
        return cls.getName();
    }

    private int getVisibleButtonCount() {
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if ((getChildAt(i2) instanceof MaterialButton) && getChildAt(i2).getVisibility() != 8) {
                i++;
            }
        }
        return i;
    }

    private void setupButtonChild(@NonNull MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.setA11yClassName(getChildrenA11yClassName());
    }

    @Override // com.google.android.material.button.MaterialButtonGroup, android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e("MButtonToggleGroup", "Child views must be of type MaterialButton.");
            return;
        }
        super.addView(view, i, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        setupButtonChild(materialButton);
        f(materialButton.getId(), materialButton.s);
        ViewCompat.z(materialButton, new AccessibilityDelegateCompat() { // from class: com.google.android.material.button.MaterialButtonToggleGroup.1
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public final void d(View view2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                this.f760a.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfoCompat.f834a);
                int i2 = MaterialButtonToggleGroup.v;
                int i3 = -1;
                if (view2 instanceof MaterialButton) {
                    int i4 = 0;
                    int i5 = 0;
                    while (true) {
                        MaterialButtonToggleGroup materialButtonToggleGroup = MaterialButtonToggleGroup.this;
                        if (i4 >= materialButtonToggleGroup.getChildCount()) {
                            break;
                        }
                        if (materialButtonToggleGroup.getChildAt(i4) == view2) {
                            i3 = i5;
                            break;
                        }
                        if ((materialButtonToggleGroup.getChildAt(i4) instanceof MaterialButton) && materialButtonToggleGroup.getChildAt(i4).getVisibility() != 8) {
                            i5++;
                        }
                        i4++;
                    }
                }
                accessibilityNodeInfoCompat.m(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(((MaterialButton) view2).s, 0, 1, i3, 1));
            }
        });
    }

    public final void f(int i, boolean z) {
        if (i == -1) {
            Log.e("MButtonToggleGroup", "Button ID is not valid: " + i);
            return;
        }
        HashSet hashSet = new HashSet(this.u);
        if (z && !hashSet.contains(Integer.valueOf(i))) {
            if (this.r && !hashSet.isEmpty()) {
                hashSet.clear();
            }
            hashSet.add(Integer.valueOf(i));
        } else if (!z && hashSet.contains(Integer.valueOf(i))) {
            if (!this.s || hashSet.size() > 1) {
                hashSet.remove(Integer.valueOf(i));
            }
        } else {
            return;
        }
        g(hashSet);
    }

    public final void g(Set set) {
        HashSet hashSet = this.u;
        this.u = new HashSet(set);
        for (int i = 0; i < getChildCount(); i++) {
            int id = ((MaterialButton) getChildAt(i)).getId();
            boolean contains = set.contains(Integer.valueOf(id));
            View findViewById = findViewById(id);
            if (findViewById instanceof MaterialButton) {
                this.q = true;
                ((MaterialButton) findViewById).setChecked(contains);
                this.q = false;
            }
            if (hashSet.contains(Integer.valueOf(id)) != set.contains(Integer.valueOf(id))) {
                boolean contains2 = set.contains(Integer.valueOf(id));
                Iterator it = this.p.iterator();
                while (it.hasNext()) {
                    ((OnButtonCheckedListener) it.next()).a(id, contains2);
                }
            }
        }
        invalidate();
    }

    @IdRes
    public int getCheckedButtonId() {
        if (this.r && !this.u.isEmpty()) {
            return ((Integer) this.u.iterator().next()).intValue();
        }
        return -1;
    }

    @NonNull
    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            int id = ((MaterialButton) getChildAt(i)).getId();
            if (this.u.contains(Integer.valueOf(id))) {
                arrayList.add(Integer.valueOf(id));
            }
        }
        return arrayList;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        int i = this.t;
        if (i != -1) {
            g(Collections.singleton(Integer.valueOf(i)));
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int i;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = new AccessibilityNodeInfoCompat(accessibilityNodeInfo);
        int visibleButtonCount = getVisibleButtonCount();
        if (this.r) {
            i = 1;
        } else {
            i = 2;
        }
        accessibilityNodeInfoCompat.l(AccessibilityNodeInfoCompat.CollectionInfoCompat.a(1, visibleButtonCount, i));
    }

    public void setSelectionRequired(boolean z) {
        this.s = z;
    }

    public void setSingleSelection(boolean z) {
        if (this.r != z) {
            this.r = z;
            g(new HashSet());
        }
        String childrenA11yClassName = getChildrenA11yClassName();
        for (int i = 0; i < getChildCount(); i++) {
            ((MaterialButton) getChildAt(i)).setA11yClassName(childrenA11yClassName);
        }
    }

    public void setSingleSelection(@BoolRes int i) {
        setSingleSelection(getResources().getBoolean(i));
    }
}
