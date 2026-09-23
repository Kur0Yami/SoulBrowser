package com.google.android.gms.internal.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;

@ShowFirstParty
@SafeParcelable.Class(creator = "AccountConsentInformationCreator")
/* loaded from: classes.dex */
public final class zzfm extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfm> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f9692c;
    public final byte[] f;
    public final ArrayList g;

    public zzfm(String str, byte[] bArr, ArrayList arrayList) {
        ArrayList arrayList2;
        this.f9692c = str;
        this.f = bArr;
        if (arrayList == null) {
            arrayList2 = new ArrayList(0);
        } else {
            arrayList2 = new ArrayList(arrayList);
        }
        this.g = arrayList2;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof zzfm) {
                zzfm zzfmVar = (zzfm) obj;
                if (Objects.equal(this.f9692c, zzfmVar.f9692c) && Objects.equal(this.f, zzfmVar.f) && Objects.equal(this.g, zzfmVar.g)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f9692c, this.f, this.g);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f9692c, false);
        SafeParcelWriter.writeByteArray(parcel, 2, this.f, false);
        SafeParcelWriter.writeIntegerList(parcel, 3, new ArrayList(this.g), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
