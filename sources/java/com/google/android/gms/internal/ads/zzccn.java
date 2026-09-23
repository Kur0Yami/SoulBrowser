package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
@SafeParcelable.Class(creator = "SignalConfigurationParcelCreator")
/* loaded from: classes.dex */
public final class zzccn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzccn> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f5039c;
    public final String f;
    public final com.google.android.gms.ads.internal.client.zzr g;
    public final com.google.android.gms.ads.internal.client.zzm h;
    public final int i;
    public final String j;

    public zzccn(String str, String str2, com.google.android.gms.ads.internal.client.zzr zzrVar, com.google.android.gms.ads.internal.client.zzm zzmVar, int i, String str3) {
        this.f5039c = str;
        this.f = str2;
        this.g = zzrVar;
        this.h = zzmVar;
        this.i = i;
        this.j = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f5039c, false);
        SafeParcelWriter.writeString(parcel, 2, this.f, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.g, i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.h, i, false);
        SafeParcelWriter.writeInt(parcel, 5, this.i);
        SafeParcelWriter.writeString(parcel, 6, this.j, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
