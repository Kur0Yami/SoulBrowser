package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class zzdnm {

    /* renamed from: a, reason: collision with root package name */
    public int f5940a;
    public com.google.android.gms.ads.internal.client.zzed b;

    /* renamed from: c, reason: collision with root package name */
    public zzbjr f5941c;
    public View d;
    public List e;
    public com.google.android.gms.ads.internal.client.zzez g;
    public Bundle h;
    public zzcir i;
    public zzcir j;
    public zzcir k;
    public zzejb l;
    public ListenableFuture m;
    public zzcdt n;
    public View o;
    public View p;
    public IObjectWrapper q;
    public double r;
    public zzbjy s;
    public zzbjy t;
    public String u;
    public float x;
    public String y;
    public final SimpleArrayMap v = new SimpleArrayMap(0);
    public final SimpleArrayMap w = new SimpleArrayMap(0);
    public List f = Collections.EMPTY_LIST;

    public static zzdnm x(zzbto zzbtoVar) {
        zzdnl zzdnlVar;
        zzbto zzbtoVar2;
        try {
            com.google.android.gms.ads.internal.client.zzed zzn = zzbtoVar.zzn();
            if (zzn == null) {
                zzbtoVar2 = zzbtoVar;
                zzdnlVar = null;
            } else {
                zzbtoVar2 = zzbtoVar;
                zzdnlVar = new zzdnl(zzn, zzbtoVar2);
            }
            return y(zzdnlVar, zzbtoVar2.zzo(), (View) z(zzbtoVar2.zzp()), zzbtoVar2.zze(), zzbtoVar2.zzf(), zzbtoVar2.zzg(), zzbtoVar2.zzs(), zzbtoVar2.zzi(), (View) z(zzbtoVar2.zzq()), zzbtoVar2.zzr(), zzbtoVar2.zzl(), zzbtoVar2.zzm(), zzbtoVar2.zzk(), zzbtoVar2.zzh(), zzbtoVar2.zzj(), zzbtoVar2.zzz());
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to get native ad assets from unified ad mapper", e);
            return null;
        }
    }

    public static zzdnm y(zzdnl zzdnlVar, zzbjr zzbjrVar, View view, String str, List list, String str2, Bundle bundle, String str3, View view2, IObjectWrapper iObjectWrapper, String str4, String str5, double d, zzbjy zzbjyVar, String str6, float f) {
        zzdnm zzdnmVar = new zzdnm();
        zzdnmVar.f5940a = 6;
        zzdnmVar.b = zzdnlVar;
        zzdnmVar.f5941c = zzbjrVar;
        zzdnmVar.d = view;
        zzdnmVar.P("headline", str);
        zzdnmVar.e = list;
        zzdnmVar.P("body", str2);
        zzdnmVar.h = bundle;
        zzdnmVar.P("call_to_action", str3);
        zzdnmVar.o = view2;
        zzdnmVar.q = iObjectWrapper;
        zzdnmVar.P("store", str4);
        zzdnmVar.P("price", str5);
        zzdnmVar.r = d;
        zzdnmVar.s = zzbjyVar;
        zzdnmVar.P("advertiser", str6);
        synchronized (zzdnmVar) {
            zzdnmVar.x = f;
        }
        return zzdnmVar;
    }

    public static Object z(IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return null;
        }
        return ObjectWrapper.f2(iObjectWrapper);
    }

    public final synchronized void A(zzcjx zzcjxVar) {
        this.b = zzcjxVar;
    }

    public final synchronized void B(zzbjr zzbjrVar) {
        this.f5941c = zzbjrVar;
    }

    public final synchronized void C(zzgtd zzgtdVar) {
        this.f = zzgtdVar;
    }

    public final synchronized void D(com.google.android.gms.ads.internal.client.zzez zzezVar) {
        this.g = zzezVar;
    }

    public final synchronized void E(View view) {
        this.o = view;
    }

    public final synchronized void F(View view) {
        this.p = view;
    }

    public final synchronized void G(double d) {
        this.r = d;
    }

    public final synchronized void H(zzbjy zzbjyVar) {
        this.s = zzbjyVar;
    }

    public final synchronized void I(zzbjy zzbjyVar) {
        this.t = zzbjyVar;
    }

    public final synchronized void J(String str) {
        this.u = str;
    }

    public final synchronized void K(zzcir zzcirVar) {
        this.i = zzcirVar;
    }

    public final synchronized void L(zzcir zzcirVar) {
        this.j = zzcirVar;
    }

    public final synchronized void M(zzcir zzcirVar) {
        this.k = zzcirVar;
    }

    public final synchronized void N(ListenableFuture listenableFuture) {
        this.m = listenableFuture;
    }

    public final synchronized void O(zzcdt zzcdtVar) {
        this.n = zzcdtVar;
    }

    public final synchronized void P(String str, String str2) {
        if (str2 == null) {
            this.w.remove(str);
        } else {
            this.w.put(str, str2);
        }
    }

    public final synchronized void Q(String str, zzbjj zzbjjVar) {
        if (zzbjjVar == null) {
            this.v.remove(str);
        } else {
            this.v.put(str, zzbjjVar);
        }
    }

    public final synchronized void R(String str) {
        this.y = str;
    }

    public final synchronized String S(String str) {
        return (String) this.w.get(str);
    }

    public final synchronized int T() {
        return this.f5940a;
    }

    public final synchronized com.google.android.gms.ads.internal.client.zzed U() {
        return this.b;
    }

    public final synchronized zzbjr V() {
        return this.f5941c;
    }

    public final synchronized View a() {
        return this.d;
    }

    public final synchronized String b() {
        return S("headline");
    }

    public final synchronized List c() {
        return this.e;
    }

    public final zzbjy d() {
        List list = this.e;
        if (list != null && !list.isEmpty()) {
            Object obj = this.e.get(0);
            if (obj instanceof IBinder) {
                return zzbjx.c5((IBinder) obj);
            }
            return null;
        }
        return null;
    }

    public final synchronized com.google.android.gms.ads.internal.client.zzez e() {
        return this.g;
    }

    public final synchronized String f() {
        return S("body");
    }

    public final synchronized Bundle g() {
        try {
            if (this.h == null) {
                this.h = new Bundle();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.h;
    }

    public final synchronized String h() {
        return S("call_to_action");
    }

    public final synchronized View i() {
        return this.o;
    }

    public final synchronized IObjectWrapper j() {
        return this.q;
    }

    public final synchronized String k() {
        return S("store");
    }

    public final synchronized double l() {
        return this.r;
    }

    public final synchronized zzbjy m() {
        return this.s;
    }

    public final synchronized String n() {
        return S("advertiser");
    }

    public final synchronized String o() {
        return this.u;
    }

    public final synchronized zzcir p() {
        return this.i;
    }

    public final synchronized zzcir q() {
        return this.j;
    }

    public final synchronized zzcir r() {
        return this.k;
    }

    public final synchronized ListenableFuture s() {
        return this.m;
    }

    public final synchronized zzcdt t() {
        return this.n;
    }

    public final synchronized zzejb u() {
        return this.l;
    }

    public final synchronized float v() {
        return this.x;
    }

    public final synchronized SimpleArrayMap w() {
        return this.w;
    }
}
