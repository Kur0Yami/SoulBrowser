package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbjj extends zzbjx {

    /* renamed from: c, reason: collision with root package name */
    public final Drawable f4742c;
    public final Uri f;
    public final double g;
    public final int h;
    public final int i;
    public final Map j;

    public zzbjj(Drawable drawable, Uri uri, double d, int i, int i2, HashMap hashMap) {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
        this.f4742c = drawable;
        this.f = uri;
        this.g = d;
        this.h = i;
        this.i = i2;
        this.j = hashMap;
    }

    @Override // com.google.android.gms.internal.ads.zzbjy
    public final IObjectWrapper zzb() {
        return new ObjectWrapper(this.f4742c);
    }

    @Override // com.google.android.gms.internal.ads.zzbjy
    public final Uri zzc() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.ads.zzbjy
    public final double zzd() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.ads.zzbjy
    public final int zze() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.ads.zzbjy
    public final int zzf() {
        return this.i;
    }

    @Override // com.google.android.gms.internal.ads.zzbjy
    public final Map zzg() {
        return this.j;
    }
}
