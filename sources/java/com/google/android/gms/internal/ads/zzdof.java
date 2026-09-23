package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzdof extends zzbkh implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzdpj {

    /* renamed from: c, reason: collision with root package name */
    public final WeakReference f5957c;
    public final HashMap f = new HashMap();
    public final HashMap g = new HashMap();
    public final HashMap h = new HashMap();
    public zzdnh i;
    public final zzbcm j;

    public zzdof(View view, HashMap hashMap, HashMap hashMap2) {
        ViewTreeObserver viewTreeObserver;
        view.setOnTouchListener(this);
        view.setOnClickListener(this);
        com.google.android.gms.ads.internal.zzt.zzC();
        zzceb.a(view, this);
        com.google.android.gms.ads.internal.zzt.zzC();
        zzced zzcedVar = new zzced(view, this);
        View view2 = (View) zzcedVar.f5077c.get();
        ViewTreeObserver viewTreeObserver2 = null;
        if (view2 != null && (viewTreeObserver = view2.getViewTreeObserver()) != null && viewTreeObserver.isAlive()) {
            viewTreeObserver2 = viewTreeObserver;
        }
        if (viewTreeObserver2 != null) {
            zzcedVar.a(viewTreeObserver2);
        }
        this.f5957c = new WeakReference(view);
        for (Map.Entry entry : hashMap.entrySet()) {
            String str = (String) entry.getKey();
            View view3 = (View) entry.getValue();
            if (view3 != null) {
                this.f.put(str, new WeakReference(view3));
                if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(str) && !"3011".equals(str)) {
                    view3.setOnTouchListener(this);
                    view3.setClickable(true);
                    view3.setOnClickListener(this);
                }
            }
        }
        this.h.putAll(this.f);
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            View view4 = (View) entry2.getValue();
            if (view4 != null) {
                this.g.put((String) entry2.getKey(), new WeakReference(view4));
                view4.setOnTouchListener(this);
                view4.setClickable(false);
            }
        }
        this.h.putAll(this.g);
        this.j = new zzbcm(view.getContext(), view);
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final FrameLayout F4() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final synchronized void P3(View view, String str) {
        this.h.put(str, new WeakReference(view));
        if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(str) && !"3011".equals(str)) {
            this.f.put(str, new WeakReference(view));
            view.setClickable(true);
            view.setOnClickListener(this);
            view.setOnTouchListener(this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final View f2() {
        return (View) this.f5957c.get();
    }

    @Override // android.view.View.OnClickListener
    public final synchronized void onClick(View view) {
        zzdnh zzdnhVar = this.i;
        if (zzdnhVar != null) {
            zzdnhVar.v(view, f2(), zzj(), zzk(), true);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final synchronized void onGlobalLayout() {
        zzdnh zzdnhVar = this.i;
        if (zzdnhVar != null) {
            zzdnhVar.x(f2(), zzj(), zzk(), zzdnh.f(f2()));
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final synchronized void onScrollChanged() {
        zzdnh zzdnhVar = this.i;
        if (zzdnhVar != null) {
            zzdnhVar.x(f2(), zzj(), zzk(), zzdnh.f(f2()));
        }
    }

    @Override // android.view.View.OnTouchListener
    public final synchronized boolean onTouch(View view, MotionEvent motionEvent) {
        zzdnh zzdnhVar = this.i;
        if (zzdnhVar != null) {
            zzdnhVar.w(view, motionEvent, f2());
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final synchronized View v2(String str) {
        WeakReference weakReference = (WeakReference) this.h.get(str);
        if (weakReference == null) {
            return null;
        }
        return (View) weakReference.get();
    }

    @Override // com.google.android.gms.internal.ads.zzbki
    public final synchronized void zzb(IObjectWrapper iObjectWrapper) {
        Object f2 = ObjectWrapper.f2(iObjectWrapper);
        if (!(f2 instanceof zzdnh)) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Not an instance of InternalNativeAd. This is most likely a transient error");
            return;
        }
        zzdnh zzdnhVar = this.i;
        if (zzdnhVar != null) {
            zzdnhVar.u(this);
        }
        zzdnh zzdnhVar2 = (zzdnh) f2;
        if (zzdnhVar2.p.b()) {
            this.i = zzdnhVar2;
            zzdnhVar2.t(this);
            this.i.h(f2());
        } else {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbki
    public final synchronized void zzc() {
        zzdnh zzdnhVar = this.i;
        if (zzdnhVar != null) {
            zzdnhVar.u(this);
            this.i = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbki
    public final synchronized void zzd(IObjectWrapper iObjectWrapper) {
        try {
            if (this.i != null) {
                Object f2 = ObjectWrapper.f2(iObjectWrapper);
                if (!(f2 instanceof View)) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Calling NativeAdViewHolderNonagonDelegate.setClickConfirmingView with wrong wrapped object");
                }
                this.i.A((View) f2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final zzbcm zzh() {
        return this.j;
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final synchronized Map zzj() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final synchronized Map zzk() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final synchronized Map zzl() {
        return this.g;
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    @Override // com.google.android.gms.internal.ads.zzdpj
    public final synchronized String zzn() {
        return "1007";
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final synchronized IObjectWrapper zzo() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final synchronized JSONObject zzp() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final synchronized JSONObject zzq() {
        zzdnh zzdnhVar = this.i;
        if (zzdnhVar != null) {
            return zzdnhVar.z(f2(), zzj(), zzk());
        }
        return null;
    }
}
