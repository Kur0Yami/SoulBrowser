package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@ShowFirstParty
@KeepForSdkWithMembers
@SafeParcelable.Class(creator = "ProxyRequestCreator")
/* loaded from: classes.dex */
public class ProxyRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<ProxyRequest> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3374c;
    public final int f;
    public final long g;
    public final byte[] h;
    public final int i;
    public final Bundle j;

    @ShowFirstParty
    @KeepForSdkWithMembers
    /* loaded from: classes.dex */
    public static class Builder {
    }

    public ProxyRequest(int i, String str, int i2, long j, byte[] bArr, Bundle bundle) {
        this.i = i;
        this.f3374c = str;
        this.f = i2;
        this.g = j;
        this.h = bArr;
        this.j = bundle;
    }

    public final String toString() {
        return "ProxyRequest[ url: " + this.f3374c + ", method: " + this.f + " ]";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f3374c, false);
        SafeParcelWriter.writeInt(parcel, 2, this.f);
        SafeParcelWriter.writeLong(parcel, 3, this.g);
        SafeParcelWriter.writeByteArray(parcel, 4, this.h, false);
        SafeParcelWriter.writeBundle(parcel, 5, this.j, false);
        SafeParcelWriter.writeInt(parcel, 1000, this.i);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
