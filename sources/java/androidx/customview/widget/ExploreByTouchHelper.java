package androidx.customview.widget;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.collection.SparseArrayCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.customview.widget.FocusStrategy;
import com.google.android.material.chip.Chip;
import java.util.ArrayList;
import java.util.WeakHashMap;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public abstract class ExploreByTouchHelper extends AccessibilityDelegateCompat {
    public static final Rect n = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, IntCompanionObject.MIN_VALUE, IntCompanionObject.MIN_VALUE);
    public static final FocusStrategy.BoundsAdapter o = new Object();
    public static final FocusStrategy.CollectionAdapter p = new Object();
    public final AccessibilityManager h;
    public final Chip i;
    public MyNodeProvider j;
    public final Rect d = new Rect();
    public final Rect e = new Rect();
    public final Rect f = new Rect();
    public final int[] g = new int[2];
    public int k = IntCompanionObject.MIN_VALUE;
    public int l = IntCompanionObject.MIN_VALUE;
    public int m = IntCompanionObject.MIN_VALUE;

    /* renamed from: androidx.customview.widget.ExploreByTouchHelper$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements FocusStrategy.BoundsAdapter<AccessibilityNodeInfoCompat> {
        @Override // androidx.customview.widget.FocusStrategy.BoundsAdapter
        public final void a(Object obj, Rect rect) {
            ((AccessibilityNodeInfoCompat) obj).f(rect);
        }
    }

    /* renamed from: androidx.customview.widget.ExploreByTouchHelper$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements FocusStrategy.CollectionAdapter<SparseArrayCompat<AccessibilityNodeInfoCompat>, AccessibilityNodeInfoCompat> {
    }

    /* loaded from: classes.dex */
    public class MyNodeProvider extends AccessibilityNodeProviderCompat {
        public MyNodeProvider() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public final AccessibilityNodeInfoCompat a(int i) {
            return new AccessibilityNodeInfoCompat(AccessibilityNodeInfo.obtain(ExploreByTouchHelper.this.n(i).f834a));
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public final AccessibilityNodeInfoCompat b(int i) {
            int i2;
            ExploreByTouchHelper exploreByTouchHelper = ExploreByTouchHelper.this;
            if (i == 2) {
                i2 = exploreByTouchHelper.k;
            } else {
                i2 = exploreByTouchHelper.l;
            }
            if (i2 == Integer.MIN_VALUE) {
                return null;
            }
            return a(i2);
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public final boolean c(int i, int i2, Bundle bundle) {
            int i3;
            ExploreByTouchHelper exploreByTouchHelper = ExploreByTouchHelper.this;
            Chip chip = exploreByTouchHelper.i;
            if (i != -1) {
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 64) {
                            if (i2 != 128) {
                                return exploreByTouchHelper.o(i, i2);
                            }
                            if (exploreByTouchHelper.k != i) {
                                return false;
                            }
                            exploreByTouchHelper.k = IntCompanionObject.MIN_VALUE;
                            chip.invalidate();
                            exploreByTouchHelper.t(i, 65536);
                            return true;
                        }
                        AccessibilityManager accessibilityManager = exploreByTouchHelper.h;
                        if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled() || (i3 = exploreByTouchHelper.k) == i) {
                            return false;
                        }
                        if (i3 != Integer.MIN_VALUE) {
                            exploreByTouchHelper.k = IntCompanionObject.MIN_VALUE;
                            chip.invalidate();
                            exploreByTouchHelper.t(i3, 65536);
                        }
                        exploreByTouchHelper.k = i;
                        chip.invalidate();
                        exploreByTouchHelper.t(i, 32768);
                        return true;
                    }
                    return exploreByTouchHelper.j(i);
                }
                return exploreByTouchHelper.s(i);
            }
            WeakHashMap weakHashMap = ViewCompat.f792a;
            return chip.performAccessibilityAction(i2, bundle);
        }
    }

    public ExploreByTouchHelper(Chip chip) {
        this.i = chip;
        this.h = (AccessibilityManager) chip.getContext().getSystemService("accessibility");
        chip.setFocusable(true);
        WeakHashMap weakHashMap = ViewCompat.f792a;
        if (chip.getImportantForAccessibility() == 0) {
            chip.setImportantForAccessibility(1);
        }
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final AccessibilityNodeProviderCompat b(View view) {
        if (this.j == null) {
            this.j = new MyNodeProvider();
        }
        return this.j;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        this.f760a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.f834a);
        p(accessibilityNodeInfoCompat);
    }

    public final boolean j(int i) {
        if (this.l != i) {
            return false;
        }
        this.l = IntCompanionObject.MIN_VALUE;
        r(i, false);
        t(i, 8);
        return true;
    }

    public final AccessibilityNodeInfoCompat k(int i) {
        boolean z;
        AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain();
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = new AccessibilityNodeInfoCompat(obtain);
        obtain.setEnabled(true);
        obtain.setFocusable(true);
        accessibilityNodeInfoCompat.k("android.view.View");
        Rect rect = n;
        obtain.setBoundsInParent(rect);
        obtain.setBoundsInScreen(rect);
        Chip chip = this.i;
        obtain.setParent(chip);
        q(i, accessibilityNodeInfoCompat);
        if (accessibilityNodeInfoCompat.g() == null && obtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        Rect rect2 = this.e;
        accessibilityNodeInfoCompat.f(rect2);
        if (!rect2.equals(rect)) {
            int actions = obtain.getActions();
            if ((actions & 64) == 0) {
                if ((actions & Uuid.SIZE_BITS) == 0) {
                    obtain.setPackageName(chip.getContext().getPackageName());
                    accessibilityNodeInfoCompat.b = i;
                    obtain.setSource(chip, i);
                    if (this.k == i) {
                        obtain.setAccessibilityFocused(true);
                        accessibilityNodeInfoCompat.a(Uuid.SIZE_BITS);
                    } else {
                        obtain.setAccessibilityFocused(false);
                        accessibilityNodeInfoCompat.a(64);
                    }
                    if (this.l == i) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        accessibilityNodeInfoCompat.a(2);
                    } else if (obtain.isFocusable()) {
                        accessibilityNodeInfoCompat.a(1);
                    }
                    obtain.setFocused(z);
                    int[] iArr = this.g;
                    chip.getLocationOnScreen(iArr);
                    Rect rect3 = this.d;
                    obtain.getBoundsInScreen(rect3);
                    if (rect3.equals(rect)) {
                        accessibilityNodeInfoCompat.f(rect3);
                        rect3.offset(iArr[0] - chip.getScrollX(), iArr[1] - chip.getScrollY());
                    }
                    Rect rect4 = this.f;
                    if (chip.getLocalVisibleRect(rect4)) {
                        rect4.offset(iArr[0] - chip.getScrollX(), iArr[1] - chip.getScrollY());
                        if (rect3.intersect(rect4)) {
                            obtain.setBoundsInScreen(rect3);
                            if (!rect3.isEmpty() && chip.getWindowVisibility() == 0) {
                                Object parent = chip.getParent();
                                while (true) {
                                    if (parent instanceof View) {
                                        View view = (View) parent;
                                        if (view.getAlpha() <= 0.0f || view.getVisibility() != 0) {
                                            break;
                                        }
                                        parent = view.getParent();
                                    } else if (parent != null) {
                                        accessibilityNodeInfoCompat.f834a.setVisibleToUser(true);
                                    }
                                }
                            }
                        }
                    }
                    return accessibilityNodeInfoCompat;
                }
                throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            }
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
    }

    public abstract void l(ArrayList arrayList);

    /* JADX WARN: Removed duplicated region for block: B:27:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m(int r19, android.graphics.Rect r20) {
        /*
            Method dump skipped, instructions count: 495
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.customview.widget.ExploreByTouchHelper.m(int, android.graphics.Rect):boolean");
    }

    public final AccessibilityNodeInfoCompat n(int i) {
        if (i == -1) {
            Chip chip = this.i;
            AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain(chip);
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = new AccessibilityNodeInfoCompat(obtain);
            WeakHashMap weakHashMap = ViewCompat.f792a;
            chip.onInitializeAccessibilityNodeInfo(obtain);
            ArrayList arrayList = new ArrayList();
            l(arrayList);
            if (obtain.getChildCount() > 0 && arrayList.size() > 0) {
                throw new RuntimeException("Views cannot have both real and virtual children");
            }
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                accessibilityNodeInfoCompat.f834a.addChild(chip, ((Integer) arrayList.get(i2)).intValue());
            }
            return accessibilityNodeInfoCompat;
        }
        return k(i);
    }

    public abstract boolean o(int i, int i2);

    public void p(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    public abstract void q(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat);

    public void r(int i, boolean z) {
    }

    public final boolean s(int i) {
        int i2;
        Chip chip = this.i;
        if ((chip.isFocused() || chip.requestFocus()) && (i2 = this.l) != i) {
            if (i2 != Integer.MIN_VALUE) {
                j(i2);
            }
            if (i == Integer.MIN_VALUE) {
                return false;
            }
            this.l = i;
            r(i, true);
            t(i, 8);
            return true;
        }
        return false;
    }

    public final void t(int i, int i2) {
        View view;
        ViewParent parent;
        AccessibilityEvent obtain;
        if (i != Integer.MIN_VALUE && this.h.isEnabled() && (parent = (view = this.i).getParent()) != null) {
            if (i != -1) {
                obtain = AccessibilityEvent.obtain(i2);
                AccessibilityNodeInfoCompat n2 = n(i);
                obtain.getText().add(n2.g());
                AccessibilityNodeInfo accessibilityNodeInfo = n2.f834a;
                obtain.setContentDescription(accessibilityNodeInfo.getContentDescription());
                obtain.setScrollable(accessibilityNodeInfo.isScrollable());
                obtain.setPassword(accessibilityNodeInfo.isPassword());
                obtain.setEnabled(accessibilityNodeInfo.isEnabled());
                obtain.setChecked(accessibilityNodeInfo.isChecked());
                if (obtain.getText().isEmpty() && obtain.getContentDescription() == null) {
                    throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
                }
                obtain.setClassName(accessibilityNodeInfo.getClassName());
                obtain.setSource(view, i);
                obtain.setPackageName(view.getContext().getPackageName());
            } else {
                obtain = AccessibilityEvent.obtain(i2);
                view.onInitializeAccessibilityEvent(obtain);
            }
            parent.requestSendAccessibilityEvent(view, obtain);
        }
    }
}
