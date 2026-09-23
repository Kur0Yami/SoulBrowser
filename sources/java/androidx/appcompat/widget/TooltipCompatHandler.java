package androidx.appcompat.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.IBinder;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewConfigurationCompat;
import java.util.WeakHashMap;

/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo
/* loaded from: classes.dex */
public class TooltipCompatHandler implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {
    public static TooltipCompatHandler o;
    public static TooltipCompatHandler p;

    /* renamed from: c, reason: collision with root package name */
    public final View f346c;
    public final CharSequence f;
    public final int g;
    public final c h;
    public final c i;
    public int j;
    public int k;
    public TooltipPopup l;
    public boolean m;
    public boolean n = true;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.appcompat.widget.c] */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.appcompat.widget.c] */
    public TooltipCompatHandler(View view, CharSequence charSequence) {
        final int i = 0;
        this.h = new Runnable(this) { // from class: androidx.appcompat.widget.c
            public final /* synthetic */ TooltipCompatHandler f;

            {
                this.f = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i) {
                    case 0:
                        this.f.c(false);
                        return;
                    default:
                        this.f.a();
                        return;
                }
            }
        };
        final int i2 = 1;
        this.i = new Runnable(this) { // from class: androidx.appcompat.widget.c
            public final /* synthetic */ TooltipCompatHandler f;

            {
                this.f = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i2) {
                    case 0:
                        this.f.c(false);
                        return;
                    default:
                        this.f.a();
                        return;
                }
            }
        };
        this.f346c = view;
        this.f = charSequence;
        this.g = ViewConfigurationCompat.c(ViewConfiguration.get(view.getContext()));
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    public static void b(TooltipCompatHandler tooltipCompatHandler) {
        TooltipCompatHandler tooltipCompatHandler2 = o;
        if (tooltipCompatHandler2 != null) {
            tooltipCompatHandler2.f346c.removeCallbacks(tooltipCompatHandler2.h);
        }
        o = tooltipCompatHandler;
        if (tooltipCompatHandler != null) {
            tooltipCompatHandler.f346c.postDelayed(tooltipCompatHandler.h, ViewConfiguration.getLongPressTimeout());
        }
    }

    public final void a() {
        TooltipCompatHandler tooltipCompatHandler = p;
        View view = this.f346c;
        if (tooltipCompatHandler == this) {
            p = null;
            TooltipPopup tooltipPopup = this.l;
            if (tooltipPopup != null) {
                View view2 = tooltipPopup.b;
                if (view2.getParent() != null) {
                    ((WindowManager) tooltipPopup.f347a.getSystemService("window")).removeView(view2);
                }
                this.l = null;
                this.n = true;
                view.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (o == this) {
            b(null);
        }
        view.removeCallbacks(this.i);
    }

    public final void c(boolean z) {
        int height;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        long longPressTimeout;
        long j;
        long j2;
        View view = this.f346c;
        if (!view.isAttachedToWindow()) {
            return;
        }
        b(null);
        TooltipCompatHandler tooltipCompatHandler = p;
        if (tooltipCompatHandler != null) {
            tooltipCompatHandler.a();
        }
        p = this;
        this.m = z;
        TooltipPopup tooltipPopup = new TooltipPopup(view.getContext());
        this.l = tooltipPopup;
        int i8 = this.j;
        int i9 = this.k;
        boolean z2 = this.m;
        View view2 = tooltipPopup.b;
        ViewParent parent = view2.getParent();
        Context context = tooltipPopup.f347a;
        if (parent != null && view2.getParent() != null) {
            ((WindowManager) context.getSystemService("window")).removeView(view2);
        }
        tooltipPopup.f348c.setText(this.f);
        IBinder applicationWindowToken = view.getApplicationWindowToken();
        WindowManager.LayoutParams layoutParams = tooltipPopup.d;
        layoutParams.token = applicationWindowToken;
        int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_threshold);
        if (view.getWidth() < dimensionPixelOffset) {
            i8 = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = context.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_extra_offset);
            height = i9 + dimensionPixelOffset2;
            i = i9 - dimensionPixelOffset2;
        } else {
            height = view.getHeight();
            i = 0;
        }
        layoutParams.gravity = 49;
        Resources resources = context.getResources();
        if (z2) {
            i2 = R.dimen.tooltip_y_offset_touch;
        } else {
            i2 = R.dimen.tooltip_y_offset_non_touch;
        }
        int dimensionPixelOffset3 = resources.getDimensionPixelOffset(i2);
        View rootView = view.getRootView();
        ViewGroup.LayoutParams layoutParams2 = rootView.getLayoutParams();
        if (!(layoutParams2 instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams2).type != 2) {
            Context context2 = view.getContext();
            while (true) {
                if (!(context2 instanceof ContextWrapper)) {
                    break;
                }
                if (context2 instanceof Activity) {
                    rootView = ((Activity) context2).getWindow().getDecorView();
                    break;
                }
                context2 = ((ContextWrapper) context2).getBaseContext();
            }
        }
        if (rootView == null) {
            Log.e("TooltipPopup", "Cannot find app view");
            i6 = 1;
        } else {
            Rect rect = tooltipPopup.e;
            rootView.getWindowVisibleDisplayFrame(rect);
            if (rect.left < 0 && rect.top < 0) {
                Resources resources2 = context.getResources();
                i6 = 1;
                i3 = i8;
                i4 = i;
                int identifier = resources2.getIdentifier("status_bar_height", "dimen", "android");
                if (identifier != 0) {
                    i7 = resources2.getDimensionPixelSize(identifier);
                } else {
                    i7 = 0;
                }
                DisplayMetrics displayMetrics = resources2.getDisplayMetrics();
                i5 = 0;
                rect.set(0, i7, displayMetrics.widthPixels, displayMetrics.heightPixels);
            } else {
                i3 = i8;
                i4 = i;
                i5 = 0;
                i6 = 1;
            }
            int[] iArr = tooltipPopup.g;
            rootView.getLocationOnScreen(iArr);
            int[] iArr2 = tooltipPopup.f;
            view.getLocationOnScreen(iArr2);
            int i10 = iArr2[i5] - iArr[i5];
            iArr2[i5] = i10;
            iArr2[i6] = iArr2[i6] - iArr[i6];
            layoutParams.x = (i10 + i3) - (rootView.getWidth() / 2);
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i5, i5);
            view2.measure(makeMeasureSpec, makeMeasureSpec);
            int measuredHeight = view2.getMeasuredHeight();
            int i11 = iArr2[i6];
            int i12 = ((i11 + i4) - dimensionPixelOffset3) - measuredHeight;
            int i13 = i11 + height + dimensionPixelOffset3;
            if (z2) {
                if (i12 >= 0) {
                    layoutParams.y = i12;
                } else {
                    layoutParams.y = i13;
                }
            } else if (measuredHeight + i13 <= rect.height()) {
                layoutParams.y = i13;
            } else {
                layoutParams.y = i12;
            }
        }
        ((WindowManager) context.getSystemService("window")).addView(view2, layoutParams);
        view.addOnAttachStateChangeListener(this);
        if (this.m) {
            j2 = 2500;
        } else {
            WeakHashMap weakHashMap = ViewCompat.f792a;
            if ((view.getWindowSystemUiVisibility() & 1) == i6) {
                longPressTimeout = ViewConfiguration.getLongPressTimeout();
                j = 3000;
            } else {
                longPressTimeout = ViewConfiguration.getLongPressTimeout();
                j = 15000;
            }
            j2 = j - longPressTimeout;
        }
        c cVar = this.i;
        view.removeCallbacks(cVar);
        view.postDelayed(cVar, j2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0064, code lost:
    
        if (java.lang.Math.abs(r5 - r3.k) <= r2) goto L30;
     */
    @Override // android.view.View.OnHoverListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onHover(android.view.View r4, android.view.MotionEvent r5) {
        /*
            r3 = this;
            androidx.appcompat.widget.TooltipPopup r4 = r3.l
            r0 = 0
            if (r4 == 0) goto La
            boolean r4 = r3.m
            if (r4 == 0) goto La
            goto L6f
        La:
            android.view.View r4 = r3.f346c
            android.content.Context r1 = r4.getContext()
            java.lang.String r2 = "accessibility"
            java.lang.Object r1 = r1.getSystemService(r2)
            android.view.accessibility.AccessibilityManager r1 = (android.view.accessibility.AccessibilityManager) r1
            boolean r2 = r1.isEnabled()
            if (r2 == 0) goto L25
            boolean r1 = r1.isTouchExplorationEnabled()
            if (r1 == 0) goto L25
            goto L6f
        L25:
            int r1 = r5.getAction()
            r2 = 7
            if (r1 == r2) goto L38
            r4 = 10
            if (r1 == r4) goto L31
            goto L6f
        L31:
            r4 = 1
            r3.n = r4
            r3.a()
            return r0
        L38:
            boolean r4 = r4.isEnabled()
            if (r4 == 0) goto L6f
            androidx.appcompat.widget.TooltipPopup r4 = r3.l
            if (r4 != 0) goto L6f
            float r4 = r5.getX()
            int r4 = (int) r4
            float r5 = r5.getY()
            int r5 = (int) r5
            boolean r1 = r3.n
            if (r1 != 0) goto L66
            int r1 = r3.j
            int r1 = r4 - r1
            int r1 = java.lang.Math.abs(r1)
            int r2 = r3.g
            if (r1 > r2) goto L66
            int r1 = r3.k
            int r1 = r5 - r1
            int r1 = java.lang.Math.abs(r1)
            if (r1 <= r2) goto L6f
        L66:
            r3.j = r4
            r3.k = r5
            r3.n = r0
            b(r3)
        L6f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.TooltipCompatHandler.onHover(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.j = view.getWidth() / 2;
        this.k = view.getHeight() / 2;
        c(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        a();
    }
}
