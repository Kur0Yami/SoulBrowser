package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzhe {

    /* renamed from: a, reason: collision with root package name */
    public Uri f8449a;
    public Map b;

    /* renamed from: c, reason: collision with root package name */
    public long f8450c;
    public final long d;
    public int e;

    public /* synthetic */ zzhe(zzhf zzhfVar) {
        this.f8449a = zzhfVar.f8483a;
        this.b = zzhfVar.b;
        this.f8450c = zzhfVar.f8484c;
        this.d = zzhfVar.d;
        this.e = zzhfVar.e;
    }

    public final zzhf a() {
        zzgqa.h(this.f8449a, "The uri must be set.");
        return new zzhf(this.f8449a, this.b, this.f8450c, this.d, this.e);
    }

    public zzhe() {
        this.b = Collections.EMPTY_MAP;
        this.d = -1L;
    }
}
