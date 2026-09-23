package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes.dex */
public final class zzed {

    /* renamed from: a, reason: collision with root package name */
    public final zzdn f6387a;
    public final zzdx b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdz f6388c;
    public final CopyOnWriteArraySet d;
    public final ArrayDeque e;
    public final ArrayDeque f;
    public final Object g;
    public boolean h;
    public boolean i;

    public zzed(Looper looper, zzdn zzdnVar) {
        this(new CopyOnWriteArraySet(), looper, zzdnVar, null, true);
    }

    public final void a(Object obj) {
        obj.getClass();
        synchronized (this.g) {
            try {
                if (this.h) {
                    return;
                }
                this.d.add(new zzea(obj));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(Object obj) {
        f();
        CopyOnWriteArraySet copyOnWriteArraySet = this.d;
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            zzea zzeaVar = (zzea) it.next();
            if (zzeaVar.f6298a.equals(obj)) {
                zzeaVar.d = true;
                zzdz zzdzVar = this.f6388c;
                if (zzdzVar != null && zzeaVar.f6299c) {
                    zzeaVar.f6299c = false;
                    zzdzVar.a(zzeaVar.f6298a, zzeaVar.b.b());
                }
                copyOnWriteArraySet.remove(zzeaVar);
            }
        }
    }

    public final void c(final int i, final zzdy zzdyVar) {
        f();
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.d);
        this.f.add(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeb
            @Override // java.lang.Runnable
            public final void run() {
                Iterator it = copyOnWriteArraySet.iterator();
                while (it.hasNext()) {
                    zzea zzeaVar = (zzea) it.next();
                    if (!zzeaVar.d) {
                        int i2 = i;
                        if (i2 != -1) {
                            zzeaVar.b.a(i2);
                        }
                        zzeaVar.f6299c = true;
                        zzdyVar.zza(zzeaVar.f6298a);
                    }
                }
            }
        });
    }

    public final void d() {
        f();
        ArrayDeque arrayDeque = this.f;
        if (!arrayDeque.isEmpty()) {
            if (this.f6388c != null) {
                zzdx zzdxVar = this.b;
                if (!zzdxVar.zzb()) {
                    zzdxVar.c(zzdxVar.zzc(1));
                }
            }
            ArrayDeque arrayDeque2 = this.e;
            boolean isEmpty = arrayDeque2.isEmpty();
            arrayDeque2.addAll(arrayDeque);
            arrayDeque.clear();
            if (isEmpty) {
                while (!arrayDeque2.isEmpty()) {
                    ((Runnable) arrayDeque2.peekFirst()).run();
                    arrayDeque2.removeFirst();
                }
            }
        }
    }

    public final void e() {
        f();
        synchronized (this.g) {
            this.h = true;
        }
        CopyOnWriteArraySet copyOnWriteArraySet = this.d;
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            zzea zzeaVar = (zzea) it.next();
            zzdz zzdzVar = this.f6388c;
            zzeaVar.d = true;
            if (zzdzVar != null && zzeaVar.f6299c) {
                zzeaVar.f6299c = false;
                zzdzVar.a(zzeaVar.f6298a, zzeaVar.b.b());
            }
        }
        copyOnWriteArraySet.clear();
    }

    public final void f() {
        boolean z;
        if (!this.i) {
            return;
        }
        if (Thread.currentThread() == this.b.zza().getThread()) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.f(z);
    }

    public zzed(CopyOnWriteArraySet copyOnWriteArraySet, Looper looper, zzdn zzdnVar, zzdz zzdzVar, boolean z) {
        this.f6387a = zzdnVar;
        this.d = copyOnWriteArraySet;
        this.f6388c = zzdzVar;
        this.g = new Object();
        this.e = new ArrayDeque();
        this.f = new ArrayDeque();
        this.b = zzdnVar.a(looper, new Handler.Callback() { // from class: com.google.android.gms.internal.ads.zzec
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                zzed zzedVar = zzed.this;
                zzdz zzdzVar2 = zzedVar.f6388c;
                zzdzVar2.getClass();
                Iterator it = zzedVar.d.iterator();
                while (it.hasNext()) {
                    zzea zzeaVar = (zzea) it.next();
                    if (!zzeaVar.d && zzeaVar.f6299c) {
                        zzs b = zzeaVar.b.b();
                        zzeaVar.b = new zzr();
                        zzeaVar.f6299c = false;
                        zzdzVar2.a(zzeaVar.f6298a, b);
                    }
                    if (zzedVar.b.zzb()) {
                        return true;
                    }
                }
                return true;
            }
        });
        this.i = z;
    }
}
