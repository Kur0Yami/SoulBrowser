package com.google.android.gms.location;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;

@SafeParcelable.Class(creator = "RemoveGeofencingRequestCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public final class zzbq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbq> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.internal.location.zzbs f11586c;
    public final PendingIntent f;
    public final String g;

    public zzbq(ArrayList arrayList, PendingIntent pendingIntent, String str) {
        com.google.android.gms.internal.location.zzbs s;
        if (arrayList == null) {
            s = com.google.android.gms.internal.location.zzbs.r();
        } else {
            com.google.android.gms.internal.location.zzbv zzbvVar = com.google.android.gms.internal.location.zzbs.f;
            Object[] array = arrayList.toArray();
            int length = array.length;
            for (int i = 0; i < length; i++) {
                if (array[i] == null) {
                    StringBuilder sb = new StringBuilder(20);
                    sb.append("at index ");
                    sb.append(i);
                    throw new NullPointerException(sb.toString());
                }
            }
            s = com.google.android.gms.internal.location.zzbs.s(length, array);
        }
        this.f11586c = s;
        this.f = pendingIntent;
        this.g = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeStringList(parcel, 1, this.f11586c, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f, i, false);
        SafeParcelWriter.writeString(parcel, 3, this.g, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
