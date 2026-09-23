package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Objects;

/* loaded from: classes.dex */
public final class zzbzj extends zzbzl {

    /* renamed from: c, reason: collision with root package name */
    public final String f4989c;
    public final int f;

    public zzbzj(String str, int i) {
        super("com.google.android.gms.ads.internal.reward.client.IRewardItem");
        this.f4989c = str;
        this.f = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzbzj)) {
            return false;
        }
        zzbzj zzbzjVar = (zzbzj) obj;
        if (Objects.equal(this.f4989c, zzbzjVar.f4989c)) {
            if (Objects.equal(Integer.valueOf(this.f), Integer.valueOf(zzbzjVar.f))) {
                return true;
            }
        }
        return false;
    }
}
