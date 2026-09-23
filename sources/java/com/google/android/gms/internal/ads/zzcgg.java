package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class zzcgg {

    /* renamed from: a, reason: collision with root package name */
    public long f5128a;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.google.android.gms.internal.ads.zziix] */
    /* JADX WARN: Type inference failed for: r4v7, types: [com.google.android.gms.internal.ads.zziix] */
    public final long a(ByteBuffer byteBuffer) {
        zzasy zzasyVar;
        zzasx zzasxVar;
        long j = this.f5128a;
        if (j > 0) {
            return j;
        }
        try {
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.flip();
            zzast zzastVar = new zzast(new zzcgf(duplicate), zzcgk.f5130c);
            ArrayList arrayList = zzastVar.j;
            if (zzastVar.f != null && zzastVar.g != zziir.k) {
                arrayList = new zziix(arrayList, zzastVar);
            }
            Iterator it = arrayList.iterator();
            while (true) {
                zzasyVar = null;
                if (it.hasNext()) {
                    zzasv zzasvVar = (zzasv) it.next();
                    if (zzasvVar instanceof zzasx) {
                        zzasxVar = (zzasx) zzasvVar;
                        break;
                    }
                } else {
                    zzasxVar = null;
                    break;
                }
            }
            ArrayList arrayList2 = zzasxVar.j;
            if (zzasxVar.f != null && zzasxVar.g != zziir.k) {
                arrayList2 = new zziix(arrayList2, zzasxVar);
            }
            Iterator it2 = arrayList2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                zzasv zzasvVar2 = (zzasv) it2.next();
                if (zzasvVar2 instanceof zzasy) {
                    zzasyVar = (zzasy) zzasvVar2;
                    break;
                }
            }
            long j2 = (zzasyVar.q * 1000) / zzasyVar.p;
            this.f5128a = j2;
            return j2;
        } catch (IOException | RuntimeException unused) {
            return 0L;
        }
    }
}
