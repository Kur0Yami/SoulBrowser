package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.LinearLayout;
import androidx.annotation.GravityInt;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashSet;
import java.util.Set;
import java.util.function.IntFunction;

/* loaded from: classes.dex */
public class LinearLayoutCompat extends ViewGroup {

    /* renamed from: c, reason: collision with root package name */
    public boolean f304c;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public float k;
    public boolean l;
    public int[] m;
    public int[] n;
    public Drawable o;
    public int p;
    public int q;
    public int r;
    public int s;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface DividerMode {
    }

    @RequiresApi
    @RestrictTo
    /* loaded from: classes.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion {

        /* renamed from: a, reason: collision with root package name */
        public int f305a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f306c;
        public int d;
        public int e;
        public int f;
        public int g;
        public int h;
        public int i;

        /* renamed from: androidx.appcompat.widget.LinearLayoutCompat$InspectionCompanion$1, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 implements IntFunction<String> {
            @Override // java.util.function.IntFunction
            public final String apply(int i) {
                if (i != 0) {
                    if (i != 1) {
                        return String.valueOf(i);
                    }
                    return "vertical";
                }
                return "horizontal";
            }
        }

        /* renamed from: androidx.appcompat.widget.LinearLayoutCompat$InspectionCompanion$2, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass2 implements IntFunction<Set<String>> {
            @Override // java.util.function.IntFunction
            public final Set<String> apply(int i) {
                HashSet hashSet = new HashSet();
                if (i == 0) {
                    hashSet.add("none");
                }
                if (i == 1) {
                    hashSet.add("beginning");
                }
                if (i == 2) {
                    hashSet.add("middle");
                }
                if (i == 4) {
                    hashSet.add("end");
                }
                return hashSet;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.Object, java.util.function.IntFunction] */
        /* JADX WARN: Type inference failed for: r1v8, types: [java.lang.Object, java.util.function.IntFunction] */
        public final void mapProperties(PropertyMapper propertyMapper) {
            this.f305a = propertyMapper.mapBoolean("baselineAligned", R.attr.baselineAligned);
            this.b = propertyMapper.mapInt("baselineAlignedChildIndex", R.attr.baselineAlignedChildIndex);
            this.f306c = propertyMapper.mapGravity("gravity", R.attr.gravity);
            this.d = propertyMapper.mapIntEnum("orientation", R.attr.orientation, new Object());
            this.e = propertyMapper.mapFloat("weightSum", R.attr.weightSum);
            this.f = propertyMapper.mapObject("divider", androidx.appcompat.R.attr.divider);
            this.g = propertyMapper.mapInt("dividerPadding", androidx.appcompat.R.attr.dividerPadding);
            this.h = propertyMapper.mapBoolean("measureWithLargestChild", androidx.appcompat.R.attr.measureWithLargestChild);
            this.i = propertyMapper.mapIntFlag("showDividers", androidx.appcompat.R.attr.showDividers, new Object());
        }

