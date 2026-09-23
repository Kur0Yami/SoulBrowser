package androidx.mediarouter.app;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatDialog;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.TooltipCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import androidx.mediarouter.media.MediaRouterParams;

/* loaded from: classes.dex */
public class MediaRouteButton extends View {
    public static final SparseArray t = new SparseArray(2);
    public static final int[] u = {R.attr.state_checked};
    public static final int[] v = {R.attr.state_checkable};

    /* renamed from: c, reason: collision with root package name */
    public final MediaRouter f1282c;
    public final MediaRouterCallback f;
    public MediaRouteSelector g;
    public MediaRouteDialogFactory h;
    public boolean i;
    public boolean j;
    public RemoteIndicatorLoader k;
    public Drawable l;
    public int m;
    public int n;
    public int o;
    public final ColorStateList p;
    public final int q;
    public final int r;
    public boolean s;

    /* loaded from: classes.dex */
    public final class MediaRouterCallback extends MediaRouter.Callback {
        public MediaRouterCallback() {
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void a() {
            MediaRouteButton.this.b();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void b() {
            MediaRouteButton.this.b();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void c() {
            MediaRouteButton.this.b();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void d(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            MediaRouteButton.this.b();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void e(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            MediaRouteButton.this.b();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void h(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            MediaRouteButton.this.b();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void i(MediaRouter.RouteInfo routeInfo) {
            MediaRouteButton.this.b();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void k() {
            MediaRouteButton.this.b();
        }

        @Override // androidx.mediarouter.media.MediaRouter.Callback
        public final void n(MediaRouterParams mediaRouterParams) {
            boolean z;
            if (mediaRouterParams != null) {
                z = mediaRouterParams.e.getBoolean("androidx.mediarouter.media.MediaRouterParams.FIXED_CAST_ICON");
            } else {
                z = false;
            }
            MediaRouteButton mediaRouteButton = MediaRouteButton.this;
            if (mediaRouteButton.j != z) {
                mediaRouteButton.j = z;
                mediaRouteButton.refreshDrawableState();
            }
        }
    }

    /* loaded from: classes.dex */
    public final class RemoteIndicatorLoader extends AsyncTask<Void, Void, Drawable> {

        /* renamed from: a, reason: collision with root package name */
        public final int f1284a;
        public final Context b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ MediaRouteButton f1285c;

        public RemoteIndicatorLoader(int i, Context context, MediaRouteButton mediaRouteButton) {
            this.f1285c = mediaRouteButton;
            this.f1284a = i;
            this.b = context;
        }

        @Override // android.os.AsyncTask
        public final Drawable doInBackground(Void[] voidArr) {
            SparseArray sparseArray = MediaRouteButton.t;
            int i = this.f1284a;
            if (((Drawable.ConstantState) sparseArray.get(i)) == null) {
                return AppCompatResources.a(this.b, i);
            }
            return null;
        }

        @Override // android.os.AsyncTask
        public final void onCancelled(Drawable drawable) {
            Drawable drawable2 = drawable;
            if (drawable2 != null) {
                MediaRouteButton.t.put(this.f1284a, drawable2.getConstantState());
            }
            this.f1285c.k = null;
        }

        @Override // android.os.AsyncTask
        public final void onPostExecute(Drawable drawable) {
            Drawable drawable2 = drawable;
            int i = this.f1284a;
            MediaRouteButton mediaRouteButton = this.f1285c;
            if (drawable2 != null) {
                MediaRouteButton.t.put(i, drawable2.getConstantState());
                mediaRouteButton.k = null;
            } else {
                Drawable.ConstantState constantState = (Drawable.ConstantState) MediaRouteButton.t.get(i);
                if (constantState != null) {
                    drawable2 = constantState.newDrawable();
                }
                mediaRouteButton.k = null;
            }
            mediaRouteButton.setRemoteIndicatorDrawableInternal(drawable2);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MediaRouteButton(@androidx.annotation.NonNull android.content.Context r8, @androidx.annotation.Nullable android.util.AttributeSet r9) {
        /*
            r7 = this;
            int r5 = androidx.mediarouter.R.attr.mediaRouteButtonStyle
            int r0 = androidx.mediarouter.app.MediaRouterThemeHelper.f1336a
            android.view.ContextThemeWrapper r0 = new android.view.ContextThemeWrapper
            int r1 = androidx.mediarouter.app.MediaRouterThemeHelper.e(r8)
            r0.<init>(r8, r1)
            int r8 = androidx.mediarouter.R.attr.mediaRouteTheme
            int r8 = androidx.mediarouter.app.MediaRouterThemeHelper.g(r0, r8)
            if (r8 == 0) goto L1b
            android.view.ContextThemeWrapper r1 = new android.view.ContextThemeWrapper
            r1.<init>(r0, r8)
            r0 = r1
        L1b:
            r7.<init>(r0, r9, r5)
            androidx.mediarouter.media.MediaRouteSelector r8 = androidx.mediarouter.media.MediaRouteSelector.f1375c
            r7.g = r8
            androidx.mediarouter.app.MediaRouteDialogFactory r8 = androidx.mediarouter.app.MediaRouteDialogFactory.f1312a
            r7.h = r8
            android.content.Context r1 = r7.getContext()
            int[] r8 = androidx.mediarouter.R.styleable.MediaRouteButton
            r6 = 0
            android.content.res.TypedArray r4 = r1.obtainStyledAttributes(r9, r8, r5, r6)
            int[] r2 = androidx.mediarouter.R.styleable.MediaRouteButton
            r0 = r7
            r3 = r9
            androidx.core.view.ViewCompat.y(r0, r1, r2, r3, r4, r5)
            boolean r8 = r7.isInEditMode()
            if (r8 == 0) goto L50
            r8 = 0
            r0.f1282c = r8
            r0.f = r8
            int r8 = androidx.mediarouter.R.styleable.MediaRouteButton_externalRouteEnabledDrawableStatic
            int r8 = r4.getResourceId(r8, r6)
            android.graphics.drawable.Drawable r8 = androidx.appcompat.content.res.AppCompatResources.a(r1, r8)
            r0.l = r8
            return
        L50:
            androidx.mediarouter.media.MediaRouter r8 = androidx.mediarouter.media.MediaRouter.h(r1)
            r0.f1282c = r8
            androidx.mediarouter.app.MediaRouteButton$MediaRouterCallback r8 = new androidx.mediarouter.app.MediaRouteButton$MediaRouterCallback
            r8.<init>()
            r0.f = r8
            androidx.mediarouter.media.MediaRouter$RouteInfo r8 = androidx.mediarouter.media.MediaRouter.l()
            boolean r9 = r8.e()
            if (r9 != 0) goto L6a
            int r8 = r8.i
            goto L6b
        L6a:
            r8 = r6
        L6b:
            r0.o = r8
            r0.n = r8
            int r8 = androidx.mediarouter.R.styleable.MediaRouteButton_mediaRouteButtonTint
            android.content.res.ColorStateList r8 = r4.getColorStateList(r8)
            r0.p = r8
            int r8 = androidx.mediarouter.R.styleable.MediaRouteButton_android_minWidth
            int r8 = r4.getDimensionPixelSize(r8, r6)
            r0.q = r8
            int r8 = androidx.mediarouter.R.styleable.MediaRouteButton_android_minHeight
            int r8 = r4.getDimensionPixelSize(r8, r6)
            r0.r = r8
            int r8 = androidx.mediarouter.R.styleable.MediaRouteButton_externalRouteEnabledDrawableStatic
            int r8 = r4.getResourceId(r8, r6)
            int r9 = androidx.mediarouter.R.styleable.MediaRouteButton_externalRouteEnabledDrawable
            int r9 = r4.getResourceId(r9, r6)
            r0.m = r9
            r4.recycle()
            int r9 = r0.m
            android.util.SparseArray r1 = androidx.mediarouter.app.MediaRouteButton.t
            if (r9 == 0) goto Lad
            java.lang.Object r9 = r1.get(r9)
            android.graphics.drawable.Drawable$ConstantState r9 = (android.graphics.drawable.Drawable.ConstantState) r9
            if (r9 == 0) goto Lad
            android.graphics.drawable.Drawable r9 = r9.newDrawable()
            r7.setRemoteIndicatorDrawable(r9)
        Lad:
            android.graphics.drawable.Drawable r9 = r0.l
            if (r9 != 0) goto Ld9
            if (r8 == 0) goto Ld6
            java.lang.Object r9 = r1.get(r8)
            android.graphics.drawable.Drawable$ConstantState r9 = (android.graphics.drawable.Drawable.ConstantState) r9
            if (r9 == 0) goto Lc3
            android.graphics.drawable.Drawable r8 = r9.newDrawable()
            r7.setRemoteIndicatorDrawableInternal(r8)
            goto Ld9
        Lc3:
            androidx.mediarouter.app.MediaRouteButton$RemoteIndicatorLoader r9 = new androidx.mediarouter.app.MediaRouteButton$RemoteIndicatorLoader
            android.content.Context r1 = r7.getContext()
            r9.<init>(r8, r1, r7)
            r0.k = r9
            java.util.concurrent.Executor r8 = android.os.AsyncTask.SERIAL_EXECUTOR
            java.lang.Void[] r1 = new java.lang.Void[r6]
            r9.executeOnExecutor(r8, r1)
            goto Ld9
        Ld6:
            r7.a()
        Ld9:
            r7.e()
            r8 = 1
            r7.setClickable(r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteButton.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    private Activity getActivity() {
        for (Context context = getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }

    private FragmentManager getFragmentManager() {
        Activity activity = getActivity();
        if (activity instanceof FragmentActivity) {
            return ((FragmentActivity) activity).T();
        }
        return null;
    }

    public final void a() {
        if (this.m > 0) {
            RemoteIndicatorLoader remoteIndicatorLoader = this.k;
            if (remoteIndicatorLoader != null) {
                remoteIndicatorLoader.cancel(false);
            }
            RemoteIndicatorLoader remoteIndicatorLoader2 = new RemoteIndicatorLoader(this.m, getContext(), this);
            this.k = remoteIndicatorLoader2;
            this.m = 0;
            remoteIndicatorLoader2.executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
        }
    }

    public final void b() {
        int i;
        this.f1282c.getClass();
        MediaRouter.RouteInfo l = MediaRouter.l();
        if (!l.e()) {
            i = l.i;
        } else {
            i = 0;
        }
        if (this.o != i) {
            this.o = i;
            e();
            refreshDrawableState();
        }
        if (i == 1) {
            a();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x0083, code lost:
    
        if (androidx.mediarouter.app.SystemOutputSwitcherDialogController.a(r0) != false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0136, code lost:
    
        if (r0 != false) goto L37;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x013c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0094  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean c() {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteButton.c():boolean");
    }

    public final boolean d() {
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager != null) {
            this.f1282c.getClass();
            if (MediaRouter.l().e()) {
                if (fragmentManager.C("android.support.v7.mediarouter:MediaRouteChooserDialogFragment") != null) {
                    Log.w("MediaRouteButton", "showDialog(): Route chooser dialog already showing!");
                    return false;
                }
                this.h.getClass();
                MediaRouteChooserDialogFragment mediaRouteChooserDialogFragment = new MediaRouteChooserDialogFragment();
                MediaRouteSelector mediaRouteSelector = this.g;
                if (mediaRouteSelector != null) {
                    mediaRouteChooserDialogFragment.g();
                    if (!mediaRouteChooserDialogFragment.g.equals(mediaRouteSelector)) {
                        mediaRouteChooserDialogFragment.g = mediaRouteSelector;
                        Bundle arguments = mediaRouteChooserDialogFragment.getArguments();
                        if (arguments == null) {
                            arguments = new Bundle();
                        }
                        arguments.putBundle("selector", mediaRouteSelector.f1376a);
                        mediaRouteChooserDialogFragment.setArguments(arguments);
                        AppCompatDialog appCompatDialog = mediaRouteChooserDialogFragment.f;
                        if (appCompatDialog != null) {
                            if (mediaRouteChooserDialogFragment.f1291c) {
                                ((MediaRouteDynamicChooserDialog) appCompatDialog).f(mediaRouteSelector);
                            } else {
                                ((MediaRouteChooserDialog) appCompatDialog).g(mediaRouteSelector);
                            }
                        }
                    }
                    FragmentTransaction d = fragmentManager.d();
                    d.f(0, mediaRouteChooserDialogFragment, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment", 1);
                    d.d();
                    return true;
                }
                throw new IllegalArgumentException("selector must not be null");
            }
            if (fragmentManager.C("android.support.v7.mediarouter:MediaRouteControllerDialogFragment") != null) {
                Log.w("MediaRouteButton", "showDialog(): Route controller dialog already showing!");
                return false;
            }
            this.h.getClass();
            MediaRouteControllerDialogFragment mediaRouteControllerDialogFragment = new MediaRouteControllerDialogFragment();
            MediaRouteSelector mediaRouteSelector2 = this.g;
            if (mediaRouteSelector2 != null) {
                if (mediaRouteControllerDialogFragment.g == null) {
                    Bundle arguments2 = mediaRouteControllerDialogFragment.getArguments();
                    if (arguments2 != null) {
                        mediaRouteControllerDialogFragment.g = MediaRouteSelector.b(arguments2.getBundle("selector"));
                    }
                    if (mediaRouteControllerDialogFragment.g == null) {
                        mediaRouteControllerDialogFragment.g = MediaRouteSelector.f1375c;
                    }
                }
                if (!mediaRouteControllerDialogFragment.g.equals(mediaRouteSelector2)) {
                    mediaRouteControllerDialogFragment.g = mediaRouteSelector2;
                    Bundle arguments3 = mediaRouteControllerDialogFragment.getArguments();
                    if (arguments3 == null) {
                        arguments3 = new Bundle();
                    }
                    arguments3.putBundle("selector", mediaRouteSelector2.f1376a);
                    mediaRouteControllerDialogFragment.setArguments(arguments3);
                    AppCompatDialog appCompatDialog2 = mediaRouteControllerDialogFragment.f;
                    if (appCompatDialog2 != null && mediaRouteControllerDialogFragment.f1311c) {
                        ((MediaRouteDynamicControllerDialog) appCompatDialog2).h(mediaRouteSelector2);
                    }
                }
                FragmentTransaction d2 = fragmentManager.d();
                d2.f(0, mediaRouteControllerDialogFragment, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment", 1);
                d2.d();
                return true;
            }
            throw new IllegalArgumentException("selector must not be null");
        }
        throw new IllegalStateException("The activity must be a subclass of FragmentActivity");
    }

    @Override // android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.l != null) {
            this.l.setState(getDrawableState());
            if (this.l.getCurrent() instanceof AnimationDrawable) {
                AnimationDrawable animationDrawable = (AnimationDrawable) this.l.getCurrent();
                int i = this.o;
                if (i != 1 && this.n == i) {
                    if (i == 2 && !animationDrawable.isRunning()) {
                        animationDrawable.selectDrawable(animationDrawable.getNumberOfFrames() - 1);
                    }
                } else if (!animationDrawable.isRunning()) {
                    animationDrawable.start();
                }
            }
            invalidate();
        }
        this.n = this.o;
    }

    public final void e() {
        int i;
        int i2 = this.o;
        if (i2 != 1) {
            if (i2 != 2) {
                i = androidx.mediarouter.R.string.mr_cast_button_disconnected;
            } else {
                i = androidx.mediarouter.R.string.mr_cast_button_connected;
            }
        } else {
            i = androidx.mediarouter.R.string.mr_cast_button_connecting;
        }
        String string = getContext().getString(i);
        setContentDescription(string);
        if (!this.s || TextUtils.isEmpty(string)) {
            string = null;
        }
        TooltipCompat.a(this, string);
    }

    @NonNull
    public MediaRouteDialogFactory getDialogFactory() {
        return this.h;
    }

    @NonNull
    public MediaRouteSelector getRouteSelector() {
        return this.g;
    }

    @Override // android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.l;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode()) {
            return;
        }
        this.i = true;
        if (!this.g.d()) {
            this.f1282c.a(this.g, this.f, 0);
        }
        b();
    }

    @Override // android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.f1282c != null && !this.j) {
            int i2 = this.o;
            if (i2 != 1) {
                if (i2 == 2) {
                    View.mergeDrawableStates(onCreateDrawableState, u);
                    return onCreateDrawableState;
                }
            } else {
                View.mergeDrawableStates(onCreateDrawableState, v);
                return onCreateDrawableState;
            }
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        if (!isInEditMode()) {
            this.i = false;
            if (!this.g.d()) {
                this.f1282c.p(this.f);
            }
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.l != null) {
            int paddingLeft = getPaddingLeft();
            int width = getWidth() - getPaddingRight();
            int paddingTop = getPaddingTop();
            int height = getHeight() - getPaddingBottom();
            int intrinsicWidth = this.l.getIntrinsicWidth();
            int intrinsicHeight = this.l.getIntrinsicHeight();
            int i = (((width - paddingLeft) - intrinsicWidth) / 2) + paddingLeft;
            int i2 = (((height - paddingTop) - intrinsicHeight) / 2) + paddingTop;
            this.l.setBounds(i, i2, intrinsicWidth + i, intrinsicHeight + i2);
            this.l.draw(canvas);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        Drawable drawable = this.l;
        int i4 = 0;
        if (drawable != null) {
            i3 = getPaddingRight() + getPaddingLeft() + drawable.getIntrinsicWidth();
        } else {
            i3 = 0;
        }
        int max = Math.max(this.q, i3);
        Drawable drawable2 = this.l;
        if (drawable2 != null) {
            i4 = getPaddingBottom() + getPaddingTop() + drawable2.getIntrinsicHeight();
        }
        int max2 = Math.max(this.r, i4);
        if (mode != Integer.MIN_VALUE) {
            if (mode != 1073741824) {
                size = max;
            }
        } else {
            size = Math.min(size, max);
        }
        if (mode2 != Integer.MIN_VALUE) {
            if (mode2 != 1073741824) {
                size2 = max2;
            }
        } else {
            size2 = Math.min(size2, max2);
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    public final boolean performClick() {
        boolean performClick = super.performClick();
        if (!performClick) {
            playSoundEffect(0);
        }
        a();
        if (!c() && !performClick) {
            return false;
        }
        return true;
    }

    @Deprecated
    public void setAlwaysVisible(boolean z) {
    }

    public void setCheatSheetEnabled(boolean z) {
        if (z != this.s) {
            this.s = z;
            e();
        }
    }

    public void setDialogFactory(@NonNull MediaRouteDialogFactory mediaRouteDialogFactory) {
        if (mediaRouteDialogFactory != null) {
            this.h = mediaRouteDialogFactory;
            return;
        }
        throw new IllegalArgumentException("factory must not be null");
    }

    public void setRemoteIndicatorDrawable(@Nullable Drawable drawable) {
        this.m = 0;
        setRemoteIndicatorDrawableInternal(drawable);
    }

    public void setRemoteIndicatorDrawableInternal(Drawable drawable) {
        boolean z;
        RemoteIndicatorLoader remoteIndicatorLoader = this.k;
        if (remoteIndicatorLoader != null) {
            remoteIndicatorLoader.cancel(false);
        }
        Drawable drawable2 = this.l;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.l);
        }
        if (drawable != null) {
            ColorStateList colorStateList = this.p;
            if (colorStateList != null) {
                drawable = drawable.mutate();
                drawable.setTintList(colorStateList);
            }
            drawable.setCallback(this);
            drawable.setState(getDrawableState());
            if (getVisibility() == 0) {
                z = true;
            } else {
                z = false;
            }
            drawable.setVisible(z, false);
        }
        this.l = drawable;
        refreshDrawableState();
    }

    public void setRouteSelector(@NonNull MediaRouteSelector mediaRouteSelector) {
        if (mediaRouteSelector != null) {
            if (!this.g.equals(mediaRouteSelector)) {
                if (this.i) {
                    boolean d = this.g.d();
                    MediaRouterCallback mediaRouterCallback = this.f;
                    MediaRouter mediaRouter = this.f1282c;
                    if (!d) {
                        mediaRouter.p(mediaRouterCallback);
                    }
                    if (!mediaRouteSelector.d()) {
                        mediaRouter.a(mediaRouteSelector, mediaRouterCallback, 0);
                    }
                }
                this.g = mediaRouteSelector;
                b();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("selector must not be null");
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        boolean z;
        super.setVisibility(i);
        Drawable drawable = this.l;
        if (drawable != null) {
            if (i == 0) {
                z = true;
            } else {
                z = false;
            }
            drawable.setVisible(z, false);
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        if (!super.verifyDrawable(drawable) && drawable != this.l) {
            return false;
        }
        return true;
    }
}
