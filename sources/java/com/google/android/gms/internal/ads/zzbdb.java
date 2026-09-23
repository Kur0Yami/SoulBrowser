package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.LinkedList;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzbdb {
    public int b;

    /* renamed from: a, reason: collision with root package name */
    public final Object f4561a = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final LinkedList f4562c = new LinkedList();

    public final void a(zzbda zzbdaVar) {
        synchronized (this.f4561a) {
            try {
                Iterator it = this.f4562c.iterator();
                while (it.hasNext()) {
                    zzbda zzbdaVar2 = (zzbda) it.next();
                    if (!com.google.android.gms.ads.internal.zzt.zzh().i().zzc()) {
                        if (!zzbdaVar.equals(zzbdaVar2) && zzbdaVar2.o.equals(zzbdaVar.o)) {
                            it.remove();
                            return;
                        }
                    } else if (!com.google.android.gms.ads.internal.zzt.zzh().i().zze() && !zzbdaVar.equals(zzbdaVar2) && zzbdaVar2.q.equals(zzbdaVar.q)) {
                        it.remove();
                        return;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(zzbda zzbdaVar) {
        synchronized (this.f4561a) {
            try {
                LinkedList linkedList = this.f4562c;
                if (linkedList.size() >= 10) {
                    int size = linkedList.size();
                    StringBuilder sb = new StringBuilder(String.valueOf(size).length() + 30);
                    sb.append("Queue is full, current size = ");
                    sb.append(size);
                    String sb2 = sb.toString();
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzd(sb2);
                    linkedList.remove(0);
                }
                int i2 = this.b;
                this.b = i2 + 1;
                zzbdaVar.l = i2;
                zzbdaVar.c();
                linkedList.add(zzbdaVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
