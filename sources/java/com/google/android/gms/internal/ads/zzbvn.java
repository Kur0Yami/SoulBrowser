package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.VersionInfo;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
@SafeParcelable.Class(creator = "RtbVersionInfoParcelCreator")
/* loaded from: classes.dex */
public final class zzbvn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbvn> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f4925c;
    public final int f;
    public final int g;

    public zzbvn(int i, int i2, int i3) {
        this.f4925c = i;
        this.f = i2;
        this.g = i3;
    }

    public static zzbvn F(VersionInfo versionInfo) {
        return new zzbvn(versionInfo.getMajorVersion(), versionInfo.getMinorVersion(), versionInfo.getMicroVersion());
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzbvn)) {
            zzbvn zzbvnVar = (zzbvn) obj;
            if (zzbvnVar.g == this.g && zzbvnVar.f == this.f && zzbvnVar.f4925c == this.f4925c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new int[]{this.f4925c, this.f, this.g});
    }

    public final String toString() {
        int i = this.f4925c;
        int length = String.valueOf(i).length();
        int i2 = this.f;
        int length2 = String.valueOf(i2).length();
        int i3 = this.g;
        StringBuilder sb = new StringBuilder(length + 1 + length2 + 1 + String.valueOf(i3).length());
        sb.append(i);
        sb.append(".");
        sb.append(i2);
        sb.append(".");
        sb.append(i3);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f4925c);
        SafeParcelWriter.writeInt(parcel, 2, this.f);
        SafeParcelWriter.writeInt(parcel, 3, this.g);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
