package com.google.android.gms.internal.ads;

import androidx.annotation.RestrictTo;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.PriorityQueue;

@RestrictTo
/* loaded from: classes.dex */
public final class zzgq {

    /* renamed from: a, reason: collision with root package name */
    public final zzgp f8204a;
    public final ArrayDeque b = new ArrayDeque();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayDeque f8205c = new ArrayDeque();
    public final PriorityQueue d = new PriorityQueue();
    public int e = -1;
    public zzgo f;

    public zzgq(zzgp zzgpVar) {
        this.f8204a = zzgpVar;
    }

    public final void a(int i) {
        boolean z;
        if (i >= 0) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.f(z);
        this.e = i;
        c(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0026, code lost:
    
        if (r8 < r0.f) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(long r8, com.google.android.gms.internal.ads.zzer r10) {
        /*
            r7 = this;
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r2 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r2 == 0) goto L92
            int r0 = r7.e
            if (r0 == 0) goto L93
            java.util.PriorityQueue r1 = r7.d
            r2 = -1
            if (r0 == r2) goto L29
            int r0 = r1.size()
            int r3 = r7.e
            if (r0 < r3) goto L29
            java.lang.Object r0 = r1.peek()
            com.google.android.gms.internal.ads.zzgo r0 = (com.google.android.gms.internal.ads.zzgo) r0
            java.lang.String r3 = com.google.android.gms.internal.ads.zzfj.f7405a
            long r3 = r0.f
            int r0 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r0 >= 0) goto L29
            goto L93
        L29:
            java.util.ArrayDeque r0 = r7.b
            boolean r3 = r0.isEmpty()
            if (r3 == 0) goto L37
            com.google.android.gms.internal.ads.zzer r0 = new com.google.android.gms.internal.ads.zzer
            r0.<init>()
            goto L3d
        L37:
            java.lang.Object r0 = r0.pop()
            com.google.android.gms.internal.ads.zzer r0 = (com.google.android.gms.internal.ads.zzer) r0
        L3d:
            int r3 = r10.B()
            r0.y(r3)
            byte[] r3 = r10.f6834a
            int r10 = r10.b
            byte[] r4 = r0.f6834a
            r5 = 0
            int r6 = r0.B()
            java.lang.System.arraycopy(r3, r10, r4, r5, r6)
            com.google.android.gms.internal.ads.zzgo r10 = r7.f
            if (r10 == 0) goto L63
            long r3 = r10.f
            int r3 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r3 == 0) goto L5d
            goto L63
        L5d:
            java.util.ArrayList r8 = r10.f8171c
            r8.add(r0)
            return
        L63:
            java.util.ArrayDeque r10 = r7.f8205c
            boolean r3 = r10.isEmpty()
            if (r3 == 0) goto L71
            com.google.android.gms.internal.ads.zzgo r10 = new com.google.android.gms.internal.ads.zzgo
            r10.<init>()
            goto L77
        L71:
            java.lang.Object r10 = r10.pop()
            com.google.android.gms.internal.ads.zzgo r10 = (com.google.android.gms.internal.ads.zzgo) r10
        L77:
            java.util.ArrayList r3 = r10.f8171c
            boolean r4 = r3.isEmpty()
            com.google.android.gms.internal.ads.zzgqa.f(r4)
            r10.f = r8
            r3.add(r0)
            r1.add(r10)
            r7.f = r10
            int r8 = r7.e
            if (r8 == r2) goto L91
            r7.c(r8)
        L91:
            return
        L92:
            r8 = r0
        L93:
            com.google.android.gms.internal.ads.zzgp r0 = r7.f8204a
            r0.a(r8, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgq.b(long, com.google.android.gms.internal.ads.zzer):void");
    }

    public final void c(int i) {
        ArrayList arrayList;
        while (true) {
            PriorityQueue priorityQueue = this.d;
            if (priorityQueue.size() > i) {
                zzgo zzgoVar = (zzgo) priorityQueue.poll();
                String str = zzfj.f7405a;
                int i2 = 0;
                while (true) {
                    arrayList = zzgoVar.f8171c;
                    if (i2 >= arrayList.size()) {
                        break;
                    }
                    this.f8204a.a(zzgoVar.f, (zzer) arrayList.get(i2));
                    this.b.push((zzer) arrayList.get(i2));
                    i2++;
                }
                arrayList.clear();
                zzgo zzgoVar2 = this.f;
                if (zzgoVar2 != null && zzgoVar2.f == zzgoVar.f) {
                    this.f = null;
                }
                this.f8205c.push(zzgoVar);
            } else {
                return;
            }
        }
    }
}
