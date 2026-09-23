package androidx.drawerlayout.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.Openable;
import androidx.customview.widget.ViewDragHelper;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class DrawerLayout extends ViewGroup implements Openable {
    public static final int[] q = {R.attr.layout_gravity};
    public static final boolean r;
    public static final boolean s;
    public static final boolean t;

    /* renamed from: c, reason: collision with root package name */
    public float f982c;
    public float f;
    public boolean g;
    public boolean h;
    public int i;
    public int j;
    public int k;
    public int l;
    public DrawerListener m;
    public Drawable n;
    public WindowInsets o;
    public boolean p;

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements AccessibilityViewCommand {
        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
        public final boolean a(View view) {
            throw null;
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements View.OnApplyWindowInsetsListener {
        @Override // android.view.View.OnApplyWindowInsetsListener
        public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            boolean z;
            DrawerLayout drawerLayout = (DrawerLayout) view;
            boolean z2 = false;
            if (windowInsets.getSystemWindowInsetTop() > 0) {
                z = true;
            } else {
                z = false;
            }
            drawerLayout.o = windowInsets;
            drawerLayout.p = z;
            if (!z && drawerLayout.getBackground() == null) {
                z2 = true;
            }
            drawerLayout.setWillNotDraw(z2);
            drawerLayout.requestLayout();
            return windowInsets.consumeSystemWindowInsets();
        }
    }

    /* loaded from: classes.dex */
    public class AccessibilityDelegate extends AccessibilityDelegateCompat {
        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final boolean a(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() != 32) {
                return this.f760a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
            }
            accessibilityEvent.getText();
            throw null;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void c(View view, AccessibilityEvent accessibilityEvent) {
            super.c(view, accessibilityEvent);
            accessibilityEvent.setClassName("androidx.drawerlayout.widget.DrawerLayout");
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.f834a;
            boolean z = DrawerLayout.r;
            View.AccessibilityDelegate accessibilityDelegate = this.f760a;
            if (z) {
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            } else {
                AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain(accessibilityNodeInfo);
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, obtain);
                accessibilityNodeInfoCompat.b = -1;
                accessibilityNodeInfo.setSource(view);
                WeakHashMap weakHashMap = ViewCompat.f792a;
                Object parentForAccessibility = view.getParentForAccessibility();
                if (parentForAccessibility instanceof View) {
                    accessibilityNodeInfo.setParent((View) parentForAccessibility);
                }
                obtain.getBoundsInScreen(null);
                accessibilityNodeInfo.setBoundsInScreen(null);
                accessibilityNodeInfo.setVisibleToUser(obtain.isVisibleToUser());
                accessibilityNodeInfo.setPackageName(obtain.getPackageName());
                accessibilityNodeInfoCompat.k(obtain.getClassName());
                accessibilityNodeInfoCompat.n(obtain.getContentDescription());
                accessibilityNodeInfo.setEnabled(obtain.isEnabled());
                accessibilityNodeInfo.setFocused(obtain.isFocused());
                accessibilityNodeInfo.setAccessibilityFocused(obtain.isAccessibilityFocused());
                accessibilityNodeInfo.setSelected(obtain.isSelected());
                accessibilityNodeInfoCompat.a(obtain.getActions());
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = viewGroup.getChildAt(i);
                    if (DrawerLayout.e(childAt)) {
                        accessibilityNodeInfo.addChild(childAt);
                    }
                }
            }
            accessibilityNodeInfoCompat.k("androidx.drawerlayout.widget.DrawerLayout");
            accessibilityNodeInfo.setFocusable(false);
            accessibilityNodeInfo.setFocused(false);
            accessibilityNodeInfoCompat.i(AccessibilityNodeInfoCompat.AccessibilityActionCompat.e);
            accessibilityNodeInfoCompat.i(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (!DrawerLayout.r && !DrawerLayout.e(view)) {
                return false;
            }
            return this.f760a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }
    }

    /* loaded from: classes.dex */
    public static final class ChildAccessibilityDelegate extends AccessibilityDelegateCompat {
        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.f834a;
            this.f760a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            if (!DrawerLayout.e(view)) {
                accessibilityNodeInfo.setParent(null);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface DrawerListener {
        void a();
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public int f983a;
        public float b;

        /* renamed from: c, reason: collision with root package name */
        public int f984c;
    }

    /* loaded from: classes.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();
        public int g;
        public int h;
        public int i;
        public int j;
        public int k;

        /* renamed from: androidx.drawerlayout.widget.DrawerLayout$SavedState$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.g = 0;
            this.g = parcel.readInt();
            this.h = parcel.readInt();
            this.i = parcel.readInt();
            this.j = parcel.readInt();
            this.k = parcel.readInt();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.g);
            parcel.writeInt(this.h);
            parcel.writeInt(this.i);
            parcel.writeInt(this.j);
            parcel.writeInt(this.k);
        }
    }

    /* loaded from: classes.dex */
    public class ViewDragCallback extends ViewDragHelper.Callback {

        /* renamed from: androidx.drawerlayout.widget.DrawerLayout$ViewDragCallback$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements Runnable {
            @Override // java.lang.Runnable
            public final void run() {
                throw null;
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final int a(View view, int i) {
            throw null;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final int b(View view, int i) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final int c(View view) {
            throw null;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final void e(View view, int i) {
            ((LayoutParams) view.getLayoutParams()).getClass();
            throw null;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final void f(int i) {
            throw null;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final void g(View view, int i, int i2) {
            view.getWidth();
            throw null;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final void h(View view, float f, float f2) {
            throw null;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public final boolean i(View view, int i) {
            throw null;
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        boolean z = true;
        r = true;
        s = true;
        if (i < 29) {
            z = false;
        }
        t = z;
    }

    public static boolean e(View view) {
        WeakHashMap weakHashMap = ViewCompat.f792a;
        if (view.getImportantForAccessibility() != 4 && view.getImportantForAccessibility() != 2) {
            return true;
        }
        return false;
    }

    public static boolean f(View view) {
        if (((LayoutParams) view.getLayoutParams()).f983a == 0) {
            return true;
        }
        return false;
    }

    public static boolean g(View view) {
        if (h(view)) {
            if ((((LayoutParams) view.getLayoutParams()).f984c & 1) == 1) {
                return true;
            }
            return false;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    public static boolean h(View view) {
        int i = ((LayoutParams) view.getLayoutParams()).f983a;
        WeakHashMap weakHashMap = ViewCompat.f792a;
        int absoluteGravity = Gravity.getAbsoluteGravity(i, view.getLayoutDirection());
        if ((absoluteGravity & 3) != 0 || (absoluteGravity & 5) != 0) {
            return true;
        }
        return false;
    }

    public final boolean a(View view) {
        int i = ((LayoutParams) view.getLayoutParams()).f983a;
        WeakHashMap weakHashMap = ViewCompat.f792a;
        if ((Gravity.getAbsoluteGravity(i, getLayoutDirection()) & 3) == 3) {
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i, int i2) {
        if (getDescendantFocusability() == 393216) {
            return;
        }
        int childCount = getChildCount();
        boolean z = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (h(childAt)) {
                if (g(childAt)) {
                    childAt.addFocusables(arrayList, i, i2);
                    z = true;
                }
            } else {
                throw null;
            }
        }
        if (!z) {
            throw null;
        }
        throw null;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        View view2;
        super.addView(view, i, layoutParams);
        int childCount = getChildCount();
        int i2 = 0;
        while (true) {
            if (i2 < childCount) {
                view2 = getChildAt(i2);
                if ((((LayoutParams) view2.getLayoutParams()).f984c & 1) == 1) {
                    break;
                } else {
                    i2++;
                }
            } else {
                view2 = null;
                break;
            }
        }
        if (view2 == null && !h(view)) {
            WeakHashMap weakHashMap = ViewCompat.f792a;
            view.setImportantForAccessibility(1);
        } else {
            WeakHashMap weakHashMap2 = ViewCompat.f792a;
            view.setImportantForAccessibility(4);
        }
        if (!r) {
            ViewCompat.z(view, null);
        }
    }

    public final void b(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (h(childAt)) {
                if (z) {
                    layoutParams.getClass();
                } else {
                    childAt.getWidth();
                    if (a(childAt)) {
                        childAt.getTop();
                        throw null;
                    }
                    getWidth();
                    childAt.getTop();
                    throw null;
                }
            }
        }
        throw null;
    }

    public final View c(int i) {
        WeakHashMap weakHashMap = ViewCompat.f792a;
        int absoluteGravity = Gravity.getAbsoluteGravity(i, getLayoutDirection()) & 7;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int i3 = ((LayoutParams) childAt.getLayoutParams()).f983a;
            WeakHashMap weakHashMap2 = ViewCompat.f792a;
            if ((Gravity.getAbsoluteGravity(i3, getLayoutDirection()) & 7) == absoluteGravity) {
                return childAt;
            }
        }
        return null;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if ((layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams)) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public final void computeScroll() {
        int childCount = getChildCount();
        float f = 0.0f;
        for (int i = 0; i < childCount; i++) {
            f = Math.max(f, ((LayoutParams) getChildAt(i).getLayoutParams()).b);
        }
        this.f = f;
        throw null;
    }

    public final int d(View view) {
        int i;
        int i2;
        int i3;
        int i4;
        if (h(view)) {
            int i5 = ((LayoutParams) view.getLayoutParams()).f983a;
            WeakHashMap weakHashMap = ViewCompat.f792a;
            int layoutDirection = getLayoutDirection();
            if (i5 != 3) {
                if (i5 != 5) {
                    if (i5 != 8388611) {
                        if (i5 == 8388613) {
                            int i6 = this.l;
                            if (i6 != 3) {
                                return i6;
                            }
                            if (layoutDirection == 0) {
                                i4 = this.j;
                            } else {
                                i4 = this.i;
                            }
                            if (i4 != 3) {
                                return i4;
                            }
                            return 0;
                        }
                        return 0;
                    }
                    int i7 = this.k;
                    if (i7 != 3) {
                        return i7;
                    }
                    if (layoutDirection == 0) {
                        i3 = this.i;
                    } else {
                        i3 = this.j;
                    }
                    if (i3 != 3) {
                        return i3;
                    }
                    return 0;
                }
                int i8 = this.j;
                if (i8 != 3) {
                    return i8;
                }
                if (layoutDirection == 0) {
                    i2 = this.l;
                } else {
                    i2 = this.k;
                }
                if (i2 != 3) {
                    return i2;
                }
                return 0;
            }
            int i9 = this.i;
            if (i9 != 3) {
                return i9;
            }
            if (layoutDirection == 0) {
                i = this.k;
            } else {
                i = this.l;
            }
            if (i != 3) {
                return i;
            }
            return 0;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    @Override // android.view.View
    public final boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) != 0 && motionEvent.getAction() != 10 && this.f > 0.0f) {
            int childCount = getChildCount();
            if (childCount != 0) {
                motionEvent.getX();
                motionEvent.getY();
                int i = childCount - 1;
                if (i >= 0) {
                    getChildAt(i).getHitRect(null);
                    throw null;
                }
                return false;
            }
            return false;
        }
        return super.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        Drawable background;
        int height = getHeight();
        boolean f = f(view);
        int width = getWidth();
        int save = canvas.save();
        if (f) {
            int childCount = getChildCount();
            int i = 0;
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt != view && childAt.getVisibility() == 0 && (background = childAt.getBackground()) != null && background.getOpacity() == -1 && h(childAt) && childAt.getHeight() >= height) {
                    if (a(childAt)) {
                        int right = childAt.getRight();
                        if (right > i) {
                            i = right;
                        }
                    } else {
                        int left = childAt.getLeft();
                        if (left < width) {
                            width = left;
                        }
                    }
                }
            }
            canvas.clipRect(i, 0, width, getHeight());
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        if (this.f > 0.0f && f) {
            throw null;
        }
        return drawChild;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.view.ViewGroup$LayoutParams, android.view.ViewGroup$MarginLayoutParams, androidx.drawerlayout.widget.DrawerLayout$LayoutParams] */
    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        ?? marginLayoutParams = new ViewGroup.MarginLayoutParams(-1, -1);
        marginLayoutParams.f983a = 0;
        return marginLayoutParams;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [android.view.ViewGroup$LayoutParams, android.view.ViewGroup$MarginLayoutParams, androidx.drawerlayout.widget.DrawerLayout$LayoutParams] */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.view.ViewGroup$LayoutParams, android.view.ViewGroup$MarginLayoutParams, androidx.drawerlayout.widget.DrawerLayout$LayoutParams] */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.view.ViewGroup$LayoutParams, android.view.ViewGroup$MarginLayoutParams, androidx.drawerlayout.widget.DrawerLayout$LayoutParams] */
    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            ?? marginLayoutParams = new ViewGroup.MarginLayoutParams((ViewGroup.MarginLayoutParams) layoutParams2);
            marginLayoutParams.f983a = 0;
            marginLayoutParams.f983a = layoutParams2.f983a;
            return marginLayoutParams;
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ?? marginLayoutParams2 = new ViewGroup.MarginLayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
            marginLayoutParams2.f983a = 0;
            return marginLayoutParams2;
        }
        ?? marginLayoutParams3 = new ViewGroup.MarginLayoutParams(layoutParams);
        marginLayoutParams3.f983a = 0;
        return marginLayoutParams3;
    }

    public float getDrawerElevation() {
        if (s) {
            return this.f982c;
        }
        return 0.0f;
    }

    @Nullable
    public Drawable getStatusBarBackgroundDrawable() {
        return this.n;
    }

    public final void i(View view) {
        if (h(view)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (this.h) {
                layoutParams.b = 1.0f;
                layoutParams.f984c = 1;
                int childCount = getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = getChildAt(i);
                    if (childAt == view) {
                        WeakHashMap weakHashMap = ViewCompat.f792a;
                        childAt.setImportantForAccessibility(1);
                    } else {
                        WeakHashMap weakHashMap2 = ViewCompat.f792a;
                        childAt.setImportantForAccessibility(4);
                    }
                }
                AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat = AccessibilityNodeInfoCompat.AccessibilityActionCompat.l;
                ViewCompat.v(view, accessibilityActionCompat.a());
                ViewCompat.s(view, 0);
                if (g(view) && d(view) != 2) {
                    ViewCompat.w(view, accessibilityActionCompat, null);
                }
                invalidate();
                return;
            }
            layoutParams.f984c |= 2;
            if (a(view)) {
                view.getTop();
                throw null;
            }
            getWidth();
            view.getWidth();
            view.getTop();
            throw null;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    public final void j(int i, int i2) {
        View c2;
        WeakHashMap weakHashMap = ViewCompat.f792a;
        int absoluteGravity = Gravity.getAbsoluteGravity(i2, getLayoutDirection());
        if (i2 != 3) {
            if (i2 != 5) {
                if (i2 != 8388611) {
                    if (i2 == 8388613) {
                        this.l = i;
                    }
                } else {
                    this.k = i;
                }
            } else {
                this.j = i;
            }
        } else {
            this.i = i;
        }
        if (i == 0) {
            if (i != 1) {
                if (i == 2 && (c2 = c(absoluteGravity)) != null) {
                    i(c2);
                    return;
                }
                return;
            }
            View c3 = c(absoluteGravity);
            if (c3 != null) {
                if (h(c3)) {
                    LayoutParams layoutParams = (LayoutParams) c3.getLayoutParams();
                    if (this.h) {
                        layoutParams.b = 0.0f;
                        layoutParams.f984c = 0;
                        invalidate();
                        return;
                    }
                    layoutParams.f984c |= 4;
                    if (a(c3)) {
                        c3.getWidth();
                        c3.getTop();
                        throw null;
                    }
                    getWidth();
                    c3.getTop();
                    throw null;
                }
                throw new IllegalArgumentException("View " + c3 + " is not a sliding drawer");
            }
            return;
        }
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.h = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.h = true;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i;
        super.onDraw(canvas);
        if (this.p && this.n != null) {
            WindowInsets windowInsets = this.o;
            if (windowInsets != null) {
                i = windowInsets.getSystemWindowInsetTop();
            } else {
                i = 0;
            }
            if (i > 0) {
                this.n.setBounds(0, 0, getWidth(), i);
                this.n.draw(canvas);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        motionEvent.getActionMasked();
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0045, code lost:
    
        if (r2 == null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0047, code lost:
    
        r7.startTracking();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004b, code lost:
    
        return true;
     */
    @Override // android.view.View, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onKeyDown(int r6, android.view.KeyEvent r7) {
        /*
            r5 = this;
            r0 = 4
            if (r6 != r0) goto L4c
            int r0 = r5.getChildCount()
            r1 = 0
        L8:
            if (r1 >= r0) goto L44
            android.view.View r2 = r5.getChildAt(r1)
            boolean r3 = h(r2)
            if (r3 == 0) goto L41
            boolean r3 = h(r2)
            if (r3 == 0) goto L28
            android.view.ViewGroup$LayoutParams r3 = r2.getLayoutParams()
            androidx.drawerlayout.widget.DrawerLayout$LayoutParams r3 = (androidx.drawerlayout.widget.DrawerLayout.LayoutParams) r3
            float r3 = r3.b
            r4 = 0
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 <= 0) goto L41
            goto L45
        L28:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            java.lang.String r0 = "View "
            r7.<init>(r0)
            r7.append(r2)
            java.lang.String r0 = " is not a drawer"
            r7.append(r0)
            java.lang.String r7 = r7.toString()
            r6.<init>(r7)
            throw r6
        L41:
            int r1 = r1 + 1
            goto L8
        L44:
            r2 = 0
        L45:
            if (r2 == 0) goto L4c
            r7.startTracking()
            r6 = 1
            return r6
        L4c:
            boolean r6 = super.onKeyDown(r6, r7)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onKeyDown(int, android.view.KeyEvent):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0047, code lost:
    
        if (r2 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004d, code lost:
    
        if (d(r2) == 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0050, code lost:
    
        b(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0053, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0054, code lost:
    
        if (r2 == null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0056, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0058, code lost:
    
        return false;
     */
    @Override // android.view.View, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onKeyUp(int r6, android.view.KeyEvent r7) {
        /*
            r5 = this;
            r0 = 4
            if (r6 != r0) goto L59
            int r6 = r5.getChildCount()
            r7 = 0
            r0 = r7
        L9:
            r1 = 0
            if (r0 >= r6) goto L46
            android.view.View r2 = r5.getChildAt(r0)
            boolean r3 = h(r2)
            if (r3 == 0) goto L43
            boolean r3 = h(r2)
            if (r3 == 0) goto L2a
            android.view.ViewGroup$LayoutParams r3 = r2.getLayoutParams()
            androidx.drawerlayout.widget.DrawerLayout$LayoutParams r3 = (androidx.drawerlayout.widget.DrawerLayout.LayoutParams) r3
            float r3 = r3.b
            r4 = 0
            int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
            if (r3 <= 0) goto L43
            goto L47
        L2a:
            java.lang.IllegalArgumentException r6 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            java.lang.String r0 = "View "
            r7.<init>(r0)
            r7.append(r2)
            java.lang.String r0 = " is not a drawer"
            r7.append(r0)
            java.lang.String r7 = r7.toString()
            r6.<init>(r7)
            throw r6
        L43:
            int r0 = r0 + 1
            goto L9
        L46:
            r2 = r1
        L47:
            if (r2 == 0) goto L54
            int r6 = r5.d(r2)
            if (r6 == 0) goto L50
            goto L54
        L50:
            r5.b(r7)
            throw r1
        L54:
            if (r2 == 0) goto L58
            r6 = 1
            return r6
        L58:
            return r7
        L59:
            boolean r6 = super.onKeyUp(r6, r7)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onKeyUp(int, android.view.KeyEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        WindowInsets rootWindowInsets;
        float f;
        int i5;
        boolean z2;
        int i6;
        boolean z3 = true;
        this.g = true;
        int i7 = i3 - i;
        int childCount = getChildCount();
        int i8 = 0;
        while (i8 < childCount) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (f(childAt)) {
                    int i9 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    childAt.layout(i9, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, childAt.getMeasuredWidth() + i9, childAt.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin);
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (a(childAt)) {
                        float f2 = measuredWidth;
                        i5 = (-measuredWidth) + ((int) (layoutParams.b * f2));
                        f = (measuredWidth + i5) / f2;
                    } else {
                        float f3 = measuredWidth;
                        f = (i7 - r11) / f3;
                        i5 = i7 - ((int) (layoutParams.b * f3));
                    }
                    if (f != layoutParams.b) {
                        z2 = z3;
                    } else {
                        z2 = false;
                    }
                    int i10 = layoutParams.f983a & 112;
                    if (i10 != 16) {
                        if (i10 != 80) {
                            int i11 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                            childAt.layout(i5, i11, measuredWidth + i5, measuredHeight + i11);
                        } else {
                            int i12 = i4 - i2;
                            childAt.layout(i5, (i12 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i5, i12 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                        }
                    } else {
                        int i13 = i4 - i2;
                        int i14 = (i13 - measuredHeight) / 2;
                        int i15 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        if (i14 < i15) {
                            i14 = i15;
                        } else {
                            int i16 = i14 + measuredHeight;
                            int i17 = i13 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                            if (i16 > i17) {
                                i14 = i17 - measuredHeight;
                            }
                        }
                        childAt.layout(i5, i14, measuredWidth + i5, measuredHeight + i14);
                    }
                    if (z2) {
                        LayoutParams layoutParams2 = (LayoutParams) childAt.getLayoutParams();
                        if (f != layoutParams2.b) {
                            layoutParams2.b = f;
                            throw null;
                        }
                    }
                    if (layoutParams.b > 0.0f) {
                        i6 = 0;
                    } else {
                        i6 = 4;
                    }
                    if (childAt.getVisibility() != i6) {
                        childAt.setVisibility(i6);
                    }
                }
            }
            i8++;
            z3 = true;
        }
        if (t && (rootWindowInsets = getRootWindowInsets()) != null) {
            WindowInsetsCompat.o(null, rootWindowInsets).e();
            throw null;
        }
        this.g = false;
        this.h = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0048  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r18, int r19) {
        /*
            Method dump skipped, instructions count: 435
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        View c2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f936c);
        int i = savedState.g;
        if (i != 0 && (c2 = c(i)) != null) {
            i(c2);
        }
        int i2 = savedState.h;
        if (i2 != 3) {
            j(i2, 3);
        }
        int i3 = savedState.i;
        if (i3 != 3) {
            j(i3, 5);
        }
        int i4 = savedState.j;
        if (i4 != 3) {
            j(i4, 8388611);
        }
        int i5 = savedState.k;
        if (i5 != 3) {
            j(i5, 8388613);
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        if (s) {
            return;
        }
        WeakHashMap weakHashMap = ViewCompat.f792a;
        getLayoutDirection();
        getLayoutDirection();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.drawerlayout.widget.DrawerLayout$SavedState, android.os.Parcelable, androidx.customview.view.AbsSavedState] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        boolean z;
        ?? absSavedState = new AbsSavedState(super.onSaveInstanceState());
        absSavedState.g = 0;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i).getLayoutParams();
            int i2 = layoutParams.f984c;
            boolean z2 = true;
            if (i2 == 1) {
                z = true;
            } else {
                z = false;
            }
            if (i2 != 2) {
                z2 = false;
            }
            if (z || z2) {
                absSavedState.g = layoutParams.f983a;
                break;
            }
        }
        absSavedState.h = this.i;
        absSavedState.i = this.j;
        absSavedState.j = this.k;
        absSavedState.k = this.l;
        return absSavedState;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (!z) {
            return;
        }
        b(true);
        throw null;
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (!this.g) {
            super.requestLayout();
        }
    }

    public void setDrawerElevation(float f) {
        this.f982c = f;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (h(childAt)) {
                ViewCompat.E(childAt, this.f982c);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(DrawerListener drawerListener) {
        if (this.m == null) {
            if (drawerListener == null) {
                this.m = drawerListener;
                return;
            }
            throw null;
        }
        throw null;
    }

    public void setDrawerLockMode(int i) {
        j(i, 3);
        j(i, 5);
    }

    public void setScrimColor(@ColorInt int i) {
        invalidate();
    }

    public void setStatusBarBackground(@Nullable Drawable drawable) {
        this.n = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(@ColorInt int i) {
        this.n = new ColorDrawable(i);
        invalidate();
    }

    public void setStatusBarBackground(int i) {
        this.n = i != 0 ? getContext().getDrawable(i) : null;
        invalidate();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.view.ViewGroup$LayoutParams, android.view.ViewGroup$MarginLayoutParams, androidx.drawerlayout.widget.DrawerLayout$LayoutParams] */
    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        ?? marginLayoutParams = new ViewGroup.MarginLayoutParams(context, attributeSet);
        marginLayoutParams.f983a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q);
        marginLayoutParams.f983a = obtainStyledAttributes.getInt(0, 0);
        obtainStyledAttributes.recycle();
        return marginLayoutParams;
    }

    /* loaded from: classes.dex */
    public static abstract class SimpleDrawerListener implements DrawerListener {
        @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public final void a() {
        }
    }
}
