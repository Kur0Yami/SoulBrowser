package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzdnh extends zzcvk {
    public static final zzgtd J;
    public boolean A;
    public final zzcbt B;
    public final zzayq C;
    public final VersionInfoParcel D;
    public final Context E;
    public final zzdnj F;
    public final zzeqs G;
    public final HashMap H;
    public final ArrayList I;
    public final Executor l;
    public final zzdnm m;
    public final zzdnu n;
    public final zzdol o;
    public final zzdnr p;
    public final zzdnw q;
    public final zzija r;
    public final zzija s;
    public final zzija t;
    public final zzija u;
    public final zzija v;
    public zzbcc w;
    public boolean x;
    public boolean y;
    public boolean z;

    static {
        zzgvs zzgvsVar = zzgtd.f;
        Object[] objArr = {"3010", "3008", "1005", "1009", "2011", "2007"};
        zzguw.a(6, objArr);
        J = zzgtd.x(6, objArr);
    }

    public zzdnh(zzcvj zzcvjVar, Executor executor, zzdnm zzdnmVar, zzdnu zzdnuVar, zzdol zzdolVar, zzdnr zzdnrVar, zzdnw zzdnwVar, zzija zzijaVar, zzija zzijaVar2, zzija zzijaVar3, zzija zzijaVar4, zzija zzijaVar5, zzcbt zzcbtVar, zzayq zzayqVar, VersionInfoParcel versionInfoParcel, Context context, zzdnj zzdnjVar, zzeqs zzeqsVar) {
        super(zzcvjVar);
        this.l = executor;
        this.m = zzdnmVar;
        this.n = zzdnuVar;
        this.o = zzdolVar;
        this.p = zzdnrVar;
        this.q = zzdnwVar;
        this.r = zzijaVar;
        this.s = zzijaVar2;
        this.t = zzijaVar3;
        this.u = zzijaVar4;
        this.v = zzijaVar5;
        this.B = zzcbtVar;
        this.C = zzayqVar;
        this.D = versionInfoParcel;
        this.E = context;
        this.F = zzdnjVar;
        this.G = zzeqsVar;
        this.H = new HashMap();
        this.I = new ArrayList();
    }

    public static boolean f(View view) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Wb)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzc();
            long zzA = com.google.android.gms.ads.internal.util.zzs.zzA(view);
            if (view.isShown() && view.getGlobalVisibleRect(new Rect(), new Point())) {
                if (zzA >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Xb)).intValue()) {
                    return true;
                }
            }
            return false;
        }
        if (!view.isShown() || !view.getGlobalVisibleRect(new Rect(), new Point())) {
            return false;
        }
        return true;
    }

    public final synchronized void A(View view) {
        this.n.b(view);
    }

    public final synchronized void B() {
        this.n.zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzcvk
    public final void a() {
        Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzdnf
            @Override // java.lang.Runnable
            public final void run() {
                zzblf zzblfVar;
                zzdnh zzdnhVar = zzdnh.this;
                zzdnw zzdnwVar = zzdnhVar.q;
                try {
                    zzdnm zzdnmVar = zzdnhVar.m;
                    int T = zzdnmVar.T();
                    if (T != 1) {
                        if (T != 2) {
                            if (T != 3) {
                                if (T != 6) {
                                    if (T != 7) {
                                        int i = com.google.android.gms.ads.internal.util.zze.zza;
                                        com.google.android.gms.ads.internal.util.client.zzo.zzf("Wrong native template id!");
                                        return;
                                    } else {
                                        zzbqh zzbqhVar = zzdnwVar.e;
                                        if (zzbqhVar != null) {
                                            zzbqhVar.I4((zzbqb) zzdnhVar.u.zzb());
                                            return;
                                        }
                                        return;
                                    }
                                }
                                zzblm zzblmVar = zzdnwVar.f5949c;
                                if (zzblmVar != null) {
                                    zzdnhVar.o();
                                    zzblmVar.S0((zzbls) zzdnhVar.t.zzb());
                                    return;
                                }
                                return;
                            }
                            String o = zzdnmVar.o();
                            if (o == null) {
                                zzblfVar = null;
                            } else {
                                zzblfVar = (zzblf) zzdnwVar.f.get(o);
                            }
                            if (zzblfVar != null) {
                                if (zzdnmVar.p() != null) {
                                    zzdnhVar.g("Google", true);
                                }
                                zzblfVar.T3((zzbks) zzdnhVar.v.zzb());
                                return;
                            }
                            return;
                        }
                        zzbkw zzbkwVar = zzdnwVar.b;
                        if (zzbkwVar != null) {
                            zzdnhVar.o();
                            zzbkwVar.z2((zzbkn) zzdnhVar.s.zzb());
                            return;
                        }
                        return;
                    }
                    zzbkz zzbkzVar = zzdnwVar.f5948a;
                    if (zzbkzVar != null) {
                        zzdnhVar.o();
                        zzbkzVar.V0((zzbkp) zzdnhVar.r.zzb());
                    }
                } catch (RemoteException e) {
                    int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzg("RemoteException when notifyAdLoad is called", e);
                }
            }
        };
        Executor executor = this.l;
        executor.execute(runnable);
        if (this.m.T() != 7) {
            final zzdnu zzdnuVar = this.n;
            Objects.requireNonNull(zzdnuVar);
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdng
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzdnu.this.g();
                }
            });
        }
        super.a();
    }

    public final synchronized void c(final View view, final int i) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Sc)).booleanValue()) {
            return;
        }
        zzbcc zzbccVar = this.w;
        if (zzbccVar == null) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Ad should be associated with an ad view before calling performClickForCustomGesture()");
        } else {
            final boolean z = zzbccVar instanceof zzdof;
            this.l.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdnd
                /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.zzbcc, com.google.android.gms.internal.ads.zzdpj] */
                /* JADX WARN: Type inference failed for: r2v1, types: [com.google.android.gms.internal.ads.zzbcc, com.google.android.gms.internal.ads.zzdpj] */
                /* JADX WARN: Type inference failed for: r2v2, types: [com.google.android.gms.internal.ads.zzbcc, com.google.android.gms.internal.ads.zzdpj] */
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzdnh zzdnhVar = zzdnh.this;
                    ?? r1 = zzdnhVar.w;
                    if (r1 == 0) {
                        int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzd("Ad should be associated with an ad view before calling performClickForCustomGesture()");
                        return;
                    }
                    zzdnhVar.n.o(view, r1.f2(), zzdnhVar.w.zzj(), zzdnhVar.w.zzk(), z, zzdnhVar.n(), i);
                }
            });
        }
    }

    public final synchronized int d() {
        return this.n.zzu();
    }

    public final synchronized boolean e() {
        return this.n.zzv();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.util.Map, androidx.collection.SimpleArrayMap] */
    public final zzejb g(String str, boolean z) {
        boolean z2;
        boolean z3;
        String str2;
        zzcir zzcirVar;
        zzeix zzeixVar;
        zzeiy zzeiyVar;
        String str3;
        zzdnr zzdnrVar = this.p;
        if (zzdnrVar.c() && !TextUtils.isEmpty(str)) {
            zzdnm zzdnmVar = this.m;
            zzcir r = zzdnmVar.r();
            zzcir p = zzdnmVar.p();
            if (r == null && p == null) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Omid display and video webview are null. Skipping initialization.");
                return null;
            }
            zzdnrVar.f();
            int a2 = zzdnrVar.f().a();
            int i2 = a2 - 1;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (a2 != 1) {
                        if (a2 != 2) {
                            str3 = "UNKNOWN";
                        } else {
                            str3 = "DISPLAY";
                        }
                    } else {
                        str3 = "VIDEO";
                    }
                    String q = android.support.v4.media.a.q(new StringBuilder(str3.length() + 49), "Unknown omid media type: ", str3, ". Not initializing Omid.");
                    int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi(q);
                    return null;
                }
                if (r != null) {
                    z3 = false;
                    z2 = true;
                } else {
                    int i4 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Omid media type was display but there was no display webview.");
                    return null;
                }
            } else if (p != null) {
                z2 = false;
                z3 = true;
            } else {
                int i5 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Omid media type was video but there was no video webview.");
            }
            if (z2) {
                str2 = null;
                zzcirVar = r;
            } else {
                str2 = "javascript";
                zzcirVar = p;
            }
            if (zzcirVar != 0) {
                if (!com.google.android.gms.ads.internal.zzt.zzu().zza(this.E)) {
                    int i6 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Failed to initialize omid in InternalNativeAd");
                    return null;
                }
                VersionInfoParcel versionInfoParcel = this.D;
                int i7 = versionInfoParcel.buddyApkVersion;
                int i8 = versionInfoParcel.clientJarVersion;
                StringBuilder sb = new StringBuilder(androidx.work.impl.workers.a.a(i7, 1) + String.valueOf(i8).length());
                sb.append(i7);
                sb.append(".");
                sb.append(i8);
                String sb2 = sb.toString();
                if (z3) {
                    zzeixVar = zzeix.VIDEO;
                    zzeiyVar = zzeiy.DEFINED_BY_JAVASCRIPT;
                } else {
                    zzeixVar = zzeix.NATIVE_DISPLAY;
                    if (zzdnmVar.T() == 3) {
                        zzeiyVar = zzeiy.UNSPECIFIED;
                    } else {
                        zzeiyVar = zzeiy.ONE_PIXEL;
                    }
                }
                zzejb c2 = com.google.android.gms.ads.internal.zzt.zzu().c(zzcirVar.zzD(), zzeixVar, zzeiyVar, sb2, str2, str, this.b.l0);
                if (c2 == null) {
                    int i9 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Failed to create omid session in InternalNativeAd");
                    return null;
                }
                synchronized (zzdnmVar) {
                    zzdnmVar.l = c2;
                }
                zzcirVar.O(c2);
                if (z3) {
                    zzfrl zzfrlVar = c2.f6553a;
                    if (p != null) {
                        com.google.android.gms.ads.internal.zzt.zzu().e(zzfrlVar, p.zzE());
                    }
                    this.A = true;
                }
                if (z) {
                    com.google.android.gms.ads.internal.zzt.zzu().b(c2.f6553a);
                    zzcirVar.S("onSdkLoaded", new SimpleArrayMap(0));
                }
                return c2;
            }
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Webview is null in InternalNativeAd");
            return null;
        }
        return null;
    }

    public final void h(View view) {
        zzcdt zzcdtVar;
        zzdnm zzdnmVar = this.m;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.l6)).booleanValue() && zzdnmVar.T() != 3) {
            synchronized (zzdnmVar) {
                zzcdtVar = zzdnmVar.n;
            }
            if (zzcdtVar != null) {
                zzdmy zzdmyVar = new zzdmy(this, view);
                zzcdtVar.k(new zzgyk(zzcdtVar, zzdmyVar), this.l);
                return;
            }
            return;
        }
        zzejb u = zzdnmVar.u();
        zzcir r = this.m.r();
        if (this.p.c() && u != null && r != null && view != null) {
            com.google.android.gms.ads.internal.zzt.zzu().e(u.f6553a, view);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.google.android.gms.internal.ads.zzbcc, com.google.android.gms.internal.ads.zzdpj] */
    public final synchronized void i(final zzdpj zzdpjVar) {
        Iterator<String> keys;
        WeakReference weakReference;
        View view;
        zzayl zzaylVar;
        try {
            if (!this.x) {
                this.w = (zzbcc) zzdpjVar;
                final zzdol zzdolVar = this.o;
                zzdolVar.g.execute(new Runnable(zzdpjVar) { // from class: com.google.android.gms.internal.ads.zzdok
                    public final /* synthetic */ zzbcc f;

                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        this.f = (zzbcc) zzdpjVar;
                    }

                    /* JADX WARN: Type inference failed for: r12v0, types: [com.google.android.gms.internal.ads.zzbjh, android.widget.RelativeLayout, android.view.View, android.view.ViewGroup] */
                    /* JADX WARN: Type inference failed for: r3v0, types: [com.google.android.gms.internal.ads.zzbcc, com.google.android.gms.internal.ads.zzdpj] */
                    @Override // java.lang.Runnable
                    public final void run() {
                        ViewGroup viewGroup;
                        View view2;
                        int i;
                        View view3;
                        final ViewGroup viewGroup2;
                        Context context;
                        zzbjv a2;
                        Drawable drawable;
                        final zzdol zzdolVar2 = zzdol.this;
                        ?? r3 = this.f;
                        zzdnr zzdnrVar = zzdolVar2.f5964c;
                        if (zzdnrVar.d() || zzdnrVar.b()) {
                            String[] strArr = {NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW, "3011"};
                            for (int i2 = 0; i2 < 2; i2++) {
                                View v2 = r3.v2(strArr[i2]);
                                if (v2 instanceof ViewGroup) {
                                    viewGroup = (ViewGroup) v2;
                                    break;
                                }
                            }
                        }
                        viewGroup = null;
                        Context context2 = r3.f2().getContext();
                        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                        zzdnm zzdnmVar = zzdolVar2.d;
                        synchronized (zzdnmVar) {
                            view2 = zzdnmVar.d;
                        }
                        if (view2 != null) {
                            view3 = zzdnmVar.a();
                            zzbjn zzbjnVar = zzdolVar2.i;
                            if (zzbjnVar != null && viewGroup == null) {
                                zzdol.b(layoutParams, zzbjnVar.i);
                                view3.setLayoutParams(layoutParams);
                                viewGroup = null;
                            }
                        } else if (!(zzdnmVar.V() instanceof zzbjg)) {
                            view3 = null;
                        } else {
                            zzbjg zzbjgVar = (zzbjg) zzdnmVar.V();
                            if (viewGroup == null) {
                                zzdol.b(layoutParams, zzbjgVar.l);
                                viewGroup = null;
                            }
                            ?? relativeLayout = new RelativeLayout(context2);
                            Preconditions.checkNotNull(zzbjgVar);
                            ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(zzbjh.f, null, null));
                            shapeDrawable.getPaint().setColor(zzbjgVar.h);
                            relativeLayout.setLayoutParams(layoutParams);
                            relativeLayout.setBackground(shapeDrawable);
                            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
                            String str = zzbjgVar.f4740c;
                            if (!TextUtils.isEmpty(str)) {
                                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
                                TextView textView = new TextView(context2);
                                textView.setLayoutParams(layoutParams3);
                                textView.setId(1195835393);
                                textView.setTypeface(Typeface.DEFAULT);
                                textView.setText(str);
                                textView.setTextColor(zzbjgVar.i);
                                textView.setTextSize(zzbjgVar.j);
                                com.google.android.gms.ads.internal.client.zzbb.zza();
                                int zzC = com.google.android.gms.ads.internal.util.client.zzf.zzC(context2, 4);
                                com.google.android.gms.ads.internal.client.zzbb.zza();
                                textView.setPadding(zzC, 0, com.google.android.gms.ads.internal.util.client.zzf.zzC(context2, 4), 0);
                                relativeLayout.addView(textView);
                                i = 1;
                                layoutParams2.addRule(1, textView.getId());
                            } else {
                                i = 1;
                            }
                            ImageView imageView = new ImageView(context2);
                            imageView.setLayoutParams(layoutParams2);
                            imageView.setId(1195835394);
                            ArrayList arrayList = zzbjgVar.f;
                            if (arrayList != null && arrayList.size() > i) {
                                relativeLayout.f4741c = new AnimationDrawable();
                                int size = arrayList.size();
                                int i3 = 0;
                                while (i3 < size) {
                                    int i4 = i3 + 1;
                                    try {
                                        relativeLayout.f4741c.addFrame((Drawable) ObjectWrapper.f2(((zzbjj) arrayList.get(i3)).zzb()), zzbjgVar.k);
                                    } catch (Exception e) {
                                        int i5 = com.google.android.gms.ads.internal.util.zze.zza;
                                        com.google.android.gms.ads.internal.util.client.zzo.zzg("Error while getting drawable.", e);
                                    }
                                    i3 = i4;
                                }
                                imageView.setBackground(relativeLayout.f4741c);
                            } else if (arrayList.size() == 1) {
                                try {
                                    imageView.setImageDrawable((Drawable) ObjectWrapper.f2(((zzbjj) arrayList.get(0)).zzb()));
                                } catch (Exception e2) {
                                    int i6 = com.google.android.gms.ads.internal.util.zze.zza;
                                    com.google.android.gms.ads.internal.util.client.zzo.zzg("Error while getting drawable.", e2);
                                }
                            }
                            relativeLayout.addView(imageView);
                            relativeLayout.setContentDescription((CharSequence) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.F4));
                            view3 = relativeLayout;
                        }
                        if (view3 != null) {
                            if (view3.getParent() instanceof ViewGroup) {
                                ((ViewGroup) view3.getParent()).removeView(view3);
                            }
                            if (viewGroup != null) {
                                viewGroup.removeAllViews();
                                viewGroup.addView(view3);
                            } else {
                                com.google.android.gms.ads.formats.zza zzaVar = new com.google.android.gms.ads.formats.zza(r3.f2().getContext());
                                zzaVar.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                zzaVar.addView(view3);
                                FrameLayout F4 = r3.F4();
                                if (F4 != null) {
                                    F4.addView(zzaVar);
                                }
                            }
                            r3.P3(view3, r3.zzn());
                        }
                        zzguy zzguyVar = (zzguy) zzdoh.s;
                        int i7 = zzguyVar.h;
                        int i8 = 0;
                        while (true) {
                            if (i8 < i7) {
                                View v22 = r3.v2((String) zzguyVar.get(i8));
                                i8++;
                                if (v22 instanceof ViewGroup) {
                                    viewGroup2 = (ViewGroup) v22;
                                    break;
                                }
                            } else {
                                viewGroup2 = null;
                                break;
                            }
                        }
                        zzdolVar2.h.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdoj
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                boolean z;
                                zzdol zzdolVar3 = zzdol.this;
                                zzfik zzfikVar = zzdolVar3.b;
                                com.google.android.gms.ads.internal.util.zzg zzgVar = zzdolVar3.f5963a;
                                zzdnm zzdnmVar2 = zzdolVar3.d;
                                if (zzdnmVar2.i() != null) {
                                    if (viewGroup2 != null) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    if (zzdnmVar2.T() != 2 && zzdnmVar2.T() != 1) {
                                        if (zzdnmVar2.T() == 6) {
                                            String str2 = zzfikVar.g;
                                            zzgVar.zzr(str2, "2", z);
                                            zzgVar.zzr(str2, "1", z);
                                            return;
                                        }
                                        return;
                                    }
                                    zzgVar.zzr(zzfikVar.g, String.valueOf(zzdnmVar2.T()), z);
                                }
                            }
                        });
                        if (viewGroup2 != null) {
                            if (zzdolVar2.c(viewGroup2, true)) {
                                if (zzdnmVar.p() != null) {
                                    zzdnmVar.p().t(new zzdoi(r3, viewGroup2));
                                    return;
                                }
                                return;
                            }
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.sb)).booleanValue() && zzdolVar2.c(viewGroup2, false)) {
                                if (zzdnmVar.q() != null) {
                                    zzdnmVar.q().t(new zzdoi(r3, viewGroup2));
                                    return;
                                }
                                return;
                            }
                            viewGroup2.removeAllViews();
                            View f2 = r3.f2();
                            if (f2 != null) {
                                context = f2.getContext();
                            } else {
                                context = null;
                            }
                            if (context != null && (a2 = zzdolVar2.j.a()) != null) {
                                try {
                                    IObjectWrapper zzg = a2.zzg();
                                    if (zzg != null && (drawable = (Drawable) ObjectWrapper.f2(zzg)) != null) {
                                        ImageView imageView2 = new ImageView(context);
                                        imageView2.setImageDrawable(drawable);
                                        IObjectWrapper zzo = r3.zzo();
                                        if (zzo != null) {
                                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Z6)).booleanValue()) {
                                                imageView2.setScaleType((ImageView.ScaleType) ObjectWrapper.f2(zzo));
                                                imageView2.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                                viewGroup2.addView(imageView2);
                                            }
                                        }
                                        imageView2.setScaleType(zzdol.k);
                                        imageView2.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                                        viewGroup2.addView(imageView2);
                                    }
                                } catch (RemoteException unused) {
                                    int i9 = com.google.android.gms.ads.internal.util.zze.zza;
                                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Could not get main image drawable");
                                }
                            }
                        }
                    }
                });
                this.n.a(zzdpjVar.f2(), zzdpjVar.zzk(), zzdpjVar.zzl(), zzdpjVar, zzdpjVar);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.o3)).booleanValue() && (zzaylVar = this.C.b) != null) {
                    zzaylVar.zzh(zzdpjVar.f2());
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.o2)).booleanValue()) {
                    zzfhr zzfhrVar = this.b;
                    if (zzfhrVar.k0 && (keys = zzfhrVar.j0.keys()) != null) {
                        while (keys.hasNext()) {
                            String next = keys.next();
                            ?? r2 = this.w;
                            if (r2 == 0) {
                                weakReference = null;
                            } else {
                                weakReference = (WeakReference) r2.zzj().get(next);
                            }
                            this.H.put(next, Boolean.FALSE);
                            if (weakReference != null && (view = (View) weakReference.get()) != null) {
                                zzbcm zzbcmVar = new zzbcm(this.E, view);
                                this.I.add(zzbcmVar);
                                zzbcmVar.p.add(new zzdmw(this, next));
                                zzbcmVar.d(3);
                            }
                        }
                    }
                }
                if (zzdpjVar.zzh() != null) {
                    zzbcm zzh = zzdpjVar.zzh();
                    zzh.p.add(this.B);
                    zzh.d(3);
                }
            }
        } finally {
        }
    }

    public final void j(zzdpj zzdpjVar) {
        View f2 = zzdpjVar.f2();
        zzdpjVar.zzj();
        this.n.l(f2);
        if (zzdpjVar.F4() != null) {
            zzdpjVar.F4().setClickable(false);
            zzdpjVar.F4().removeAllViews();
        }
        if (zzdpjVar.zzh() != null) {
            zzbcm zzh = zzdpjVar.zzh();
            zzh.p.remove(this.B);
        }
        this.w = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.zzbcc, com.google.android.gms.internal.ads.zzdpj] */
    public final synchronized void k(View view, Map map, Map map2) {
        this.o.a(this.w);
        this.n.s(view, map, map2, n());
        this.y = true;
    }

    public final synchronized void l(View view, Map map, Map map2) {
        View m;
        if (!this.z && (m = m(map)) != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Xe)).booleanValue()) {
                Rect rect = new Rect();
                if (m.getGlobalVisibleRect(rect, new Point()) && m.getHeight() == rect.height() && m.getWidth() == rect.width()) {
                    this.n.r(view, map, map2, n());
                    this.z = true;
                }
            } else if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ye)).booleanValue()) {
                if (f(m)) {
                    this.n.r(view, map, map2, n());
                    this.z = true;
                }
            } else {
                zzbgb zzbgbVar = zzbgk.Ze;
                if (((Float) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).floatValue() > 0.0d) {
                    double floatValue = ((Float) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).floatValue();
                    if (m.getGlobalVisibleRect(new Rect(), new Point())) {
                        if (r1.height() * r1.width() >= m.getHeight() * m.getWidth() * (floatValue / 100.0d)) {
                            this.n.r(view, map, map2, n());
                            this.z = true;
                        }
                    }
                }
            }
        }
    }

    public final synchronized View m(Map map) {
        if (map != null) {
            zzgtd zzgtdVar = J;
            int i = ((zzguy) zzgtdVar).h;
            int i2 = 0;
            while (i2 < i) {
                WeakReference weakReference = (WeakReference) map.get((String) ((zzguy) zzgtdVar).get(i2));
                i2++;
                if (weakReference != null) {
                    return (View) weakReference.get();
                }
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.internal.ads.zzbcc, com.google.android.gms.internal.ads.zzdpj] */
    public final synchronized ImageView.ScaleType n() {
        ?? r0 = this.w;
        if (r0 == 0) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Ad should be associated with an ad view before calling getMediaviewScaleType()");
            return null;
        }
        IObjectWrapper zzo = r0.zzo();
        if (zzo != null) {
            return (ImageView.ScaleType) ObjectWrapper.f2(zzo);
        }
        return zzdol.k;
    }

    public final void o() {
        ListenableFuture listenableFuture;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.l6)).booleanValue()) {
            zzdnm zzdnmVar = this.m;
            synchronized (zzdnmVar) {
                listenableFuture = zzdnmVar.m;
            }
            if (listenableFuture == null) {
                return;
            }
            zzdmx zzdmxVar = new zzdmx(this);
            listenableFuture.k(new zzgyk(listenableFuture, zzdmxVar), this.l);
            return;
        }
        g("Google", true);
    }

    public final synchronized void p(Bundle bundle) {
        this.n.j(bundle);
    }

    public final synchronized void q() {
        this.x = true;
        this.l.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdmz
            @Override // java.lang.Runnable
            public final void run() {
                zzdnh zzdnhVar = zzdnh.this;
                zzdnhVar.n.zzA();
                zzdnm zzdnmVar = zzdnhVar.m;
                synchronized (zzdnmVar) {
                    try {
                        zzcir zzcirVar = zzdnmVar.i;
                        if (zzcirVar != null) {
                            zzcirVar.destroy();
                            zzdnmVar.i = null;
                        }
                        zzcir zzcirVar2 = zzdnmVar.j;
                        if (zzcirVar2 != null) {
                            zzcirVar2.destroy();
                            zzdnmVar.j = null;
                        }
                        zzcir zzcirVar3 = zzdnmVar.k;
                        if (zzcirVar3 != null) {
                            zzcirVar3.destroy();
                            zzdnmVar.k = null;
                        }
                        ListenableFuture listenableFuture = zzdnmVar.m;
                        if (listenableFuture != null) {
                            listenableFuture.cancel(false);
                            zzdnmVar.m = null;
                        }
                        zzcdt zzcdtVar = zzdnmVar.n;
                        if (zzcdtVar != null) {
                            zzcdtVar.cancel(false);
                            zzdnmVar.n = null;
                        }
                        zzdnmVar.l = null;
                        zzdnmVar.v.clear();
                        zzdnmVar.w.clear();
                        zzdnmVar.b = null;
                        zzdnmVar.f5941c = null;
                        zzdnmVar.d = null;
                        zzdnmVar.e = null;
                        zzdnmVar.h = null;
                        zzdnmVar.o = null;
                        zzdnmVar.p = null;
                        zzdnmVar.q = null;
                        zzdnmVar.s = null;
                        zzdnmVar.t = null;
                        zzdnmVar.u = null;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        });
        zzdbj zzdbjVar = this.f5507c;
        zzdbjVar.getClass();
        zzdbjVar.s0(new zzdbh(null));
    }

    public final synchronized boolean r(Bundle bundle) {
        if (this.y) {
            return true;
        }
        boolean t = this.n.t(bundle);
        this.y = t;
        return t;
    }

    public final synchronized void s(Bundle bundle) {
        this.n.p(bundle);
    }

    public final synchronized void t(final zzdpj zzdpjVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.m2)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable(zzdpjVar) { // from class: com.google.android.gms.internal.ads.zzdna
                public final /* synthetic */ zzbcc f;

                /* JADX WARN: Multi-variable type inference failed */
                {
                    this.f = (zzbcc) zzdpjVar;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.zzbcc, com.google.android.gms.internal.ads.zzdpj] */
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzdnh.this.i(this.f);
                }
            });
        } else {
            i(zzdpjVar);
        }
    }

    public final synchronized void u(final zzdpj zzdpjVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.m2)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable(zzdpjVar) { // from class: com.google.android.gms.internal.ads.zzdnb
                public final /* synthetic */ zzbcc f;

                /* JADX WARN: Multi-variable type inference failed */
                {
                    this.f = (zzbcc) zzdpjVar;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.zzbcc, com.google.android.gms.internal.ads.zzdpj] */
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzdnh.this.j(this.f);
                }
            });
        } else {
            j(zzdpjVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.zzbcc, com.google.android.gms.internal.ads.zzdpj] */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.util.Map, androidx.collection.SimpleArrayMap] */
    public final synchronized void v(View view, View view2, Map map, Map map2, boolean z) {
        zzcir p;
        zzdoz zzdozVar;
        zzdol zzdolVar = this.o;
        ?? r1 = this.w;
        if (r1 != 0 && (zzdozVar = zzdolVar.e) != null && r1.F4() != null && zzdolVar.f5964c.a()) {
            try {
                r1.F4().addView(zzdozVar.a());
            } catch (zzcjg e) {
                com.google.android.gms.ads.internal.util.zze.zzb("web view can not be obtained", e);
            }
        }
        this.n.k(view, view2, map, map2, z, n());
        if (this.A) {
            zzdnm zzdnmVar = this.m;
            if (zzdnmVar.p() != null && (p = zzdnmVar.p()) != 0) {
                p.S("onSdkAdUserInteractionClick", new SimpleArrayMap(0));
            }
        }
    }

    public final synchronized void w(View view, MotionEvent motionEvent, View view2) {
        this.n.e(motionEvent, view2);
    }

    public final synchronized void x(View view, Map map, Map map2, boolean z) {
        if (this.y) {
            l(view, map, map2);
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.o2)).booleanValue() && this.b.k0) {
            HashMap hashMap = this.H;
            Iterator it = hashMap.keySet().iterator();
            while (it.hasNext()) {
                if (!((Boolean) hashMap.get((String) it.next())).booleanValue()) {
                    break;
                }
            }
        }
        if (!z) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.J4)).booleanValue() && map != null) {
                Iterator it2 = map.entrySet().iterator();
                while (it2.hasNext()) {
                    View view2 = (View) ((WeakReference) ((Map.Entry) it2.next()).getValue()).get();
                    if (view2 != null && f(view2)) {
                        k(view, map, map2);
                        return;
                    }
                }
            }
            return;
        }
        k(view, map, map2);
        l(view, map, map2);
    }

    public final synchronized JSONObject y(View view, Map map, Map map2) {
        return this.n.h(view, map, map2, n());
    }

    public final synchronized JSONObject z(View view, Map map, Map map2) {
        return this.n.n(view, map, map2, n());
    }
}
