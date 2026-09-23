package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class zzbaa implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Application.ActivityLifecycleCallbacks {
    public static final Handler q = new Handler(Looper.getMainLooper());

    /* renamed from: c, reason: collision with root package name */
    public final Context f4523c;
    public final Application f;
    public final PowerManager g;
    public final KeyguardManager h;
    public BroadcastReceiver i;
    public final zzazm j;
    public WeakReference k;
    public WeakReference l;
    public final zzazi m;
    public byte n = -1;
    public int o = -1;
    public long p = -3;

    public zzbaa(Context context, zzazm zzazmVar) {
        Context applicationContext = context.getApplicationContext();
        this.f4523c = applicationContext;
        this.j = zzazmVar;
        this.g = (PowerManager) applicationContext.getSystemService("power");
        this.h = (KeyguardManager) applicationContext.getSystemService("keyguard");
        if (applicationContext instanceof Application) {
            this.f = (Application) applicationContext;
            this.m = new zzazi((Application) applicationContext, this);
        }
        a(null);
    }

    public final void a(View view) {
        View view2;
        long j;
        WeakReference weakReference = this.l;
        if (weakReference != null) {
            view2 = (View) weakReference.get();
        } else {
            view2 = null;
        }
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            e(view2);
        }
        this.l = new WeakReference(view);
        if (view != null) {
            if (view.getWindowToken() != null || view.getWindowVisibility() != 8) {
                d(view);
            }
            view.addOnAttachStateChangeListener(this);
            j = -2;
        } else {
            j = -3;
        }
        this.p = j;
    }

    public final void b(Activity activity, int i) {
        Window window;
        View view;
        if (this.l != null && (window = activity.getWindow()) != null) {
            View peekDecorView = window.peekDecorView();
            WeakReference weakReference = this.l;
            if (weakReference != null) {
                view = (View) weakReference.get();
            } else {
                view = null;
            }
            if (view != null && peekDecorView != null && view.getRootView() == peekDecorView.getRootView()) {
                this.o = i;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x0084, code lost:
    
        if ((r1.flags & 524288) != 0) goto L54;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c() {
        /*
            r9 = this;
            java.lang.ref.WeakReference r0 = r9.l
            if (r0 != 0) goto L6
            goto Lc2
        L6:
            r1 = 0
            if (r0 == 0) goto L10
            java.lang.Object r0 = r0.get()
            android.view.View r0 = (android.view.View) r0
            goto L11
        L10:
            r0 = r1
        L11:
            r2 = -1
            r3 = -3
            if (r0 != 0) goto L1b
            r9.p = r3
            r9.n = r2
            return
        L1b:
            int r5 = r0.getVisibility()
            r6 = 0
            if (r5 == 0) goto L24
            r5 = 1
            goto L25
        L24:
            r5 = r6
        L25:
            boolean r7 = r0.isShown()
            if (r7 != 0) goto L2d
            r5 = r5 | 2
        L2d:
            android.os.PowerManager r7 = r9.g
            if (r7 == 0) goto L39
            boolean r7 = r7.isScreenOn()
            if (r7 != 0) goto L39
            r5 = r5 | 4
        L39:
            com.google.android.gms.internal.ads.zzazm r7 = r9.j
            boolean r7 = r7.f4502a
            if (r7 != 0) goto L88
            android.app.KeyguardManager r7 = r9.h
            if (r7 == 0) goto L86
            boolean r7 = r7.inKeyguardRestrictedInputMode()
            if (r7 == 0) goto L86
            char[] r7 = com.google.android.gms.internal.ads.zzazw.f4516a
            android.view.View r7 = r0.getRootView()
            if (r7 != 0) goto L52
            r7 = r0
        L52:
            android.content.Context r7 = r7.getContext()
        L56:
            boolean r8 = r7 instanceof android.content.ContextWrapper
            if (r8 == 0) goto L6e
            r8 = 10
            if (r6 >= r8) goto L6e
            boolean r8 = r7 instanceof android.app.Activity
            if (r8 == 0) goto L65
            android.app.Activity r7 = (android.app.Activity) r7
            goto L6f
        L65:
            android.content.ContextWrapper r7 = (android.content.ContextWrapper) r7
            android.content.Context r7 = r7.getBaseContext()
            int r6 = r6 + 1
            goto L56
        L6e:
            r7 = r1
        L6f:
            if (r7 != 0) goto L72
            goto L86
        L72:
            android.view.Window r6 = r7.getWindow()
            if (r6 != 0) goto L79
            goto L7d
        L79:
            android.view.WindowManager$LayoutParams r1 = r6.getAttributes()
        L7d:
            if (r1 == 0) goto L86
            int r1 = r1.flags
            r6 = 524288(0x80000, float:7.34684E-40)
            r1 = r1 & r6
            if (r1 != 0) goto L88
        L86:
            r5 = r5 | 8
        L88:
            android.graphics.Rect r1 = new android.graphics.Rect
            r1.<init>()
            boolean r1 = r0.getGlobalVisibleRect(r1)
            if (r1 != 0) goto L95
            r5 = r5 | 16
        L95:
            android.graphics.Rect r1 = new android.graphics.Rect
            r1.<init>()
            boolean r1 = r0.getLocalVisibleRect(r1)
            if (r1 != 0) goto La2
            r5 = r5 | 32
        La2:
            int r0 = r0.getWindowVisibility()
            int r1 = r9.o
            if (r1 == r2) goto Lab
            r0 = r1
        Lab:
            if (r0 == 0) goto Laf
            r5 = r5 | 64
        Laf:
            byte r0 = r9.n
            if (r0 == r5) goto Lc2
            byte r0 = (byte) r5
            r9.n = r0
            if (r5 != 0) goto Lbd
            long r0 = android.os.SystemClock.elapsedRealtime()
            goto Lc0
        Lbd:
            long r0 = (long) r5
            long r0 = r3 - r0
        Lc0:
            r9.p = r0
        Lc2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbaa.c():void");
    }

    public final void d(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.k = new WeakReference(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.i == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            zzazz zzazzVar = new zzazz(this);
            this.i = zzazzVar;
            this.f4523c.registerReceiver(zzazzVar, intentFilter);
        }
        Application application = this.f;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.m);
            } catch (Exception unused) {
            }
        }
    }

    public final void e(View view) {
        try {
            WeakReference weakReference = this.k;
            if (weakReference != null) {
                ViewTreeObserver viewTreeObserver = (ViewTreeObserver) weakReference.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.k = null;
            }
        } catch (Exception unused) {
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception unused2) {
        }
        BroadcastReceiver broadcastReceiver = this.i;
        if (broadcastReceiver != null) {
            try {
                this.f4523c.unregisterReceiver(broadcastReceiver);
            } catch (Exception unused3) {
            }
            this.i = null;
        }
        Application application = this.f;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.m);
            } catch (Exception unused4) {
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        b(activity, 0);
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        b(activity, 4);
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        b(activity, 0);
        c();
        q.post(new zzazy(this));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        b(activity, 0);
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        c();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        c();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        c();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.o = -1;
        d(view);
        c();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.o = -1;
        c();
        q.post(new zzazy(this));
        e(view);
    }
}
