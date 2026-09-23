package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;

/* loaded from: classes.dex */
public final class zzbdp {

    /* renamed from: a, reason: collision with root package name */
    public final int f4577a;
    public final zzbdr b = new zzbdm();

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzbdr, com.google.android.gms.internal.ads.zzbdm] */
    public zzbdp(int i) {
        this.f4577a = i;
    }

    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Object, java.util.Comparator] */
    public final String a(ArrayList arrayList) {
        int i;
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        ?? r3 = 0;
        for (int i2 = 0; i2 < size; i2++) {
            sb.append(((String) arrayList.get(i2)).toLowerCase(Locale.US));
            sb.append('\n');
        }
        String[] split2 = sb.toString().split("\n");
        if (split2.length == 0) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        zzbdo zzbdoVar = new zzbdo();
        ?? obj = new Object();
        int i3 = this.f4577a;
        PriorityQueue priorityQueue = new PriorityQueue(i3, obj);
        int i4 = 0;
        while (i4 < split2.length) {
            String[] b = zzbdq.b(split2[i4], r3);
            if (b.length != 0) {
                int length = b.length;
                int i5 = 6;
                if (length < 6) {
                    i = i3;
                    zzbdt.a(i, zzbdt.d(b, length), zzbdt.b(b, r3, length), length, priorityQueue);
                } else {
                    i = i3;
                    long d = zzbdt.d(b, 6);
                    zzbdt.a(i, d, zzbdt.b(b, r3, 6), 6, priorityQueue);
                    int i6 = 1;
                    while (true) {
                        int length2 = b.length;
                        if (i6 < length2 - 5) {
                            long a2 = zzbdq.a(b[i6 - 1]);
                            long a3 = zzbdq.a(b[i6 + 5]);
                            String b2 = zzbdt.b(b, i6, i5);
                            d = (((a3 + 2147483647L) % 1073807359) + (((((d + 1073807359) - ((((a2 + 2147483647L) % 1073807359) * zzbdt.c(5, 16785407L)) % 1073807359)) % 1073807359) * 16785407) % 1073807359)) % 1073807359;
                            i = i;
                            zzbdt.a(i, d, b2, length2, priorityQueue);
                            i6++;
                            i5 = 6;
                        }
                    }
                }
            } else {
                i = i3;
            }
            i4++;
            i3 = i;
            r3 = 0;
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                zzbdoVar.b.write(this.b.b(((zzbds) it.next()).b));
            } catch (IOException e) {
                int i7 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Error while writing hash to byteStream", e);
            }
        }
        return zzbdoVar.toString();
    }
}
