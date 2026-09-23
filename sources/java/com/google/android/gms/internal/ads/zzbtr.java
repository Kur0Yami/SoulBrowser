package com.google.android.gms.internal.ads;

import android.location.Location;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzbtr implements MediationAdRequest {

    /* renamed from: a, reason: collision with root package name */
    public final Date f4890a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final Set f4891c;
    public final boolean d;
    public final Location e;
    public final int f;
    public final boolean g;

    public zzbtr(Date date, int i, HashSet hashSet, Location location, boolean z, int i2, boolean z2) {
        this.f4890a = date;
        this.b = i;
        this.f4891c = hashSet;
        this.e = location;
        this.d = z;
        this.f = i2;
        this.g = z2;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Date getBirthday() {
        return this.f4890a;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final int getGender() {
        return this.b;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Set getKeywords() {
        return this.f4891c;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Location getLocation() {
        return this.e;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final boolean isDesignedForFamilies() {
        return this.g;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final boolean isTesting() {
        return this.d;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final int taggedForChildDirectedTreatment() {
        return this.f;
    }
}
