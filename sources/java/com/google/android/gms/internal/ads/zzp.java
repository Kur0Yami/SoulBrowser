package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import j$.util.Objects;
import java.util.Arrays;
import java.util.UUID;

/* loaded from: classes.dex */
public final class zzp implements Parcelable {
    public static final Parcelable.Creator<zzp> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public int f9149c;
    public final UUID f;
    public final String g;
    public final String h;
    public final byte[] i;

    public zzp(Parcel parcel) {
        this.f = new UUID(parcel.readLong(), parcel.readLong());
        this.g = parcel.readString();
        String readString = parcel.readString();
        String str = zzfj.f7405a;
        this.h = readString;
        this.i = parcel.createByteArray();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzp)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        zzp zzpVar = (zzp) obj;
        if (!Objects.equals(this.g, zzpVar.g) || !Objects.equals(this.h, zzpVar.h) || !Objects.equals(this.f, zzpVar.f) || !Arrays.equals(this.i, zzpVar.i)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        int i = this.f9149c;
        if (i == 0) {
            int hashCode2 = this.f.hashCode() * 31;
            String str = this.g;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int hashCode3 = Arrays.hashCode(this.i) + ((this.h.hashCode() + ((hashCode2 + hashCode) * 31)) * 31);
            this.f9149c = hashCode3;
            return hashCode3;
        }
        return i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        UUID uuid = this.f;
        parcel.writeLong(uuid.getMostSignificantBits());
        parcel.writeLong(uuid.getLeastSignificantBits());
        parcel.writeString(this.g);
        parcel.writeString(this.h);
        parcel.writeByteArray(this.i);
    }

    public zzp(UUID uuid, String str, byte[] bArr) {
        uuid.getClass();
        this.f = uuid;
        this.g = null;
        this.h = zzas.h(str);
        this.i = bArr;
    }
}
