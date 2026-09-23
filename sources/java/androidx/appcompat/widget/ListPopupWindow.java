package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.ShowableListMenu;
import java.lang.reflect.Method;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes.dex */
public class ListPopupWindow implements ShowableListMenu {
    public static final Method E;
    public static final Method F;
    public static final Method G;
    public final Rect A;
    public Rect B;
    public boolean C;
    public final PopupWindow D;

    /* renamed from: c, reason: collision with root package name */
    public final Context f307c;
    public ListAdapter f;
    public DropDownListView g;
    public final int h;
    public int i;
    public int j;
    public int k;
    public final int l;
    public boolean m;
    public boolean n;
    public boolean o;
    public int p;
    public final int q;
    public DataSetObserver r;
    public View s;
    public AdapterView.OnItemClickListener t;
    public AdapterView.OnItemSelectedListener u;
    public final ResizePopupRunnable v;
    public final PopupTouchInterceptor w;
    public final PopupScrollListener x;
    public final ListSelectorHider y;
    public final Handler z;

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends ForwardingListener {
        @Override // androidx.appcompat.widget.ForwardingListener
        public final /* bridge */ /* synthetic */ ShowableListMenu b() {
            return null;
        }
    }

    /* renamed from: androidx.appcompat.widget.ListPopupWindow$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api24Impl {
        @DoNotInline
        public static int a(PopupWindow popupWindow, View view, int i, boolean z) {
            return popupWindow.getMaxAvailableHeight(view, i, z);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api29Impl {
        @DoNotInline
        public static void a(PopupWindow popupWindow, Rect rect) {
            popupWindow.setEpicenterBounds(rect);
        }

        @DoNotInline
        public static void b(PopupWindow popupWindow, boolean z) {
            popupWindow.setIsClippedToScreen(z);
        }
    }

    /* loaded from: classes.dex */
    public class ListSelectorHider implements Runnable {
        public ListSelectorHider() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            DropDownListView dropDownListView = ListPopupWindow.this.g;
            if (dropDownListView != null) {
                dropDownListView.setListSelectionHidden(true);
                dropDownListView.requestLayout();
            }
        }
    }

    /* loaded from: classes.dex */
    public class PopupDataSetObserver extends DataSetObserver {
        public PopupDataSetObserver() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            if (listPopupWindow.D.isShowing()) {
                listPopupWindow.b();
            }
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            ListPopupWindow.this.dismiss();
        }
    }

    /* loaded from: classes.dex */
    public class PopupScrollListener implements AbsListView.OnScrollListener {
        public PopupScrollListener() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScrollStateChanged(AbsListView absListView, int i) {
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            ResizePopupRunnable resizePopupRunnable = listPopupWindow.v;
            PopupWindow popupWindow = listPopupWindow.D;
            if (i == 1 && popupWindow.getInputMethodMode() != 2 && popupWindow.getContentView() != null) {
                listPopupWindow.z.removeCallbacks(resizePopupRunnable);
                resizePopupRunnable.run();
            }
        }
    }

    /* loaded from: classes.dex */
    public class PopupTouchInterceptor implements View.OnTouchListener {
        public PopupTouchInterceptor() {
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            PopupWindow popupWindow;
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            if (action == 0 && (popupWindow = listPopupWindow.D) != null && popupWindow.isShowing() && x >= 0 && x < listPopupWindow.D.getWidth() && y >= 0 && y < listPopupWindow.D.getHeight()) {
                listPopupWindow.z.postDelayed(listPopupWindow.v, 250L);
                return false;
            }
            if (action == 1) {
                listPopupWindow.z.removeCallbacks(listPopupWindow.v);
                return false;
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public class ResizePopupRunnable implements Runnable {
        public ResizePopupRunnable() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            DropDownListView dropDownListView = listPopupWindow.g;
            if (dropDownListView != null && dropDownListView.isAttachedToWindow() && listPopupWindow.g.getCount() > listPopupWindow.g.getChildCount() && listPopupWindow.g.getChildCount() <= listPopupWindow.q) {
                listPopupWindow.D.setInputMethodMode(2);
                listPopupWindow.b();
            }
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        Class cls = Boolean.TYPE;
        if (i <= 28) {
            try {
                E = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", cls);
            } catch (NoSuchMethodException unused) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                G = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                F = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, cls);
            } catch (NoSuchMethodException unused3) {
                Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
            }
        }
    }

    public ListPopupWindow(Context context) {
        this(context, null, R.attr.listPopupWindowStyle, 0);
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final boolean a() {
        return this.D.isShowing();
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final void b() {
        int i;
        boolean z;
        int a2;
        int makeMeasureSpec;
        int i2;
        int i3;
        boolean z2;
        DropDownListView dropDownListView;
        int i4;
        int i5;
        DropDownListView dropDownListView2 = this.g;
        Context context = this.f307c;
        PopupWindow popupWindow = this.D;
        if (dropDownListView2 == null) {
            DropDownListView q = q(context, !this.C);
            this.g = q;
            q.setAdapter(this.f);
            this.g.setOnItemClickListener(this.t);
            this.g.setFocusable(true);
            this.g.setFocusableInTouchMode(true);
            this.g.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: androidx.appcompat.widget.ListPopupWindow.3
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public final void onItemSelected(AdapterView adapterView, View view, int i6, long j) {
                    DropDownListView dropDownListView3;
                    if (i6 != -1 && (dropDownListView3 = ListPopupWindow.this.g) != null) {
                        dropDownListView3.setListSelectionHidden(false);
                    }
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public final void onNothingSelected(AdapterView adapterView) {
                }
            });
            this.g.setOnScrollListener(this.x);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.u;
            if (onItemSelectedListener != null) {
                this.g.setOnItemSelectedListener(onItemSelectedListener);
            }
            popupWindow.setContentView(this.g);
        }
        Drawable background = popupWindow.getBackground();
        Rect rect = this.A;
        int i6 = 0;
        if (background != null) {
            background.getPadding(rect);
            int i7 = rect.top;
            i = rect.bottom + i7;
            if (!this.m) {
                this.k = -i7;
            }
        } else {
            rect.setEmpty();
            i = 0;
        }
        if (popupWindow.getInputMethodMode() == 2) {
            z = true;
        } else {
            z = false;
        }
        View view = this.s;
        int i8 = this.k;
        if (Build.VERSION.SDK_INT <= 23) {
            Method method = F;
            if (method != null) {
                try {
                    a2 = ((Integer) method.invoke(popupWindow, view, Integer.valueOf(i8), Boolean.valueOf(z))).intValue();
                } catch (Exception unused) {
                    Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
                }
            }
            a2 = popupWindow.getMaxAvailableHeight(view, i8);
        } else {
            a2 = Api24Impl.a(popupWindow, view, i8, z);
        }
        int i9 = this.h;
        if (i9 == -1) {
            i3 = a2 + i;
        } else {
            int i10 = this.i;
            if (i10 != -2) {
                if (i10 != -1) {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i10, 1073741824);
                } else {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), 1073741824);
                }
            } else {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), IntCompanionObject.MIN_VALUE);
            }
            int a3 = this.g.a(makeMeasureSpec, a2);
            if (a3 > 0) {
                i2 = this.g.getPaddingBottom() + this.g.getPaddingTop() + i;
            } else {
                i2 = 0;
            }
            i3 = a3 + i2;
        }
        if (popupWindow.getInputMethodMode() == 2) {
            z2 = true;
        } else {
            z2 = false;
        }
        popupWindow.setWindowLayoutType(this.l);
        if (popupWindow.isShowing()) {
            if (this.s.isAttachedToWindow()) {
                int i11 = this.i;
                if (i11 == -1) {
                    i11 = -1;
                } else if (i11 == -2) {
                    i11 = this.s.getWidth();
                }
                if (i9 == -1) {
                    if (z2) {
                        i9 = i3;
                    } else {
                        i9 = -1;
                    }
                    if (z2) {
                        if (this.i == -1) {
                            i5 = -1;
                        } else {
                            i5 = 0;
                        }
                        popupWindow.setWidth(i5);
                        popupWindow.setHeight(0);
                    } else {
                        if (this.i == -1) {
                            i6 = -1;
                        }
                        popupWindow.setWidth(i6);
                        popupWindow.setHeight(-1);
                    }
                } else if (i9 == -2) {
                    i9 = i3;
                }
                popupWindow.setOutsideTouchable(true);
                int i12 = i11;
                View view2 = this.s;
                int i13 = this.j;
                int i14 = this.k;
                if (i12 < 0) {
                    i4 = -1;
                } else {
                    i4 = i12;
                }
                if (i9 < 0) {
                    i9 = -1;
                }
                popupWindow.update(view2, i13, i14, i4, i9);
                return;
            }
            return;
        }
        int i15 = this.i;
        if (i15 == -1) {
            i15 = -1;
        } else if (i15 == -2) {
            i15 = this.s.getWidth();
        }
        if (i9 == -1) {
            i9 = -1;
        } else if (i9 == -2) {
            i9 = i3;
        }
        popupWindow.setWidth(i15);
        popupWindow.setHeight(i9);
        if (Build.VERSION.SDK_INT <= 28) {
            Method method2 = E;
            if (method2 != null) {
                try {
                    method2.invoke(popupWindow, Boolean.TRUE);
                } catch (Exception unused2) {
                    Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                }
            }
        } else {
            Api29Impl.b(popupWindow, true);
        }
        popupWindow.setOutsideTouchable(true);
        popupWindow.setTouchInterceptor(this.w);
        if (this.o) {
            popupWindow.setOverlapAnchor(this.n);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method3 = G;
            if (method3 != null) {
                try {
                    method3.invoke(popupWindow, this.B);
                } catch (Exception e) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e);
                }
            }
        } else {
            Api29Impl.a(popupWindow, this.B);
        }
        popupWindow.showAsDropDown(this.s, this.j, this.k, this.p);
        this.g.setSelection(-1);
        if ((!this.C || this.g.isInTouchMode()) && (dropDownListView = this.g) != null) {
            dropDownListView.setListSelectionHidden(true);
            dropDownListView.requestLayout();
        }
        if (!this.C) {
            this.z.post(this.y);
        }
    }

    public final int c() {
        return this.j;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final void dismiss() {
        PopupWindow popupWindow = this.D;
        popupWindow.dismiss();
        popupWindow.setContentView(null);
        this.g = null;
        this.z.removeCallbacks(this.v);
    }

    public final void e(int i) {
        this.j = i;
    }

    public final Drawable h() {
        return this.D.getBackground();
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final ListView i() {
        return this.g;
    }

    public final void k(Drawable drawable) {
        this.D.setBackgroundDrawable(drawable);
    }

    public final void l(int i) {
        this.k = i;
        this.m = true;
    }

    public final int o() {
        if (!this.m) {
            return 0;
        }
        return this.k;
    }

    public void p(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.r;
        if (dataSetObserver == null) {
            this.r = new PopupDataSetObserver();
        } else {
            ListAdapter listAdapter2 = this.f;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.r);
        }
        DropDownListView dropDownListView = this.g;
        if (dropDownListView != null) {
            dropDownListView.setAdapter(this.f);
        }
    }

    public DropDownListView q(Context context, boolean z) {
        return new DropDownListView(context, z);
    }

    public final void r(int i) {
        Drawable background = this.D.getBackground();
        if (background != null) {
            Rect rect = this.A;
            background.getPadding(rect);
            this.i = rect.left + rect.right + i;
            return;
        }
        this.i = i;
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        this.h = -2;
        this.i = -2;
        this.l = 1002;
        this.p = 0;
        this.q = Integer.MAX_VALUE;
        this.v = new ResizePopupRunnable();
        this.w = new PopupTouchInterceptor();
        this.x = new PopupScrollListener();
        this.y = new ListSelectorHider();
        this.A = new Rect();
        this.f307c = context;
        this.z = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ListPopupWindow, i, 0);
        this.j = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
        this.k = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.m = true;
        }
        obtainStyledAttributes.recycle();
        PopupWindow popupWindow = new PopupWindow(context, attributeSet, i, 0);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.PopupWindow, i, 0);
        TintTypedArray tintTypedArray = new TintTypedArray(context, obtainStyledAttributes2);
        if (obtainStyledAttributes2.hasValue(R.styleable.PopupWindow_overlapAnchor)) {
            popupWindow.setOverlapAnchor(obtainStyledAttributes2.getBoolean(R.styleable.PopupWindow_overlapAnchor, false));
        }
        popupWindow.setBackgroundDrawable(tintTypedArray.b(R.styleable.PopupWindow_android_popupBackground));
        tintTypedArray.f();
        this.D = popupWindow;
        popupWindow.setInputMethodMode(1);
    }
}
