package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.PriorityQueue;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzgbl implements zzgbj {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f7801a;
    public final PriorityQueue b = new PriorityQueue();

    public zzgbl(Executor executor) {
        this.f7801a = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzgbj
    public final void a(Runnable runnable, long j) {
        if (j <= 0) {
            this.f7801a.execute(runnable);
            return;
        }
        zzgbn zzgbnVar = new zzgbn(runnable, System.currentTimeMillis() + j);
        PriorityQueue priorityQueue = this.b;
        synchronized (priorityQueue) {
            priorityQueue.add(zzgbnVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgbj
    public final void zzb() {
        PriorityQueue priorityQueue = this.b;
        synchronized (priorityQueue) {
            try {
                if (priorityQueue.isEmpty()) {
                    return;
                }
                PriorityQueue priorityQueue2 = new PriorityQueue();
                long currentTimeMillis = System.currentTimeMillis();
                for (zzgbn zzgbnVar = (zzgbn) priorityQueue.peek(); zzgbnVar != null && zzgbnVar.f <= currentTimeMillis; zzgbnVar = (zzgbn) priorityQueue.peek()) {
                    priorityQueue2.add(zzgbnVar);
                }
                Iterator it = priorityQueue2.iterator();
                while (it.hasNext()) {
                    try {
                        this.f7801a.execute(((zzgbn) it.next()).f7803c);
                    } catch (RuntimeException unused) {
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
