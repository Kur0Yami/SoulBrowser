package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import org.json.JSONArray;

@SafeParcelable.Class(creator = "RewardItemParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzbzy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbzy> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f4991c;
    public final int f;

    public zzbzy(String str, int i) {
        this.f4991c = str;
        this.f = i;
    }

    public static zzbzy F(JSONArray jSONArray) {
        if (jSONArray != null && jSONArray.length() != 0) {
            return new zzbzy(jSONArray.getJSONObject(0).optString("rb_type"), jSONArray.getJSONObject(0).optInt("rb_amount"));
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzbzy)) {
            return false;
        }
        zzbzy zzbzyVar = (zzbzy) obj;
        if (!Objects.equal(this.f4991c, zzbzyVar.f4991c) || !Objects.equal(Integer.valueOf(this.f), Integer.valueOf(zzbzyVar.f))) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f4991c, Integer.valueOf(this.f));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f4991c, false);
        SafeParcelWriter.writeInt(parcel, 3, this.f);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
