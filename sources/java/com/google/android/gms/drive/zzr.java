package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@ShowFirstParty
@SafeParcelable.Class(creator = "PermissionCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzr> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public String f3723c;
    public int f;
    public String g;
    public String h;
    public int i;
    public boolean j;

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == zzr.class) {
            if (obj == this) {
                return true;
            }
            zzr zzrVar = (zzr) obj;
            if (Objects.equal(this.f3723c, zzrVar.f3723c) && this.f == zzrVar.f && this.i == zzrVar.i && this.j == zzrVar.j) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3723c, Integer.valueOf(this.f), Integer.valueOf(this.i), Boolean.valueOf(this.j));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        int i2 = this.f;
        switch (i2) {
            case 256:
            case 257:
            case 258:
                str = this.f3723c;
                break;
            default:
                str = null;
                break;
        }
        SafeParcelWriter.writeString(parcel, 2, str, false);
        int i3 = -1;
        switch (i2) {
            case 256:
            case 257:
            case 258:
                break;
            default:
                i2 = -1;
                break;
        }
        SafeParcelWriter.writeInt(parcel, 3, i2);
        SafeParcelWriter.writeString(parcel, 4, this.g, false);
        SafeParcelWriter.writeString(parcel, 5, this.h, false);
        int i4 = this.i;
        if (i4 == 0 || i4 == 1 || i4 == 2 || i4 == 3) {
            i3 = i4;
        }
        SafeParcelWriter.writeInt(parcel, 6, i3);
        SafeParcelWriter.writeBoolean(parcel, 7, this.j);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
