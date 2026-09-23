package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.google.android.gms.internal.ads.zzceb;

/* loaded from: classes.dex */
public final class zzci {

    /* renamed from: a, reason: collision with root package name */
    public final View f3148a;
    public Activity b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f3149c;
    public boolean d;
    public boolean e;
    public final ViewTreeObserver.OnGlobalLayoutListener f;

    public zzci(Activity activity, View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        this.b = activity;
        this.f3148a = view;
        this.f = onGlobalLayoutListener;
    }

    public final void a() {
        ViewTreeObserver viewTreeObserver;
        View decorView;
        if (!this.f3149c) {
            Activity activity = this.b;
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f;
            if (activity != null) {
                Window window = activity.getWindow();
                if (window != null && (decorView = window.getDecorView()) != null) {
                    viewTreeObserver = decorView.getViewTreeObserver();
                } else {
                    viewTreeObserver = null;
                }
                if (viewTreeObserver != null) {
                    viewTreeObserver.addOnGlobalLayoutListener(onGlobalLayoutListener);
                }
            }
            com.google.android.gms.ads.internal.zzt.zzC();
            zzceb.a(this.f3148a, onGlobalLayoutListener);
            this.f3149c = true;
        }
    }

    public final void zza(Activity activity) {
        this.b = activity;
    }

    public final void zzb() {
        this.e = true;
        if (this.d) {
            a();
        }
    }

    public final void zzc() {
        ViewTreeObserver viewTreeObserver;
        View decorView;
        this.e = false;
        Activity activity = this.b;
        if (activity != null && this.f3149c) {
            Window window = activity.getWindow();
            if (window != null && (decorView = window.getDecorView()) != null) {
                viewTreeObserver = decorView.getViewTreeObserver();
            } else {
                viewTreeObserver = null;
            }
            if (viewTreeObserver != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this.f);
            }
            this.f3149c = false;
        }
    }

    public final void zzd() {
        this.d = true;
        if (this.e) {
            a();
        }
    }

    public final void zze() {
        ViewTreeObserver viewTreeObserver;
        View decorView;
        this.d = false;
        Activity activity = this.b;
        if (activity != null && this.f3149c) {
            Window window = activity.getWindow();
            if (window != null && (decorView = window.getDecorView()) != null) {
                viewTreeObserver = decorView.getViewTreeObserver();
            } else {
                viewTreeObserver = null;
            }
            if (viewTreeObserver != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this.f);
            }
            this.f3149c = false;
        }
    }
}
