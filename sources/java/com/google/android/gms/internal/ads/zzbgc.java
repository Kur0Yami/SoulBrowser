package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzbgc {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f4649a = new ArrayList();
    public final ArrayList b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f4650c = new ArrayList();

    public final ArrayList a() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.b;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            String str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a((zzbgb) obj);
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(str);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        zzbgl.a(arrayList3, new zzbhu(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, 4, "gad:dynamite_module:experiment_id"));
        zzbgl.a(arrayList3, zzbih.f4709a);
        zzbgl.a(arrayList3, zzbih.b);
        zzbgl.a(arrayList3, zzbih.f4710c);
        zzbgl.a(arrayList3, zzbih.d);
        zzbgl.a(arrayList3, zzbih.e);
        zzbgl.a(arrayList3, zzbih.u);
        zzbgl.a(arrayList3, zzbih.f);
        zzbgl.a(arrayList3, zzbih.m);
        zzbgl.a(arrayList3, zzbih.n);
        zzbgl.a(arrayList3, zzbih.o);
        zzbgl.a(arrayList3, zzbih.p);
        zzbgl.a(arrayList3, zzbih.q);
        zzbgl.a(arrayList3, zzbih.r);
        zzbgl.a(arrayList3, zzbih.s);
        zzbgl.a(arrayList3, zzbih.t);
        zzbgl.a(arrayList3, zzbih.g);
        zzbgl.a(arrayList3, zzbih.h);
        zzbgl.a(arrayList3, zzbih.i);
        zzbgl.a(arrayList3, zzbih.j);
        zzbgl.a(arrayList3, zzbih.k);
        zzbgl.a(arrayList3, zzbih.l);
        arrayList.addAll(arrayList3);
        return arrayList;
    }

    public final ArrayList b() {
        ArrayList a2 = a();
        ArrayList arrayList = this.f4650c;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            String str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a((zzbgb) obj);
            if (!TextUtils.isEmpty(str)) {
                a2.add(str);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        zzbgl.a(arrayList2, zzbiw.f4732a);
        a2.addAll(arrayList2);
        return a2;
    }
}
