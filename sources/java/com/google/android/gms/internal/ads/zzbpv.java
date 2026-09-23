package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.initialization.InitializationStatus;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbpv implements InitializationStatus {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f4823a;

    public zzbpv(HashMap hashMap) {
        this.f4823a = hashMap;
    }

    @Override // com.google.android.gms.ads.initialization.InitializationStatus
    public final Map getAdapterStatusMap() {
        return this.f4823a;
    }
}
