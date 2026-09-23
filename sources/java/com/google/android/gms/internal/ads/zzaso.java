package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.File;

/* loaded from: classes.dex */
final class zzaso implements zzasf {

    /* renamed from: a, reason: collision with root package name */
    public File f4393a = null;
    public final /* synthetic */ Context b;

    public zzaso(Context context) {
        this.b = context;
    }

    @Override // com.google.android.gms.internal.ads.zzasf
    public final File zza() {
        if (this.f4393a == null) {
            this.f4393a = new File(this.b.getCacheDir(), "volley");
        }
        return this.f4393a;
    }
}
