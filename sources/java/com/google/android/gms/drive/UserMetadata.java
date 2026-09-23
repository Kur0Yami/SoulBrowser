package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.work.impl.workers.a;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@ShowFirstParty
@SafeParcelable.Class(creator = "UserMetadataCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class UserMetadata extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<UserMetadata> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3685c;
    public final String f;
    public final String g;
    public final boolean h;
    public final String i;

    public UserMetadata(String str, String str2, String str3, String str4, boolean z) {
        this.f3685c = str;
        this.f = str2;
        this.g = str3;
        this.h = z;
        this.i = str4;
    }

    public final String toString() {
        StringBuilder u = a.u("Permission ID: '", this.f3685c, "', Display Name: '", this.f, "', Picture URL: '");
        u.append(this.g);
        u.append("', Authenticated User: ");
        u.append(this.h);
        u.append(", Email: '");
        return android.support.v4.media.a.p(u, this.i, "'");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f3685c, false);
        SafeParcelWriter.writeString(parcel, 3, this.f, false);
        SafeParcelWriter.writeString(parcel, 4, this.g, false);
        SafeParcelWriter.writeBoolean(parcel, 5, this.h);
        SafeParcelWriter.writeString(parcel, 6, this.i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
