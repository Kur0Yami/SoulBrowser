package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.PriorityQueue;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzbdt {
    public static void a(int i, long j, String str, int i2, PriorityQueue priorityQueue) {
        zzbds zzbdsVar = new zzbds(i2, str, j);
        if ((priorityQueue.size() != i || (((zzbds) priorityQueue.peek()).f4580c <= i2 && ((zzbds) priorityQueue.peek()).f4579a <= j)) && !priorityQueue.contains(zzbdsVar)) {
            priorityQueue.add(zzbdsVar);
            if (priorityQueue.size() > i) {
                priorityQueue.poll();
            }
        }
    }

    public static String b(String[] strArr, int i, int i2) {
        int i3 = i2 + i;
        if (strArr.length < i3) {
            int i4 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Unable to construct shingle");
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i5 = i3 - 1;
            if (i < i5) {
                sb.append(strArr[i]);
                sb.append(' ');
                i++;
            } else {
                sb.append(strArr[i5]);
                return sb.toString();
            }
        }
    }

    public static long c(int i, long j) {
        if (i == 1) {
            return j;
        }
        int i2 = i >> 1;
        long j2 = (j * j) % 1073807359;
        if ((i & 1) == 0) {
            return c(i2, j2) % 1073807359;
        }
        return ((c(i2, j2) % 1073807359) * j) % 1073807359;
    }

    public static long d(String[] strArr, int i) {
        long a2 = (zzbdq.a(strArr[0]) + 2147483647L) % 1073807359;
        for (int i2 = 1; i2 < i; i2++) {
            a2 = (((zzbdq.a(strArr[i2]) + 2147483647L) % 1073807359) + ((a2 * 16785407) % 1073807359)) % 1073807359;
        }
        return a2;
    }
}
