package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzyh {
    public static final zzyh d = new zzyh(new zzbg[0]);

    /* renamed from: a, reason: collision with root package name */
    public final int f9388a;
    public final zzgtd b;

    /* renamed from: c, reason: collision with root package name */
    public int f9389c;

    static {
        String str = zzfj.f7405a;
        Integer.toString(0, 36);
    }

    public zzyh(zzbg... zzbgVarArr) {
        this.b = zzgtd.w(zzbgVarArr);
        this.f9388a = zzbgVarArr.length;
        int i = 0;
        while (i < this.b.size()) {
            int i2 = i + 1;
            for (int i3 = i2; i3 < this.b.size(); i3++) {
                if (((zzbg) this.b.get(i)).equals(this.b.get(i3))) {
                    zzee.f("TrackGroupArray", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                }
            }
            i = i2;
        }
    }

    public final zzbg a(int i) {
        return (zzbg) ((zzguy) this.b).get(i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzyh.class == obj.getClass()) {
            zzyh zzyhVar = (zzyh) obj;
            if (this.f9388a == zzyhVar.f9388a && this.b.equals(zzyhVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f9389c;
        if (i == 0) {
            int hashCode = this.b.hashCode();
            this.f9389c = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        return this.b.toString();
    }
}
