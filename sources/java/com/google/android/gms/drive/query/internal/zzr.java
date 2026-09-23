package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@SafeParcelable.Class(creator = "LogicalFilterCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class zzr extends zza {
    public static final Parcelable.Creator<zzr> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final zzx f3717c;
    public final List f;

    public zzr(zzx zzxVar, ArrayList arrayList) {
        this.f3717c = zzxVar;
        this.f = arrayList;
    }

    @Override // com.google.android.gms.drive.query.Filter
    public final Object u(com.google.android.gms.drive.query.zzd zzdVar) {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f.iterator();
        while (it.hasNext()) {
            arrayList.add(((FilterHolder) it.next()).n.u(zzdVar));
        }
        StringBuilder sb = new StringBuilder(String.valueOf(this.f3717c.f3719c).concat("("));
        int size = arrayList.size();
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            sb.append(str);
            sb.append((String) obj);
            str = ",";
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.f3717c, i, false);
        SafeParcelWriter.writeTypedList(parcel, 2, this.f, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
