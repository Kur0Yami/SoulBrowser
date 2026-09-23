package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.google.android.gms.ads.admanager.AppEventListener;
import java.util.Iterator;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class zzeqp implements AppEventListener, zzddq, zzdby, zzdan, zzdbe, com.google.android.gms.ads.internal.client.zza, zzdak, zzddb, zzdba, zzdir {
    public final zzdxe m;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicReference f6823c = new AtomicReference();
    public final AtomicReference f = new AtomicReference();
    public final AtomicReference g = new AtomicReference();
    public final AtomicReference h = new AtomicReference();
    public final AtomicReference i = new AtomicReference();
    public final AtomicBoolean j = new AtomicBoolean(true);
    public final AtomicBoolean k = new AtomicBoolean(false);
    public final AtomicBoolean l = new AtomicBoolean(false);
    public final ArrayBlockingQueue n = new ArrayBlockingQueue(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ia)).intValue());

    public zzeqp(zzdxe zzdxeVar) {
        this.m = zzdxeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void J() {
        zzfey.a(this.f6823c, zzeqc.f6810a);
    }

    @Override // com.google.android.gms.internal.ads.zzddq
    public final void N(zzfic zzficVar) {
        this.j.set(true);
        this.l.set(false);
    }

    @Override // com.google.android.gms.internal.ads.zzdir
    public final void P() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ec)).booleanValue()) {
            zzfey.a(this.f6823c, zzeqh.f6815a);
        }
        zzfey.a(this.i, zzeqn.f6821a);
    }

    @Override // com.google.android.gms.internal.ads.zzdan
    public final void S(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzfex zzfexVar = new zzfex() { // from class: com.google.android.gms.internal.ads.zzeqb
            @Override // com.google.android.gms.internal.ads.zzfex
            public final /* synthetic */ void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbk) obj).zzd(com.google.android.gms.ads.internal.client.zze.this);
            }
        };
        AtomicReference atomicReference = this.f6823c;
        zzfey.a(atomicReference, zzfexVar);
        zzfey.a(atomicReference, new zzfex() { // from class: com.google.android.gms.internal.ads.zzepv
            @Override // com.google.android.gms.internal.ads.zzfex
            public final /* synthetic */ void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbk) obj).zzc(com.google.android.gms.ads.internal.client.zze.this.zza);
            }
        });
        zzfey.a(this.h, new zzfex() { // from class: com.google.android.gms.internal.ads.zzepw
            @Override // com.google.android.gms.internal.ads.zzfex
            public final /* synthetic */ void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzbn) obj).zzc(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
        this.j.set(false);
        this.n.clear();
    }

    @Override // com.google.android.gms.internal.ads.zzddb
    public final void a(final com.google.android.gms.ads.internal.client.zzt zztVar) {
        zzfey.a(this.g, new zzfex() { // from class: com.google.android.gms.internal.ads.zzepx
            @Override // com.google.android.gms.internal.ads.zzfex
            public final /* synthetic */ void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzdt) obj).zze(com.google.android.gms.ads.internal.client.zzt.this);
            }
        });
    }

    public final synchronized com.google.android.gms.ads.internal.client.zzbk b() {
        return (com.google.android.gms.ads.internal.client.zzbk) this.f6823c.get();
    }

    @Override // com.google.android.gms.internal.ads.zzdir
    public final void d0() {
        zzfey.a(this.f6823c, zzeqg.f6814a);
    }

    @Override // com.google.android.gms.internal.ads.zzddq
    public final void f(zzbza zzbzaVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdba
    public final void g(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzfey.a(this.i, new zzfex() { // from class: com.google.android.gms.internal.ads.zzepz
            @Override // com.google.android.gms.internal.ads.zzfex
            public final /* synthetic */ void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzcv) obj).zzb(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
    }

    public final void i(com.google.android.gms.ads.internal.client.zzco zzcoVar) {
        this.f.set(zzcoVar);
        this.k.set(true);
        q();
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void i0() {
        zzfey.a(this.f6823c, zzeqe.f6812a);
        zzeql zzeqlVar = zzeql.f6819a;
        AtomicReference atomicReference = this.i;
        zzfey.a(atomicReference, zzeqlVar);
        zzfey.a(atomicReference, zzeqm.f6820a);
    }

    @Override // com.google.android.gms.internal.ads.zzdbe
    public final void n() {
        zzfey.a(this.f6823c, zzeqi.f6816a);
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void o() {
        zzfey.a(this.f6823c, zzeqj.f6817a);
        zzfey.a(this.i, zzeqo.f6822a);
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ec)).booleanValue()) {
            zzfey.a(this.f6823c, zzeqf.f6813a);
        }
    }

    @Override // com.google.android.gms.ads.admanager.AppEventListener
    public final synchronized void onAppEvent(final String str, final String str2) {
        if (this.j.get()) {
            if (!this.n.offer(new Pair(str, str2))) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzd("The queue for app events is full, dropping the new event.");
                zzdxe zzdxeVar = this.m;
                if (zzdxeVar != null) {
                    zzdxd a2 = zzdxeVar.a();
                    a2.b("action", "dae_action");
                    a2.b("dae_name", str);
                    a2.b("dae_data", str2);
                    a2.c();
                    return;
                }
            }
            return;
        }
        zzfey.a(this.f, new zzfex() { // from class: com.google.android.gms.internal.ads.zzepy
            @Override // com.google.android.gms.internal.ads.zzfex
            public final /* synthetic */ void zza(Object obj) {
                ((com.google.android.gms.ads.internal.client.zzco) obj).zzb(str, str2);
            }
        });
    }

    public final void q() {
        if (this.k.get() && this.l.get()) {
            ArrayBlockingQueue arrayBlockingQueue = this.n;
            Iterator it = arrayBlockingQueue.iterator();
            while (it.hasNext()) {
                final Pair pair = (Pair) it.next();
                zzfey.a(this.f, new zzfex() { // from class: com.google.android.gms.internal.ads.zzeqa
                    @Override // com.google.android.gms.internal.ads.zzfex
                    public final /* synthetic */ void zza(Object obj) {
                        Pair pair2 = pair;
                        ((com.google.android.gms.ads.internal.client.zzco) obj).zzb((String) pair2.first, (String) pair2.second);
                    }
                });
            }
            arrayBlockingQueue.clear();
            this.j.set(false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void zzf() {
    }

    @Override // com.google.android.gms.internal.ads.zzdby
    public final synchronized void zzg() {
        zzfey.a(this.f6823c, zzeqd.f6811a);
        zzfey.a(this.h, zzeqk.f6818a);
        this.l.set(true);
        q();
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void U(zzbzj zzbzjVar, String str, String str2) {
    }
}
