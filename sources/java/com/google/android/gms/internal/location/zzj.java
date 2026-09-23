package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.LongCompanionObject;

@SafeParcelable.Class(creator = "DeviceOrientationRequestInternalCreator")
/* loaded from: classes3.dex */
public final class zzj extends AbstractSafeParcelable {

    /* renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.location.zzs f10363c;
    public final List f;
    public final String g;
    public static final List h = Collections.EMPTY_LIST;
    public static final com.google.android.gms.location.zzs i = new com.google.android.gms.location.zzs(true, 50, 0.0f, LongCompanionObject.MAX_VALUE, Integer.MAX_VALUE);
    public static final Parcelable.Creator<zzj> CREATOR = new Object();

    public zzj(com.google.android.gms.location.zzs zzsVar, List list, String str) {
        this.f10363c = zzsVar;
        this.f = list;
        this.g = str;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzj)) {
            return false;
        }
        zzj zzjVar = (zzj) obj;
        if (!Objects.equal(this.f10363c, zzjVar.f10363c) || !Objects.equal(this.f, zzjVar.f) || !Objects.equal(this.g, zzjVar.g)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.f10363c.hashCode();
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f10363c);
        String valueOf2 = String.valueOf(this.f);
        int length = valueOf.length();
        int length2 = valueOf2.length();
        String str = this.g;
        StringBuilder sb = new StringBuilder(a.b(length, 77, length2, String.valueOf(str).length()));
        a.z(sb, "DeviceOrientationRequestInternal{deviceOrientationRequest=", valueOf, ", clients=", valueOf2);
        return a.q(sb, ", tag='", str, "'}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.f10363c, i2, false);
        SafeParcelWriter.writeTypedList(parcel, 2, this.f, false);
        SafeParcelWriter.writeString(parcel, 3, this.g, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
