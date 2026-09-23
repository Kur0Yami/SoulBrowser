package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.util.ArrayList;

/* loaded from: classes.dex */
final class zzarv {

    /* renamed from: c, reason: collision with root package name */
    public static final boolean f4374c = zzarw.f4376a;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f4375a = new ArrayList();
    public boolean b = false;

    public final synchronized void a(long j, String str) {
        if (!this.b) {
            this.f4375a.add(new zzaru(j, SystemClock.elapsedRealtime(), str));
        } else {
            throw new IllegalStateException("Marker added to finished log");
        }
    }

    public final synchronized void b(String str) {
        long j;
        this.b = true;
        ArrayList arrayList = this.f4375a;
        if (arrayList.size() == 0) {
            j = 0;
        } else {
            j = ((zzaru) arrayList.get(arrayList.size() - 1)).f4373c - ((zzaru) arrayList.get(0)).f4373c;
        }
        if (j > 0) {
            long j2 = ((zzaru) arrayList.get(0)).f4373c;
            zzarw.b("(%-4d ms) %s", Long.valueOf(j), str);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                zzaru zzaruVar = (zzaru) obj;
                long j3 = zzaruVar.f4373c;
                zzarw.b("(+%-4d) [%2d] %s", Long.valueOf(j3 - j2), Long.valueOf(zzaruVar.b), zzaruVar.f4372a);
                j2 = j3;
            }
        }
    }

    public final void finalize() {
        if (!this.b) {
            b("Request on the loose");
            zzarw.c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
        }
    }
}
