package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzdpo implements zzdnu, zzdfm {

    /* renamed from: c, reason: collision with root package name */
    public final zzbto f6001c;
    public final zzdbc f;
    public final zzddd g;
    public final zzdai h;
    public final zzdip i;
    public final Context j;
    public final zzfhr k;
    public final VersionInfoParcel l;
    public final zzfik m;
    public boolean n = false;
    public boolean o = false;
    public boolean p = true;
    public final zzbtk q;
    public final zzbtl r;

    public zzdpo(zzbtk zzbtkVar, zzbtl zzbtlVar, zzbto zzbtoVar, zzdbc zzdbcVar, zzddd zzdddVar, zzdai zzdaiVar, zzdip zzdipVar, Context context, zzfhr zzfhrVar, VersionInfoParcel versionInfoParcel, zzfik zzfikVar) {
        this.q = zzbtkVar;
        this.r = zzbtlVar;
        this.f6001c = zzbtoVar;
        this.f = zzdbcVar;
        this.g = zzdddVar;
        this.h = zzdaiVar;
        this.i = zzdipVar;
        this.j = context;
        this.k = zzfhrVar;
        this.l = versionInfoParcel;
        this.m = zzfikVar;
    }

    public static final HashMap u(Map map) {
        HashMap hashMap = new HashMap();
        if (map == null) {
            return hashMap;
        }
        synchronized (map) {
            try {
                for (Map.Entry entry : map.entrySet()) {
                    View view = (View) ((WeakReference) entry.getValue()).get();
                    if (view != null) {
                        hashMap.put((String) entry.getKey(), view);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void a(View view, Map map, Map map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        Map map3;
        Map map4;
        Object obj;
        IObjectWrapper zzq;
        try {
            ObjectWrapper objectWrapper = new ObjectWrapper(view);
            JSONObject jSONObject = this.k.j0;
            boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.b2)).booleanValue();
            zzbtl zzbtlVar = this.r;
            zzbtk zzbtkVar = this.q;
            zzbto zzbtoVar = this.f6001c;
            boolean z = true;
            if (booleanValue && jSONObject.length() != 0) {
                if (map == null) {
                    map3 = new HashMap();
                } else {
                    map3 = map;
                }
                if (map2 == null) {
                    map4 = new HashMap();
                } else {
                    map4 = map2;
                }
                HashMap hashMap = new HashMap();
                hashMap.putAll(map3);
                hashMap.putAll(map4);
                Iterator<String> keys = jSONObject.keys();
                loop0: while (keys.hasNext()) {
                    String next = keys.next();
                    JSONArray optJSONArray = jSONObject.optJSONArray(next);
                    if (optJSONArray != null) {
                        WeakReference weakReference = (WeakReference) hashMap.get(next);
                        if (weakReference != null && (obj = weakReference.get()) != null) {
                            Class<?> cls = obj.getClass();
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.c2)).booleanValue() && next.equals("3010")) {
                                Object obj2 = null;
                                if (zzbtoVar != null) {
                                    try {
                                        zzq = zzbtoVar.zzq();
                                    } catch (RemoteException | IllegalArgumentException unused) {
                                    }
                                } else if (zzbtkVar != null) {
                                    zzq = zzbtkVar.P3();
                                } else if (zzbtlVar != null) {
                                    zzq = zzbtlVar.zzu();
                                } else {
                                    zzq = null;
                                }
                                if (zzq != null) {
                                    obj2 = ObjectWrapper.f2(zzq);
                                }
                                if (obj2 != null) {
                                    cls = obj2.getClass();
                                }
                            }
                            try {
                                ArrayList arrayList = new ArrayList();
                                com.google.android.gms.ads.internal.util.zzbp.zza(optJSONArray, arrayList);
                                com.google.android.gms.ads.internal.zzt.zzc();
                                ClassLoader classLoader = this.j.getClassLoader();
                                int size = arrayList.size();
                                int i = 0;
                                while (i < size) {
                                    Object obj3 = arrayList.get(i);
                                    i++;
                                    if (Class.forName((String) obj3, false, classLoader).isAssignableFrom(cls)) {
                                        break;
                                    }
                                }
                            } catch (JSONException unused2) {
                                continue;
                            }
                        }
                        z = false;
                        break loop0;
                    }
                }
            }
            this.p = z;
            HashMap u = u(map);
            HashMap u2 = u(map2);
            if (zzbtoVar != null) {
                zzbtoVar.t0(objectWrapper, new ObjectWrapper(u), new ObjectWrapper(u2));
                return;
            }
            if (zzbtkVar != null) {
                ObjectWrapper objectWrapper2 = new ObjectWrapper(u);
                ObjectWrapper objectWrapper3 = new ObjectWrapper(u2);
                Parcel I1 = zzbtkVar.I1();
                zzbcd.e(I1, objectWrapper);
                zzbcd.e(I1, objectWrapper2);
                zzbcd.e(I1, objectWrapper3);
                zzbtkVar.r2(22, I1);
                Parcel I12 = zzbtkVar.I1();
                zzbcd.e(I12, objectWrapper);
                zzbtkVar.r2(12, I12);
                return;
            }
            if (zzbtlVar != null) {
                ObjectWrapper objectWrapper4 = new ObjectWrapper(u);
                ObjectWrapper objectWrapper5 = new ObjectWrapper(u2);
                Parcel I13 = zzbtlVar.I1();
                zzbcd.e(I13, objectWrapper);
                zzbcd.e(I13, objectWrapper4);
                zzbcd.e(I13, objectWrapper5);
                zzbtlVar.r2(22, I13);
                Parcel I14 = zzbtlVar.I1();
                zzbcd.e(I14, objectWrapper);
                zzbtlVar.r2(10, I14);
            }
        } catch (RemoteException e) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to call trackView", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void b(View view) {
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void c(zzblp zzblpVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void d(com.google.android.gms.ads.internal.client.zzdf zzdfVar) {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzdfm
    public final void f() {
        try {
            zzbto zzbtoVar = this.f6001c;
            if (zzbtoVar != null && zzbtoVar.zzt()) {
                zzfhr zzfhrVar = this.k;
                if (zzfhrVar.e != 4 && !zzfhrVar.D0) {
                    return;
                }
                zzbtoVar.zzv();
                this.f.zza();
            }
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to report impression from an adapter", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void g() {
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final JSONObject h(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void i(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void j(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void k(View view, View view2, Map map, Map map2, boolean z, ImageView.ScaleType scaleType) {
        if (this.o && this.k.L) {
            return;
        }
        v(view);
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void l(View view) {
        try {
            ObjectWrapper objectWrapper = new ObjectWrapper(view);
            zzbto zzbtoVar = this.f6001c;
            if (zzbtoVar != null) {
                zzbtoVar.q1(objectWrapper);
                return;
            }
            zzbtk zzbtkVar = this.q;
            if (zzbtkVar != null) {
                Parcel I1 = zzbtkVar.I1();
                zzbcd.e(I1, objectWrapper);
                zzbtkVar.r2(16, I1);
            } else {
                zzbtl zzbtlVar = this.r;
                if (zzbtlVar != null) {
                    Parcel I12 = zzbtlVar.I1();
                    zzbcd.e(I12, objectWrapper);
                    zzbtlVar.r2(14, I12);
                }
            }
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to call untrackView", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void m(com.google.android.gms.ads.internal.client.zzdj zzdjVar) {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("Mute This Ad is not supported for 3rd party ads");
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final JSONObject n(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void o(View view, View view2, Map map, Map map2, boolean z, ImageView.ScaleType scaleType, int i) {
        if (!this.o) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Custom click reporting for 3p ads failed. enableCustomClickGesture is not set.");
        } else if (!this.k.L) {
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Custom click reporting for 3p ads failed. Ad unit id not in allow list.");
        } else {
            v(view2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void p(Bundle bundle) {
    }

    @Override // com.google.android.gms.internal.ads.zzdfm
    public final void q() {
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void r(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void s(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        boolean z;
        try {
            boolean z2 = this.n;
            zzfhr zzfhrVar = this.k;
            if (!z2) {
                this.n = com.google.android.gms.ads.internal.zzt.zzo().zzg(this.j, this.l.afmaVersion, zzfhrVar.C.toString(), this.m.g);
            }
            if (this.p) {
                zzbto zzbtoVar = this.f6001c;
                zzdbc zzdbcVar = this.f;
                if (zzbtoVar != null) {
                    if (zzfhrVar.D0) {
                        if (!zzbtoVar.zzt()) {
                            zzbtoVar.zzv();
                            zzdbcVar.zza();
                            return;
                        }
                        return;
                    }
                    if (zzbtoVar.zzt() && zzfhrVar.e == 4) {
                        this.g.zza();
                        return;
                    } else {
                        zzbtoVar.zzv();
                        zzdbcVar.zza();
                        return;
                    }
                }
                zzbtk zzbtkVar = this.q;
                boolean z3 = false;
                if (zzbtkVar != null) {
                    Parcel f2 = zzbtkVar.f2(13, zzbtkVar.I1());
                    ClassLoader classLoader = zzbcd.f4538a;
                    if (f2.readInt() != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    f2.recycle();
                    if (!z) {
                        zzbtkVar.r2(10, zzbtkVar.I1());
                        zzdbcVar.zza();
                        return;
                    }
                }
                zzbtl zzbtlVar = this.r;
                if (zzbtlVar != null) {
                    Parcel f22 = zzbtlVar.f2(11, zzbtlVar.I1());
                    ClassLoader classLoader2 = zzbcd.f4538a;
                    if (f22.readInt() != 0) {
                        z3 = true;
                    }
                    f22.recycle();
                    if (!z3) {
                        zzbtlVar.r2(8, zzbtlVar.I1());
                        zzdbcVar.zza();
                    }
                }
            }
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to call recordImpression", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final boolean t(Bundle bundle) {
        return false;
    }

    public final void v(View view) {
        boolean z;
        try {
            zzbto zzbtoVar = this.f6001c;
            zzdip zzdipVar = this.i;
            zzdai zzdaiVar = this.h;
            if (zzbtoVar != null && !zzbtoVar.zzu()) {
                zzbtoVar.t(new ObjectWrapper(view));
                zzdaiVar.onAdClicked();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ec)).booleanValue()) {
                    zzdipVar.P();
                    return;
                }
                return;
            }
            zzbtk zzbtkVar = this.q;
            boolean z2 = false;
            if (zzbtkVar != null) {
                Parcel f2 = zzbtkVar.f2(14, zzbtkVar.I1());
                ClassLoader classLoader = zzbcd.f4538a;
                if (f2.readInt() != 0) {
                    z = true;
                } else {
                    z = false;
                }
                f2.recycle();
                if (!z) {
                    ObjectWrapper objectWrapper = new ObjectWrapper(view);
                    Parcel I1 = zzbtkVar.I1();
                    zzbcd.e(I1, objectWrapper);
                    zzbtkVar.r2(11, I1);
                    zzdaiVar.onAdClicked();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ec)).booleanValue()) {
                        zzdipVar.P();
                        return;
                    }
                    return;
                }
            }
            zzbtl zzbtlVar = this.r;
            if (zzbtlVar != null) {
                Parcel f22 = zzbtlVar.f2(12, zzbtlVar.I1());
                ClassLoader classLoader2 = zzbcd.f4538a;
                if (f22.readInt() != 0) {
                    z2 = true;
                }
                f22.recycle();
                if (!z2) {
                    ObjectWrapper objectWrapper2 = new ObjectWrapper(view);
                    Parcel I12 = zzbtlVar.I1();
                    zzbcd.e(I12, objectWrapper2);
                    zzbtlVar.r2(9, I12);
                    zzdaiVar.onAdClicked();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ec)).booleanValue()) {
                        zzdipVar.P();
                    }
                }
            }
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to call handleClick", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void zzA() {
        try {
            zzbto zzbtoVar = this.f6001c;
            if (zzbtoVar != null) {
                zzbtoVar.zzC();
            }
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to call destroy", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void zzg() {
        this.o = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final boolean zzh() {
        return this.k.L;
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void zzq() {
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final int zzu() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final boolean zzv() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void A() {
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void e(MotionEvent motionEvent, View view) {
    }
}
