package com.google.android.gms.internal.ads;

import java.util.AbstractCollection;
import java.util.Collection;

/* loaded from: classes.dex */
public class zzcvk implements zzems {

    /* renamed from: a, reason: collision with root package name */
    public final zzfic f5506a;
    public final zzfhr b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdbj f5507c;
    public final zzdbw d;
    public final zzffg e;
    public final zzdad f;
    public final zzdfb g;
    public final zzdca h;
    public final zzdig i;
    public final zzcze j;
    public final zzdyh k;

    public zzcvk(zzcvj zzcvjVar) {
        this.f5506a = zzcvjVar.f5504a;
        this.b = zzcvjVar.b;
        this.f5507c = zzcvjVar.f5505c;
        this.d = zzcvjVar.d;
        this.e = zzcvjVar.e;
        this.f = zzcvjVar.f;
        this.g = zzcvjVar.g;
        this.h = zzcvjVar.h;
        this.i = zzcvjVar.i;
        this.j = zzcvjVar.j;
        this.k = zzcvjVar.k;
    }

    public void a() {
        this.d.zzg();
        this.h.J(this);
    }

    public final void b() {
        zzdyh zzdyhVar;
        Collection collection = this.b.C0;
        if (collection != null) {
            AbstractCollection abstractCollection = (AbstractCollection) collection;
            if (!abstractCollection.isEmpty() && (zzdyhVar = this.k) != null) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.L8)).booleanValue() && !abstractCollection.isEmpty()) {
                    zzgvs listIterator = ((zzgtd) collection).listIterator(0);
                    while (true) {
                        zzgra zzgraVar = (zzgra) listIterator;
                        if (zzgraVar.hasNext()) {
                            zzdyi zzdyiVar = (zzdyi) zzgraVar.next();
                            int[] iArr = zzdyiVar.b;
                            int length = iArr.length;
                            int i = 0;
                            while (true) {
                                if (i >= length) {
                                    break;
                                }
                                if (iArr[i] == 1) {
                                    zzdyhVar.a(zzdyiVar.f6261a, com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis(), 1);
                                    break;
                                }
                                i++;
                            }
                        } else {
                            return;
                        }
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzems
    public final void zzm() {
        this.i.zzi();
    }
}
