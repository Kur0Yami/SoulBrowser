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
@SafeParcelable.Class(creator = "ConsentInformationCreator")
/* loaded from: classes.dex */
public final class zzfn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzfn> CREATOR;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f9693c;
    public final boolean f;
    public final boolean g;

    /* JADX WARN: Type inference failed for: r0v1, types: [android.os.Parcelable$Creator<com.google.android.gms.internal.cast.zzfn>, java.lang.Object] */
    static {
        new zzfn(null, false, false);
        CREATOR = new Object();
    }

    public zzfn(ArrayList arrayList, boolean z, boolean z2) {
        ArrayList arrayList2;
        if (arrayList == null) {
            arrayList2 = new ArrayList(0);
        } else {
            arrayList2 = new ArrayList(arrayList);
        }
        this.f9693c = arrayList2;
        this.f = z;
        this.g = z2;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof zzfn) {
                zzfn zzfnVar = (zzfn) obj;
                if (Objects.equal(this.f9693c, zzfnVar.f9693c) && Objects.equal(Boolean.valueOf(this.f), Boolean.valueOf(zzfnVar.f))) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f9693c, Boolean.valueOf(this.f));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, new ArrayList(this.f9693c), false);
        SafeParcelWriter.writeBoolean(parcel, 2, this.f);
        SafeParcelWriter.writeBoolean(parcel, 3, this.g);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
