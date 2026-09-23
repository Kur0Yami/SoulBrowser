package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzbz;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

@SafeParcelable.Class(creator = "AccountTransferMsgCreator")
/* loaded from: classes.dex */
public final class zzo extends zzbz {
    public static final Parcelable.Creator<zzo> CREATOR = new Object();
    public static final HashMap j;

    /* renamed from: c, reason: collision with root package name */
    public final HashSet f3346c;
    public final int f;
    public ArrayList g;
    public final int h;
    public zzs i;

    /* JADX WARN: Type inference failed for: r0v0, types: [android.os.Parcelable$Creator<com.google.android.gms.auth.api.accounttransfer.zzo>, java.lang.Object] */
    static {
        HashMap hashMap = new HashMap();
        j = hashMap;
        hashMap.put("authenticatorData", FastJsonResponse.Field.forConcreteTypeArray("authenticatorData", 2, zzu.class));
        hashMap.put("progress", FastJsonResponse.Field.forConcreteType("progress", 4, zzs.class));
    }

    public zzo(HashSet hashSet, int i, ArrayList arrayList, int i2, zzs zzsVar) {
        this.f3346c = hashSet;
        this.f = i;
        this.g = arrayList;
        this.h = i2;
        this.i = zzsVar;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void addConcreteTypeArrayInternal(FastJsonResponse.Field field, String str, ArrayList arrayList) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId == 2) {
            this.g = arrayList;
            this.f3346c.add(Integer.valueOf(safeParcelableFieldId));
            return;
        }
        throw new IllegalArgumentException(String.format("Field with id=%d is not a known ConcreteTypeArray type. Found %s", Integer.valueOf(safeParcelableFieldId), arrayList.getClass().getCanonicalName()));
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void addConcreteTypeInternal(FastJsonResponse.Field field, String str, FastJsonResponse fastJsonResponse) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId == 4) {
            this.i = (zzs) fastJsonResponse;
            this.f3346c.add(Integer.valueOf(safeParcelableFieldId));
            return;
        }
        throw new IllegalArgumentException(String.format("Field with id=%d is not a known custom type. Found %s", Integer.valueOf(safeParcelableFieldId), fastJsonResponse.getClass().getCanonicalName()));
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final /* synthetic */ Map getFieldMappings() {
        return j;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Object getFieldValue(FastJsonResponse.Field field) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId != 1) {
            if (safeParcelableFieldId != 2) {
                if (safeParcelableFieldId == 4) {
                    return this.i;
                }
                throw new IllegalStateException(a.e(field.getSafeParcelableFieldId(), "Unknown SafeParcelable id="));
            }
            return this.g;
        }
        return Integer.valueOf(this.f);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean isFieldSet(FastJsonResponse.Field field) {
        return this.f3346c.contains(Integer.valueOf(field.getSafeParcelableFieldId()));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        HashSet hashSet = this.f3346c;
        if (hashSet.contains(1)) {
            SafeParcelWriter.writeInt(parcel, 1, this.f);
        }
        if (hashSet.contains(2)) {
            SafeParcelWriter.writeTypedList(parcel, 2, this.g, true);
        }
        if (hashSet.contains(3)) {
            SafeParcelWriter.writeInt(parcel, 3, this.h);
        }
        if (hashSet.contains(4)) {
            SafeParcelWriter.writeParcelable(parcel, 4, this.i, i, true);
        }
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