        public final void readProperties(Object obj, PropertyReader propertyReader) {
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) obj;
            propertyReader.readBoolean(this.f305a, linearLayoutCompat.f304c);
            propertyReader.readInt(this.b, linearLayoutCompat.getBaselineAlignedChildIndex());
            propertyReader.readGravity(this.f306c, linearLayoutCompat.getGravity());
            propertyReader.readIntEnum(this.d, linearLayoutCompat.getOrientation());
            propertyReader.readFloat(this.e, linearLayoutCompat.getWeightSum());
            propertyReader.readObject(this.f, linearLayoutCompat.getDividerDrawable());
            propertyReader.readInt(this.g, linearLayoutCompat.getDividerPadding());
            propertyReader.readBoolean(this.h, linearLayoutCompat.l);
            propertyReader.readIntFlag(this.i, linearLayoutCompat.getShowDividers());
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends LinearLayout.LayoutParams {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface OrientationMode {
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, 0);
        this.f304c = true;
        this.f = -1;
        this.g = 0;
        this.i = 8388659;
        TintTypedArray e = TintTypedArray.e(context, attributeSet, androidx.appcompat.R.styleable.LinearLayoutCompat, 0);
        ViewCompat.y(this, context, androidx.appcompat.R.styleable.LinearLayoutCompat, attributeSet, e.b, 0);
        int i2 = androidx.appcompat.R.styleable.LinearLayoutCompat_android_orientation;
        TypedArray typedArray = e.b;
        int i3 = typedArray.getInt(i2, -1);
        if (i3 >= 0) {
            setOrientation(i3);
        }
        int i4 = typedArray.getInt(androidx.appcompat.R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (i4 >= 0) {
            setGravity(i4);
        }
        boolean z = typedArray.getBoolean(androidx.appcompat.R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!z) {
            setBaselineAligned(z);
        }
        this.k = typedArray.getFloat(androidx.appcompat.R.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.f = typedArray.getInt(androidx.appcompat.R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.l = typedArray.getBoolean(androidx.appcompat.R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(e.b(androidx.appcompat.R.styleable.LinearLayoutCompat_divider));
        this.r = typedArray.getInt(androidx.appcompat.R.styleable.LinearLayoutCompat_showDividers, 0);
        this.s = typedArray.getDimensionPixelSize(androidx.appcompat.R.styleable.LinearLayoutCompat_dividerPadding, 0);
        e.f();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public final void d(int i, Canvas canvas) {
        this.o.setBounds(getPaddingLeft() + this.s, i, (getWidth() - getPaddingRight()) - this.s, this.q + i);
        this.o.draw(canvas);
    }

    public final void e(int i, Canvas canvas) {
        this.o.setBounds(i, getPaddingTop() + this.s, this.p + i, (getHeight() - getPaddingBottom()) - this.s);
        this.o.draw(canvas);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.appcompat.widget.LinearLayoutCompat$LayoutParams, android.widget.LinearLayout$LayoutParams] */
    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.appcompat.widget.LinearLayoutCompat$LayoutParams, android.widget.LinearLayout$LayoutParams] */
    @Override // android.view.ViewGroup
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public LayoutParams generateDefaultLayoutParams() {
        int i = this.h;
        if (i == 0) {
            return new LinearLayout.LayoutParams(-2, -2);
        }
        if (i == 1) {
            return new LinearLayout.LayoutParams(-1, -2);
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.appcompat.widget.LinearLayoutCompat$LayoutParams, android.widget.LinearLayout$LayoutParams] */
    @Override // android.view.ViewGroup
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LinearLayout.LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.View
    public int getBaseline() {
        int i;
        if (this.f < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i2 = this.f;
        if (childCount > i2) {
            View childAt = getChildAt(i2);
            int baseline = childAt.getBaseline();
            if (baseline == -1) {
                if (this.f == 0) {
                    return -1;
                }
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
            int i3 = this.g;
            if (this.h == 1 && (i = this.i & 112) != 48) {
                if (i != 16) {
                    if (i == 80) {
                        i3 = ((getBottom() - getTop()) - getPaddingBottom()) - this.j;
                    }
                } else {
                    i3 += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.j) / 2;
                }
            }
            return i3 + ((LinearLayout.LayoutParams) ((LayoutParams) childAt.getLayoutParams())).topMargin + baseline;
        }
        throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
    }

    public int getBaselineAlignedChildIndex() {
        return this.f;
    }

    public Drawable getDividerDrawable() {
        return this.o;
    }

    public int getDividerPadding() {
        return this.s;
    }

    @RestrictTo
    public int getDividerWidth() {
        return this.p;
    }

    @GravityInt
    public int getGravity() {
        return this.i;
    }

    public int getOrientation() {
        return this.h;
    }

    public int getShowDividers() {
        return this.r;
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.k;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.appcompat.widget.LinearLayoutCompat$LayoutParams, android.widget.LinearLayout$LayoutParams] */
    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.appcompat.widget.LinearLayoutCompat$LayoutParams, android.widget.LinearLayout$LayoutParams] */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.appcompat.widget.LinearLayoutCompat$LayoutParams, android.widget.LinearLayout$LayoutParams] */
    @Override // android.view.ViewGroup
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LinearLayout.LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LinearLayout.LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LinearLayout.LayoutParams(layoutParams);
    }

    public final boolean i(int i) {
        if (i == 0) {
            if ((this.r & 1) == 0) {
                return false;
            }
            return true;
        }
        if (i == getChildCount()) {
            if ((this.r & 4) == 0) {
                return false;
            }
            return true;
        }
        if ((this.r & 2) != 0) {
            for (int i2 = i - 1; i2 >= 0; i2--) {
                if (getChildAt(i2).getVisibility() != 8) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        boolean z;
        int right;
        int left;
        int i;
        int left2;
        int bottom;
        if (this.o != null) {
            int i2 = 0;
            if (this.h == 1) {
                int virtualChildCount = getVirtualChildCount();
                while (i2 < virtualChildCount) {
                    View childAt = getChildAt(i2);
                    if (childAt != null && childAt.getVisibility() != 8 && i(i2)) {
                        d((childAt.getTop() - ((LinearLayout.LayoutParams) ((LayoutParams) childAt.getLayoutParams())).topMargin) - this.q, canvas);
                    }
                    i2++;
                }
                if (i(virtualChildCount)) {
                    View childAt2 = getChildAt(virtualChildCount - 1);
                    if (childAt2 == null) {
                        bottom = (getHeight() - getPaddingBottom()) - this.q;
                    } else {
                        bottom = childAt2.getBottom() + ((LinearLayout.LayoutParams) ((LayoutParams) childAt2.getLayoutParams())).bottomMargin;
                    }
                    d(bottom, canvas);
                    return;
                }
                return;
            }
            int virtualChildCount2 = getVirtualChildCount();
            boolean z2 = ViewUtils.f351a;
            if (getLayoutDirection() == 1) {
                z = true;
            } else {
                z = false;
            }
            while (i2 < virtualChildCount2) {
                View childAt3 = getChildAt(i2);
                if (childAt3 != null && childAt3.getVisibility() != 8 && i(i2)) {
                    LayoutParams layoutParams = (LayoutParams) childAt3.getLayoutParams();
                    if (z) {
                        left2 = childAt3.getRight() + ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                    } else {
                        left2 = (childAt3.getLeft() - ((LinearLayout.LayoutParams) layoutParams).leftMargin) - this.p;
                    }
                    e(left2, canvas);
                }
                i2++;
            }
            if (i(virtualChildCount2)) {
                View childAt4 = getChildAt(virtualChildCount2 - 1);
                if (childAt4 == null) {
                    if (z) {
                        right = getPaddingLeft();
                    } else {
                        left = getWidth() - getPaddingRight();
                        i = this.p;
                        right = left - i;
                    }
                } else {
                    LayoutParams layoutParams2 = (LayoutParams) childAt4.getLayoutParams();
                    if (z) {
                        left = childAt4.getLeft() - ((LinearLayout.LayoutParams) layoutParams2).leftMargin;
                        i = this.p;
                        right = left - i;
                    } else {
                        right = childAt4.getRight() + ((LinearLayout.LayoutParams) layoutParams2).rightMargin;
                    }
                }
                e(right, canvas);
            }
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0191  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r23, int r24, int r25, int r26, int r27) {
        /*
            Method dump skipped, instructions count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:222:0x04f8  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x053d  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0547  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0526  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0148  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r39, int r40) {
        /*
            Method dump skipped, instructions count: 2150
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.onMeasure(int, int):void");
    }

    public void setBaselineAligned(boolean z) {
        this.f304c = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i >= 0 && i < getChildCount()) {
            this.f = i;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.o) {
            return;
        }
        this.o = drawable;
        boolean z = false;
        if (drawable != null) {
            this.p = drawable.getIntrinsicWidth();
            this.q = drawable.getIntrinsicHeight();
        } else {
            this.p = 0;
            this.q = 0;
        }
        if (drawable == null) {
            z = true;
        }
        setWillNotDraw(z);
        requestLayout();
    }

    public void setDividerPadding(int i) {
        this.s = i;
    }

    public void setGravity(@GravityInt int i) {
        if (this.i != i) {
            if ((8388615 & i) == 0) {
                i |= 8388611;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.i = i;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & 8388615;
        int i3 = this.i;
        if ((8388615 & i3) != i2) {
            this.i = i2 | ((-8388616) & i3);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.l = z;
    }

    public void setOrientation(int i) {
        if (this.h != i) {
            this.h = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.r) {
            requestLayout();
        }
        this.r = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        int i3 = this.i;
        if ((i3 & 112) != i2) {
            this.i = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.k = Math.max(0.0f, f);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }
}
