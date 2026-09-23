package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;

@ShowFirstParty
@SafeParcelable.Class(creator = "TokenDataCreator")
/* loaded from: classes.dex */
public class TokenData extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<TokenData> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f3337c;
    public final String f;
    public final Long g;
    public final boolean h;
    public final boolean i;
    public final List j;
    public final String k;

    public TokenData(int i, String str, Long l, boolean z, boolean z2, ArrayList arrayList, String str2) {
        this.f3337c = i;
        this.f = Preconditions.checkNotEmpty(str);
        this.g = l;
        this.h = z;
        this.i = z2;
        this.j = arrayList;
        this.k = str2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof TokenData)) {
            return false;
        }
        TokenData tokenData = (TokenData) obj;
        if (!TextUtils.equals(this.f, tokenData.f) || !Objects.equal(this.g, tokenData.g) || this.h != tokenData.h || this.i != tokenData.i || !Objects.equal(this.j, tokenData.j) || !Objects.equal(this.k, tokenData.k)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f, this.g, Boolean.valueOf(this.h), Boolean.valueOf(this.i), this.j, this.k);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f3337c);
        SafeParcelWriter.writeString(parcel, 2, this.f, false);
        SafeParcelWriter.writeLongObject(parcel, 3, this.g, false);
        SafeParcelWriter.writeBoolean(parcel, 4, this.h);
        SafeParcelWriter.writeBoolean(parcel, 5, this.i);
        SafeParcelWriter.writeStringList(parcel, 6, this.j, false);
        SafeParcelWriter.writeString(parcel, 7, this.k, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
