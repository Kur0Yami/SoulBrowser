package com.google.android.gms.internal.ads;

import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.Build;
import j$.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
final class zzpo {
    public static final zzpo d;

    /* renamed from: a, reason: collision with root package name */
    public final int f9165a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgtn f9166c;

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.ads.zzgtm, com.google.android.gms.internal.ads.zzgsx] */
    static {
        zzpo zzpoVar;
        if (Build.VERSION.SDK_INT >= 33) {
            ?? zzgsxVar = new zzgsx(4);
            for (int i = 1; i <= 10; i++) {
                zzgsxVar.f(Integer.valueOf(zzfj.b(i)));
            }
            zzpoVar = new zzpo(2, zzgsxVar.h());
        } else {
            zzpoVar = new zzpo(2, 10);
        }
        d = zzpoVar;
    }

    public zzpo(int i, int i2) {
        this.f9165a = i;
        this.b = i2;
        this.f9166c = null;
    }

    public final int a(int i, zzd zzdVar) {
        if (this.f9166c != null) {
            return this.b;
        }
        int i2 = Build.VERSION.SDK_INT;
        int i3 = this.f9165a;
        if (i2 >= 29) {
            for (int i4 = 10; i4 > 0; i4--) {
                int b = zzfj.b(i4);
                if (b != 0 && AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i3).setSampleRate(i).setChannelMask(b).build(), zzdVar.a())) {
                    return i4;
                }
            }
            return 0;
        }
        Object obj = 0;
        Object obj2 = zzpp.e.get(Integer.valueOf(i3));
        if (obj2 != null) {
            obj = obj2;
        }
        return ((Integer) obj).intValue();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzpo)) {
            return false;
        }
        zzpo zzpoVar = (zzpo) obj;
        if (this.f9165a == zzpoVar.f9165a && this.b == zzpoVar.b && Objects.equals(this.f9166c, zzpoVar.f9166c)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        zzgtn zzgtnVar = this.f9166c;
        if (zzgtnVar == null) {
            hashCode = 0;
        } else {
            hashCode = zzgtnVar.hashCode();
        }
        return (((this.f9165a * 31) + this.b) * 31) + hashCode;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f9166c);
        int i = this.f9165a;
        int length = String.valueOf(i).length();
        int i2 = this.b;
        StringBuilder sb = new StringBuilder(length + 38 + String.valueOf(i2).length() + 15 + valueOf.length() + 1);
        androidx.work.impl.workers.a.A(sb, "AudioProfile[format=", i, ", maxChannelCount=", i2);
        return android.support.v4.media.a.q(sb, ", channelMasks=", valueOf, "]");
    }

    public zzpo(int i, Set set) {
        this.f9165a = i;
        zzgtn t = zzgtn.t(set);
        this.f9166c = t;
        zzgvr it = t.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            i2 = Math.max(i2, Integer.bitCount(((Integer) it.next()).intValue()));
        }
        this.b = i2;
    }
}
