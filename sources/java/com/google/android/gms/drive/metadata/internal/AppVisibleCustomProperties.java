package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

@SafeParcelable.Class(creator = "AppVisibleCustomPropertiesCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class AppVisibleCustomProperties extends AbstractSafeParcelable implements ReflectedParcelable, Iterable<zzc> {
    public static final Parcelable.Creator<AppVisibleCustomProperties> CREATOR = new Object();
    public static final AppVisibleCustomProperties f = new AppVisibleCustomProperties(new zza().f3700a.values());

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f3699c;

    /* loaded from: classes.dex */
    public static class zza {

        /* renamed from: a, reason: collision with root package name */
        public final HashMap f3700a = new HashMap();
    }

    public AppVisibleCustomProperties(Collection collection) {
        Preconditions.checkNotNull(collection);
        this.f3699c = new ArrayList(collection);
    }

    public final Map F() {
        ArrayList arrayList = this.f3699c;
        HashMap hashMap = new HashMap(arrayList.size());
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            zzc zzcVar = (zzc) obj;
            hashMap.put(zzcVar.f3703c, zzcVar.f);
        }
        return DesugarCollections.unmodifiableMap(hashMap);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == AppVisibleCustomProperties.class) {
            return F().equals(((AppVisibleCustomProperties) obj).F());
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3699c);
    }

    @Override // java.lang.Iterable
    public final Iterator<zzc> iterator() {
        return this.f3699c.iterator();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 2, this.f3699c, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
