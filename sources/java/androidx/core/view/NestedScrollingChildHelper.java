package androidx.core.view;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.view.ViewCompat;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class NestedScrollingChildHelper {

    /* renamed from: a, reason: collision with root package name */
    public ViewParent f781a;
    public ViewParent b;

    /* renamed from: c, reason: collision with root package name */
    public final ViewGroup f782c;
    public boolean d;
    public int[] e;

    public NestedScrollingChildHelper(ViewGroup viewGroup) {
        this.f782c = viewGroup;
    }

    public final boolean a(float f, float f2, boolean z) {
        ViewParent e;
        if (this.d && (e = e(0)) != null) {
            try {
                return e.onNestedFling(this.f782c, f, f2, z);
            } catch (AbstractMethodError e2) {
                Log.e("ViewParentCompat", "ViewParent " + e + " does not implement interface method onNestedFling", e2);
            }
        }
        return false;
    }

    public final boolean b(float f, float f2) {
        ViewParent e;
        if (this.d && (e = e(0)) != null) {
            try {
                return e.onNestedPreFling(this.f782c, f, f2);
            } catch (AbstractMethodError e2) {
                Log.e("ViewParentCompat", "ViewParent " + e + " does not implement interface method onNestedPreFling", e2);
            }
        }
        return false;
    }

    public final boolean c(int[] iArr, int[] iArr2, int i, int i2, int i3) {
        ViewParent e;
        int i4;
        int i5;
        ViewGroup viewGroup;
        if (!this.d || (e = e(i3)) == null) {
            return false;
        }
        if (i == 0 && i2 == 0) {
            if (iArr2 == null) {
                return false;
            }
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
        ViewGroup viewGroup2 = this.f782c;
        if (iArr2 != null) {
            viewGroup2.getLocationInWindow(iArr2);
            i4 = iArr2[0];
            i5 = iArr2[1];
        } else {
            i4 = 0;
            i5 = 0;
        }
        if (iArr == null) {
            if (this.e == null) {
                this.e = new int[2];
            }
            iArr = this.e;
        }
        int[] iArr3 = iArr;
        iArr3[0] = 0;
        iArr3[1] = 0;
        if (e instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) e).o(viewGroup2, i, i2, iArr3, i3);
            viewGroup = viewGroup2;
        } else {
            viewGroup = viewGroup2;
            if (i3 == 0) {
                try {
                    e.onNestedPreScroll(viewGroup, i, i2, iArr3);
                } catch (AbstractMethodError e2) {
                    Log.e("ViewParentCompat", "ViewParent " + e + " does not implement interface method onNestedPreScroll", e2);
                }
            }
        }
        if (iArr2 != null) {
            viewGroup.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i4;
            iArr2[1] = iArr2[1] - i5;
        }
        if (iArr3[0] == 0 && iArr3[1] == 0) {
            return false;
        }
        return true;
    }

    public final boolean d(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        ViewParent e;
        int i6;
        int i7;
        int[] iArr3;
        if (this.d && (e = e(i5)) != null) {
            if (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
                if (iArr != null) {
                    iArr[0] = 0;
                    iArr[1] = 0;
                    return false;
                }
            } else {
                ViewGroup viewGroup = this.f782c;
                if (iArr != null) {
                    viewGroup.getLocationInWindow(iArr);
                    i6 = iArr[0];
                    i7 = iArr[1];
                } else {
                    i6 = 0;
                    i7 = 0;
                }
                if (iArr2 == null) {
                    if (this.e == null) {
                        this.e = new int[2];
                    }
                    int[] iArr4 = this.e;
                    iArr4[0] = 0;
                    iArr4[1] = 0;
                    iArr3 = iArr4;
                } else {
                    iArr3 = iArr2;
                }
                if (e instanceof NestedScrollingParent3) {
                    ((NestedScrollingParent3) e).j(viewGroup, i, i2, i3, i4, i5, iArr3);
                } else {
                    iArr3[0] = iArr3[0] + i3;
                    iArr3[1] = iArr3[1] + i4;
                    if (e instanceof NestedScrollingParent2) {
                        ((NestedScrollingParent2) e).k(viewGroup, i, i2, i3, i4, i5);
                    } else if (i5 == 0) {
                        try {
                            e.onNestedScroll(viewGroup, i, i2, i3, i4);
                        } catch (AbstractMethodError e2) {
                            Log.e("ViewParentCompat", "ViewParent " + e + " does not implement interface method onNestedScroll", e2);
                        }
                    }
                }
                if (iArr != null) {
                    viewGroup.getLocationInWindow(iArr);
                    iArr[0] = iArr[0] - i6;
                    iArr[1] = iArr[1] - i7;
                }
                return true;
            }
        }
        return false;
    }

    public final ViewParent e(int i) {
        if (i != 0) {
            if (i != 1) {
                return null;
            }
            return this.b;
        }
        return this.f781a;
    }

    public final boolean f(int i) {
        if (e(i) != null) {
            return true;
        }
        return false;
    }

    public final void g(boolean z) {
        if (this.d) {
            WeakHashMap weakHashMap = ViewCompat.f792a;
            ViewCompat.Api21Impl.q(this.f782c);
        }
        this.d = z;
    }

    public final boolean h(int i, int i2) {
        boolean onStartNestedScroll;
        if (!f(i2)) {
            if (this.d) {
                View view = this.f782c;
                View view2 = view;
                for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
                    boolean z = parent instanceof NestedScrollingParent2;
                    if (z) {
                        onStartNestedScroll = ((NestedScrollingParent2) parent).l(view2, view, i, i2);
                    } else {
                        if (i2 == 0) {
                            try {
                                onStartNestedScroll = parent.onStartNestedScroll(view2, view, i);
                            } catch (AbstractMethodError e) {
                                Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onStartNestedScroll", e);
                            }
                        }
                        onStartNestedScroll = false;
                    }
                    if (onStartNestedScroll) {
                        if (i2 != 0) {
                            if (i2 == 1) {
                                this.b = parent;
                            }
                        } else {
                            this.f781a = parent;
                        }
                        if (z) {
                            ((NestedScrollingParent2) parent).m(view2, view, i, i2);
                        } else if (i2 == 0) {
                            try {
                                parent.onNestedScrollAccepted(view2, view, i);
                            } catch (AbstractMethodError e2) {
                                Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onNestedScrollAccepted", e2);
                            }
                        }
                    } else {
                        if (parent instanceof View) {
                            view2 = parent;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final void i(int i) {
        ViewParent e = e(i);
        if (e != null) {
            boolean z = e instanceof NestedScrollingParent2;
            ViewGroup viewGroup = this.f782c;
            if (z) {
                ((NestedScrollingParent2) e).n(viewGroup, i);
            } else if (i == 0) {
                try {
                    e.onStopNestedScroll(viewGroup);
                } catch (AbstractMethodError e2) {
                    Log.e("ViewParentCompat", "ViewParent " + e + " does not implement interface method onStopNestedScroll", e2);
                }
            }
            if (i != 0) {
                if (i == 1) {
                    this.b = null;
                    return;
                }
                return;
            }
            this.f781a = null;
        }
    }
}
