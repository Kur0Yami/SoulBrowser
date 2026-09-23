package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
@SafeParcelable.Class(creator = "NonagonRequestParcelCreator")
/* loaded from: classes.dex */
public final class zzbza extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbza> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final Bundle f4979c;
    public final VersionInfoParcel f;
    public final ApplicationInfo g;
    public final String h;
    public final List i;
    public final PackageInfo j;
    public final String k;
    public final String l;
    public zzfkg m;
    public String n;
    public final boolean o;
    public final boolean p;
    public final Bundle q;
    public final Bundle r;
    public final int s;

    public zzbza(Bundle bundle, VersionInfoParcel versionInfoParcel, ApplicationInfo applicationInfo, String str, ArrayList arrayList, PackageInfo packageInfo, String str2, String str3, zzfkg zzfkgVar, String str4, boolean z, boolean z2, Bundle bundle2, Bundle bundle3, int i) {
        this.f4979c = bundle;
        this.f = versionInfoParcel;
        this.h = str;
        this.g = applicationInfo;
        this.i = arrayList;
        this.j = packageInfo;
        this.k = str2;
        this.l = str3;
        this.m = zzfkgVar;
        this.n = str4;
        this.o = z;
        this.p = z2;
        this.q = bundle2;
        this.r = bundle3;
        this.s = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBundle(parcel, 1, this.f4979c, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f, i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.g, i, false);
        SafeParcelWriter.writeString(parcel, 4, this.h, false);
        SafeParcelWriter.writeStringList(parcel, 5, this.i, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.j, i, false);
        SafeParcelWriter.writeString(parcel, 7, this.k, false);
        SafeParcelWriter.writeString(parcel, 9, this.l, false);
        SafeParcelWriter.writeParcelable(parcel, 10, this.m, i, false);
        SafeParcelWriter.writeString(parcel, 11, this.n, false);
        SafeParcelWriter.writeBoolean(parcel, 12, this.o);
        SafeParcelWriter.writeBoolean(parcel, 13, this.p);
        SafeParcelWriter.writeBundle(parcel, 14, this.q, false);
        SafeParcelWriter.writeBundle(parcel, 15, this.r, false);
        SafeParcelWriter.writeInt(parcel, 16, this.s);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
