package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class zzarn {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicInteger f4368a;
    public final HashSet b;

    /* renamed from: c, reason: collision with root package name */
    public final PriorityBlockingQueue f4369c;
    public final PriorityBlockingQueue d;
    public final zzasg e;
    public final zzarz f;
    public final zzare[] g;
    public zzaqw h;
    public final ArrayList i;
    public final ArrayList j;
    public final zzarb k;

    public zzarn(zzasg zzasgVar, zzarz zzarzVar) {
        zzarb zzarbVar = new zzarb(new Handler(Looper.getMainLooper()));
        this.f4368a = new AtomicInteger();
        this.b = new HashSet();
        this.f4369c = new PriorityBlockingQueue();
        this.d = new PriorityBlockingQueue();
        this.i = new ArrayList();
        this.j = new ArrayList();
        this.e = zzasgVar;
        this.f = zzarzVar;
        this.g = new zzare[4];
        this.k = zzarbVar;
    }

    public final void a() {
        zzaqw zzaqwVar = this.h;
        if (zzaqwVar != null) {
            zzaqwVar.h = true;
            zzaqwVar.interrupt();
        }
        zzare[] zzareVarArr = this.g;
        for (int i = 0; i < 4; i++) {
            zzare zzareVar = zzareVarArr[i];
            if (zzareVar != null) {
                zzareVar.h = true;
                zzareVar.interrupt();
            }
        }
        PriorityBlockingQueue priorityBlockingQueue = this.f4369c;
        PriorityBlockingQueue priorityBlockingQueue2 = this.d;
        zzasg zzasgVar = this.e;
        zzarb zzarbVar = this.k;
        zzaqw zzaqwVar2 = new zzaqw(priorityBlockingQueue, priorityBlockingQueue2, zzasgVar, zzarbVar);
        this.h = zzaqwVar2;
        zzaqwVar2.start();
        for (int i2 = 0; i2 < 4; i2++) {
            zzare zzareVar2 = new zzare(priorityBlockingQueue2, this.f, zzasgVar, zzarbVar);
            zzareVarArr[i2] = zzareVar2;
            zzareVar2.start();
        }
    }

    public final void b(zzark zzarkVar) {
        zzarkVar.zzf(this);
        HashSet hashSet = this.b;
        synchronized (hashSet) {
            hashSet.add(zzarkVar);
        }
        zzarkVar.zzg(this.f4368a.incrementAndGet());
        zzarkVar.zzc("add-to-queue");
        c();
        this.f4369c.add(zzarkVar);
    }

    public final void c() {
        ArrayList arrayList = this.j;
        synchronized (arrayList) {
            try {
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    ((zzarl) obj).zza();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
