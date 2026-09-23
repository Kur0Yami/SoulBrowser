package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzdoh extends zzbkb implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzdpj {
    public static final zzgtd s;

    /* renamed from: c, reason: collision with root package name */
    public final String f5959c;
    public FrameLayout g;
    public FrameLayout h;
    public final zzgyw i;
    public View j;
    public zzdnh l;
    public zzbcm m;
    public zzbjv o;
    public boolean p;
    public GestureDetector r;
    public HashMap f = new HashMap();
    public IObjectWrapper n = null;
    public boolean q = false;
    public final int k = ModuleDescriptor.MODULE_VERSION;

    static {
        zzgvs zzgvsVar = zzgtd.f;
        Object[] objArr = {"2011", "1009", "3010"};
        zzguw.a(3, objArr);
        s = zzgtd.x(3, objArr);
    }

    public zzdoh(FrameLayout frameLayout, FrameLayout frameLayout2) {
        String str;
        ViewTreeObserver viewTreeObserver;
        ViewTreeObserver viewTreeObserver2 = null;
        this.g = frameLayout;
        this.h = frameLayout2;
        String canonicalName = frameLayout.getClass().getCanonicalName();
        if ("com.google.android.gms.ads.formats.NativeContentAdView".equals(canonicalName)) {
            str = "1007";
        } else if ("com.google.android.gms.ads.formats.NativeAppInstallAdView".equals(canonicalName)) {
            str = "2009";
        } else {
            "com.google.android.gms.ads.formats.UnifiedNativeAdView".equals(canonicalName);
            str = "3012";
        }
        this.f5959c = str;
        com.google.android.gms.ads.internal.zzt.zzC();
        zzceb.a(frameLayout, this);
        com.google.android.gms.ads.internal.zzt.zzC();
        zzced zzcedVar = new zzced(frameLayout, this);
        View view = (View) zzcedVar.f5077c.get();
        if (view != null && (viewTreeObserver = view.getViewTreeObserver()) != null && viewTreeObserver.isAlive()) {
            viewTreeObserver2 = viewTreeObserver;
        }
        if (viewTreeObserver2 != null) {
            zzcedVar.a(viewTreeObserver2);
        }
        this.i = zzcdo.f;
        this.m = new zzbcm(this.g.getContext(), this.g);
        frameLayout.setOnTouchListener(this);
        frameLayout.setOnClickListener(this);
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final FrameLayout F4() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final synchronized void P3(View view, String str) {
        if (!this.q) {
            if (view == null) {
                this.f.remove(str);
                return;
            }
            this.f.put(str, new WeakReference(view));
            if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(str) && !"3011".equals(str)) {
                if (com.google.android.gms.ads.internal.util.zzbs.zza(this.k)) {
                    view.setOnTouchListener(this);
                }
                view.setClickable(true);
                view.setOnClickListener(this);
            }
        }
    }

    public final synchronized void c5() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Sc)).booleanValue() && this.l.d() != 0) {
            this.r = new GestureDetector(this.g.getContext(), new zzdop(this.l, this));
        }
    }

    public final synchronized void d5() {
        ((zzcdn) this.i).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdog
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzdoh zzdohVar = zzdoh.this;
                if (zzdohVar.j == null) {
                    View view = new View(zzdohVar.g.getContext());
                    zzdohVar.j = view;
                    view.setLayoutParams(new FrameLayout.LayoutParams(-1, 0));
                }
                if (zzdohVar.g != zzdohVar.j.getParent()) {
                    zzdohVar.g.addView(zzdohVar.j);
                }
            }
        });
    }

    public final synchronized void e5(String str) {
        DisplayMetrics displayMetrics;
        try {
            View frameLayout = new FrameLayout(this.h.getContext());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            Context context = this.h.getContext();
            frameLayout.setClickable(false);
            frameLayout.setFocusable(false);
            if (!TextUtils.isEmpty(str)) {
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                Resources resources = context.getResources();
                if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
                    try {
                        byte[] decode = Base64.decode(str, 0);
                        BitmapDrawable bitmapDrawable = new BitmapDrawable(BitmapFactory.decodeByteArray(decode, 0, decode.length));
                        bitmapDrawable.setTargetDensity(displayMetrics.densityDpi);
                        Shader.TileMode tileMode = Shader.TileMode.REPEAT;
                        bitmapDrawable.setTileModeXY(tileMode, tileMode);
                        frameLayout.setBackground(bitmapDrawable);
                    } catch (IllegalArgumentException e) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzj("Encountered invalid base64 watermark.", e);
                    }
                }
            }
            this.h.addView(frameLayout);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final /* synthetic */ View f2() {
        return this.g;
    }

    @Override // android.view.View.OnClickListener
    public final synchronized void onClick(View view) {
        zzdnh zzdnhVar = this.l;
        if (zzdnhVar != null && zzdnhVar.e()) {
            this.l.B();
            this.l.v(view, this.g, zzj(), zzk(), false);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final synchronized void onGlobalLayout() {
        zzdnh zzdnhVar = this.l;
        if (zzdnhVar != null) {
            FrameLayout frameLayout = this.g;
            zzdnhVar.x(frameLayout, zzj(), zzk(), zzdnh.f(frameLayout));
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final synchronized void onScrollChanged() {
        zzdnh zzdnhVar = this.l;
        if (zzdnhVar != null) {
            FrameLayout frameLayout = this.g;
            zzdnhVar.x(frameLayout, zzj(), zzk(), zzdnh.f(frameLayout));
        }
    }

    @Override // android.view.View.OnTouchListener
    public final synchronized boolean onTouch(View view, MotionEvent motionEvent) {
        zzdnh zzdnhVar = this.l;
        if (zzdnhVar != null) {
            zzdnhVar.w(view, motionEvent, this.g);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Sc)).booleanValue() && this.r != null && this.l.d() != 0) {
                this.r.onTouchEvent(motionEvent);
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final synchronized View v2(String str) {
        WeakReference weakReference;
        if (!this.q && (weakReference = (WeakReference) this.f.get(str)) != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final synchronized void zzb(String str, IObjectWrapper iObjectWrapper) {
        P3((View) ObjectWrapper.f2(iObjectWrapper), str);
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final synchronized IObjectWrapper zzc(String str) {
        return new ObjectWrapper(v2(str));
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final synchronized void zzd(IObjectWrapper iObjectWrapper) {
        if (this.q) {
            return;
        }
        Object f2 = ObjectWrapper.f2(iObjectWrapper);
        if (!(f2 instanceof zzdnh)) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Not an instance of native engine. This is most likely a transient error");
            return;
        }
        zzdnh zzdnhVar = this.l;
        if (zzdnhVar != null) {
            zzdnhVar.u(this);
        }
        d5();
        zzdnh zzdnhVar2 = (zzdnh) f2;
        this.l = zzdnhVar2;
        zzdnhVar2.t(this);
        this.l.h(this.g);
        zzdnh zzdnhVar3 = this.l;
        FrameLayout frameLayout = this.h;
        zzejb u = zzdnhVar3.m.u();
        if (zzdnhVar3.p.c() && u != null && frameLayout != null) {
            com.google.android.gms.ads.internal.zzt.zzu().i(u.f6553a, frameLayout);
        }
        if (this.p) {
            this.l.F.b(this.o);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.K4)).booleanValue() && !TextUtils.isEmpty(this.l.p.e())) {
            e5(this.l.p.e());
        }
        c5();
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final synchronized void zzdB(IObjectWrapper iObjectWrapper) {
        if (this.q) {
            return;
        }
        this.n = iObjectWrapper;
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final void zzdC(IObjectWrapper iObjectWrapper) {
        onTouch(this.g, (MotionEvent) ObjectWrapper.f2(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final synchronized void zzdD(zzbjv zzbjvVar) {
        if (!this.q) {
            this.p = true;
            this.o = zzbjvVar;
            zzdnh zzdnhVar = this.l;
            if (zzdnhVar != null) {
                zzdnhVar.F.b(zzbjvVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final synchronized void zze() {
        try {
            if (this.q) {
                return;
            }
            zzdnh zzdnhVar = this.l;
            if (zzdnhVar != null) {
                zzdnhVar.u(this);
                this.l = null;
            }
            this.f.clear();
            this.g.removeAllViews();
            this.h.removeAllViews();
            this.f = null;
            this.g = null;
            this.h = null;
            this.j = null;
            this.m = null;
            this.q = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final synchronized void zzf(IObjectWrapper iObjectWrapper, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbkc
    public final synchronized void zzg(IObjectWrapper iObjectWrapper) {
        this.l.A((View) ObjectWrapper.f2(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final zzbcm zzh() {
        return this.m;
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final synchronized Map zzj() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final synchronized Map zzk() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final synchronized Map zzl() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final synchronized String zzn() {
        return this.f5959c;
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final IObjectWrapper zzo() {
        return this.n;
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final synchronized JSONObject zzp() {
        zzdnh zzdnhVar = this.l;
        if (zzdnhVar != null) {
            return zzdnhVar.y(this.g, zzj(), zzk());
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdpj
    public final synchronized JSONObject zzq() {
        zzdnh zzdnhVar = this.l;
        if (zzdnhVar != null) {
            return zzdnhVar.z(this.g, zzj(), zzk());
        }
        return null;
    }
}
