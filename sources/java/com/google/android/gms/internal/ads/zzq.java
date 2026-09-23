package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import j$.util.Objects;
import java.util.Arrays;
import java.util.Comparator;
import java.util.UUID;

/* loaded from: classes.dex */
public final class zzq implements Comparator<zzp>, Parcelable {
    public static final Parcelable.Creator<zzq> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final zzp[] f9180c;
    public int f;
    public final String g;
    public final int h;

    public zzq(Parcel parcel) {
        this.g = parcel.readString();
        zzp[] zzpVarArr = (zzp[]) parcel.createTypedArray(zzp.CREATOR);
        String str = zzfj.f7405a;
        this.f9180c = zzpVarArr;
        this.h = zzpVarArr.length;
    }

    public final zzq a(String str) {
        if (Objects.equals(this.g, str)) {
            return this;
        }
        return new zzq(str, false, this.f9180c);
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zzp zzpVar, zzp zzpVar2) {
        zzp zzpVar3 = zzpVar2;
        UUID uuid = zzg.f7765a;
        UUID uuid2 = zzpVar.f;
        if (uuid.equals(uuid2)) {
            if (!uuid.equals(zzpVar3.f)) {
                return 1;
            }
            return 0;
        }
        return uuid2.compareTo(zzpVar3.f);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzq.class == obj.getClass()) {
            zzq zzqVar = (zzq) obj;
            if (Objects.equals(this.g, zzqVar.g) && Arrays.equals(this.f9180c, zzqVar.f9180c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int i = this.f;
        if (i == 0) {
            String str = this.g;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int hashCode2 = (hashCode * 31) + Arrays.hashCode(this.f9180c);
            this.f = hashCode2;
            return hashCode2;
        }
        return i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.g);
        parcel.writeTypedArray(this.f9180c, 0);
    }

    public zzq(String str, boolean z, zzp... zzpVarArr) {
        this.g = str;
        zzpVarArr = z ? (zzp[]) zzpVarArr.clone() : zzpVarArr;
        this.f9180c = zzpVarArr;
        this.h = zzpVarArr.length;
        Arrays.sort(zzpVarArr, this);
    }
}
