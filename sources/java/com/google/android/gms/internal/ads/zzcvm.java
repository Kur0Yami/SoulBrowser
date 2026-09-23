package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes.dex */
public final class zzcvm implements zzcvn {

    /* renamed from: a, reason: collision with root package name */
    public final Map f5508a;

    public zzcvm(Map map) {
        this.f5508a = map;
    }

    @Override // com.google.android.gms.internal.ads.zzcvn
    public final zzejg a(int i, String str) {
        return (zzejg) this.f5508a.get(str);
    }
}
