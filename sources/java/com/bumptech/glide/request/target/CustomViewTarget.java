package com.bumptech.glide.request.target;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.R;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.util.Preconditions;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class CustomViewTarget<T extends View, Z> implements Target<Z> {
    public static final int g = R.id.glide_custom_view_target_tag;

    /* renamed from: c, reason: collision with root package name */
    public final SizeDeterminer f2468c;
    public final View f;

    /* renamed from: com.bumptech.glide.request.target.CustomViewTarget$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 implements View.OnAttachStateChangeListener {
        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            throw null;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            throw null;
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public static final class SizeDeterminer {
        public static Integer d;

        /* renamed from: a, reason: collision with root package name */
        public final View f2469a;
        public final ArrayList b = new ArrayList();

        /* renamed from: c, reason: collision with root package name */
        public SizeDeterminerLayoutListener f2470c;

        /* loaded from: classes.dex */
        public static final class SizeDeterminerLayoutListener implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: c, reason: collision with root package name */
            public final WeakReference f2471c;

            public SizeDeterminerLayoutListener(SizeDeterminer sizeDeterminer) {
                this.f2471c = new WeakReference(sizeDeterminer);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                int i;
                int i2;
                if (Log.isLoggable("CustomViewTarget", 2)) {
                    Log.v("CustomViewTarget", "OnGlobalLayoutListener called attachStateListener=" + this);
                }
                SizeDeterminer sizeDeterminer = (SizeDeterminer) this.f2471c.get();
                if (sizeDeterminer != null) {
                    ArrayList arrayList = sizeDeterminer.b;
                    View view = sizeDeterminer.f2469a;
                    if (!arrayList.isEmpty()) {
                        int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
                        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                        int i3 = 0;
                        if (layoutParams != null) {
                            i = layoutParams.width;
                        } else {
                            i = 0;
                        }
                        int a2 = sizeDeterminer.a(view.getWidth(), i, paddingRight);
                        int paddingBottom = view.getPaddingBottom() + view.getPaddingTop();
                        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
                        if (layoutParams2 != null) {
                            i2 = layoutParams2.height;
                        } else {
                            i2 = 0;
                        }
                        int a3 = sizeDeterminer.a(view.getHeight(), i2, paddingBottom);
                        if ((a2 <= 0 && a2 != Integer.MIN_VALUE) || (a3 <= 0 && a3 != Integer.MIN_VALUE)) {
                            return true;
                        }
                        ArrayList arrayList2 = new ArrayList(arrayList);
                        int size = arrayList2.size();
                        while (i3 < size) {
                            Object obj = arrayList2.get(i3);
                            i3++;
                            ((SizeReadyCallback) obj).b(a2, a3);
                        }
                        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                        if (viewTreeObserver.isAlive()) {
                            viewTreeObserver.removeOnPreDrawListener(sizeDeterminer.f2470c);
                        }
                        sizeDeterminer.f2470c = null;
                        arrayList.clear();
                    }
                }
                return true;
            }
        }

        public SizeDeterminer(View view) {
            this.f2469a = view;
        }

        public final int a(int i, int i2, int i3) {
            int i4 = i2 - i3;
            if (i4 > 0) {
                return i4;
            }
            int i5 = i - i3;
            if (i5 > 0) {
                return i5;
            }
            View view = this.f2469a;
            if (!view.isLayoutRequested() && i2 == -2) {
                if (Log.isLoggable("CustomViewTarget", 4)) {
                    Log.i("CustomViewTarget", "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device's screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use .override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions.");
                }
                Context context = view.getContext();
                if (d == null) {
                    WindowManager windowManager = (WindowManager) context.getSystemService("window");
                    Preconditions.c(windowManager, "Argument must not be null");
                    Display defaultDisplay = windowManager.getDefaultDisplay();
                    Point point = new Point();
                    defaultDisplay.getSize(point);
                    d = Integer.valueOf(Math.max(point.x, point.y));
                }
                return d.intValue();
            }
            return 0;
        }
    }

    public CustomViewTarget(View view) {
        Preconditions.c(view, "Argument must not be null");
        this.f = view;
        this.f2468c = new SizeDeterminer(view);
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void c(SingleRequest singleRequest) {
        this.f2468c.b.remove(singleRequest);
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void e(Request request) {
        this.f.setTag(g, request);
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void f(SingleRequest singleRequest) {
        int i;
        SizeDeterminer sizeDeterminer = this.f2468c;
        ArrayList arrayList = sizeDeterminer.b;
        View view = sizeDeterminer.f2469a;
        int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int i2 = 0;
        if (layoutParams != null) {
            i = layoutParams.width;
        } else {
            i = 0;
        }
        int a2 = sizeDeterminer.a(view.getWidth(), i, paddingRight);
        int paddingBottom = view.getPaddingBottom() + view.getPaddingTop();
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        if (layoutParams2 != null) {
            i2 = layoutParams2.height;
        }
        int a3 = sizeDeterminer.a(view.getHeight(), i2, paddingBottom);
        if ((a2 <= 0 && a2 != Integer.MIN_VALUE) || (a3 <= 0 && a3 != Integer.MIN_VALUE)) {
            if (!arrayList.contains(singleRequest)) {
                arrayList.add(singleRequest);
            }
            if (sizeDeterminer.f2470c == null) {
                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                SizeDeterminer.SizeDeterminerLayoutListener sizeDeterminerLayoutListener = new SizeDeterminer.SizeDeterminerLayoutListener(sizeDeterminer);
                sizeDeterminer.f2470c = sizeDeterminerLayoutListener;
                viewTreeObserver.addOnPreDrawListener(sizeDeterminerLayoutListener);
                return;
            }
            return;
        }
        singleRequest.b(a2, a3);
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void h() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void i(Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public final Request j() {
        Object tag = this.f.getTag(g);
        if (tag != null) {
            if (tag instanceof Request) {
                return (Request) tag;
            }
            throw new IllegalArgumentException("You must not pass non-R.id ids to setTag(id)");
        }
        return null;
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void l(Drawable drawable) {
        SizeDeterminer sizeDeterminer = this.f2468c;
        ViewTreeObserver viewTreeObserver = sizeDeterminer.f2469a.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(sizeDeterminer.f2470c);
        }
        sizeDeterminer.f2470c = null;
        sizeDeterminer.b.clear();
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void m() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void onDestroy() {
    }

    public final String toString() {
        return "Target for: " + this.f;
    }
}
