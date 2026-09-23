package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzdrr extends zzbqa implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzbji {

    /* renamed from: c, reason: collision with root package name */
    public View f6074c;
    public com.google.android.gms.ads.internal.client.zzed f;
    public zzdnh g;
    public boolean h;
    public boolean i;

    public final void c5(IObjectWrapper iObjectWrapper, zzbqe zzbqeVar) {
        String str;
        ViewTreeObserver viewTreeObserver;
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (this.h) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Instream ad can not be shown after destroy().");
            try {
                zzbqeVar.zzf(2);
                return;
            } catch (RemoteException e) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
                return;
            }
        }
        View view = this.f6074c;
        if (view != null && this.f != null) {
            if (this.i) {
                int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzf("Instream ad should not be used again.");
                try {
                    zzbqeVar.zzf(1);
                    return;
                } catch (RemoteException e2) {
                    int i4 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e2);
                    return;
                }
            }
            this.i = true;
            d5();
            ((ViewGroup) ObjectWrapper.f2(iObjectWrapper)).addView(this.f6074c, new ViewGroup.LayoutParams(-1, -1));
            com.google.android.gms.ads.internal.zzt.zzC();
            zzceb.a(this.f6074c, this);
            com.google.android.gms.ads.internal.zzt.zzC();
            zzced zzcedVar = new zzced(this.f6074c, this);
            View view2 = (View) zzcedVar.f5077c.get();
            ViewTreeObserver viewTreeObserver2 = null;
            if (view2 != null && (viewTreeObserver = view2.getViewTreeObserver()) != null && viewTreeObserver.isAlive()) {
                viewTreeObserver2 = viewTreeObserver;
            }
            if (viewTreeObserver2 != null) {
                zzcedVar.a(viewTreeObserver2);
            }
            e5();
            try {
                zzbqeVar.zze();
                return;
            } catch (RemoteException e3) {
                int i5 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e3);
                return;
            }
        }
        if (view == null) {
            str = "can not get video view.";
        } else {
            str = "can not get video controller.";
        }
        int i6 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzf("Instream internal error: ".concat(str));
        try {
            zzbqeVar.zzf(0);
        } catch (RemoteException e4) {
            int i7 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e4);
        }
    }

    public final void d5() {
        View view = this.f6074c;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f6074c);
            }
        }
    }

    public final void e5() {
        View view;
        zzdnh zzdnhVar = this.g;
        if (zzdnhVar != null && (view = this.f6074c) != null) {
            Map map = Collections.EMPTY_MAP;
            zzdnhVar.x(view, map, map, zzdnh.f(view));
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        e5();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        e5();
    }
}
