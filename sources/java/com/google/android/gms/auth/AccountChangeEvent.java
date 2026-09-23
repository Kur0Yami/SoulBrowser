package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.work.impl.workers.a;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "AccountChangeEventCreator")
/* loaded from: classes.dex */
public class AccountChangeEvent extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<AccountChangeEvent> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f3334c;
    public final long f;
    public final String g;
    public final int h;
    public final int i;
    public final String j;

    public AccountChangeEvent(int i, long j, String str, int i2, int i3, String str2) {
        this.f3334c = i;
        this.f = j;
        this.g = (String) Preconditions.checkNotNull(str);
        this.h = i2;
        this.i = i3;
        this.j = str2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AccountChangeEvent)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        AccountChangeEvent accountChangeEvent = (AccountChangeEvent) obj;
        if (this.f3334c != accountChangeEvent.f3334c || this.f != accountChangeEvent.f || !Objects.equal(this.g, accountChangeEvent.g) || this.h != accountChangeEvent.h || this.i != accountChangeEvent.i || !Objects.equal(this.j, accountChangeEvent.j)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f3334c), Long.valueOf(this.f), this.g, Integer.valueOf(this.h), Integer.valueOf(this.i), this.j);
    }

    public final String toString() {
        String str;
        int i = this.h;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        str = "UNKNOWN";
                    } else {
                        str = "RENAMED_TO";
                    }
                } else {
                    str = "RENAMED_FROM";
                }
            } else {
                str = "REMOVED";
            }
        } else {
            str = "ADDED";
        }
        StringBuilder u = a.u("AccountChangeEvent {accountName = ", this.g, ", changeType = ", str, ", changeData = ");
        u.append(this.j);
        u.append(", eventIndex = ");
        u.append(this.i);
        u.append("}");
        return u.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f3334c);
        SafeParcelWriter.writeLong(parcel, 2, this.f);
        SafeParcelWriter.writeString(parcel, 3, this.g, false);
        SafeParcelWriter.writeInt(parcel, 4, this.h);
        SafeParcelWriter.writeInt(parcel, 5, this.i);
        SafeParcelWriter.writeString(parcel, 6, this.j, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
