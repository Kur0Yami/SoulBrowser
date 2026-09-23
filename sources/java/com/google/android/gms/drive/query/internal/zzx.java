package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "OperatorCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class zzx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzx> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3719c;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, android.os.Parcelable$Creator<com.google.android.gms.drive.query.internal.zzx>] */
    static {
        new zzx("=");
        new zzx("<");
        new zzx("<=");
        new zzx(">");
        new zzx(">=");
        new zzx("and");
        new zzx("or");
        new zzx("not");
        new zzx("contains");
    }

    public zzx(String str) {
        this.f3719c = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzx.class != obj.getClass()) {
            return false;
        }
        String str = ((zzx) obj).f3719c;
        String str2 = this.f3719c;
        if (str2 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str2.equals(str)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        String str = this.f3719c;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode + 31;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f3719c, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
