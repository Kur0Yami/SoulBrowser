package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzbz;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@SafeParcelable.Class(creator = "AccountTransferProgressCreator")
/* loaded from: classes.dex */
public final class zzs extends zzbz {
    public static final Parcelable.Creator<zzs> CREATOR = new Object();
    public static final ArrayMap k;

    /* renamed from: c, reason: collision with root package name */
    public final int f3347c;
    public List f;
    public List g;
    public List h;
    public List i;
    public List j;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, android.os.Parcelable$Creator<com.google.android.gms.auth.api.accounttransfer.zzs>] */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.collection.SimpleArrayMap, androidx.collection.ArrayMap] */
    static {
        ?? simpleArrayMap = new SimpleArrayMap(0);
        k = simpleArrayMap;
        simpleArrayMap.put("registered", FastJsonResponse.Field.forStrings("registered", 2));
        simpleArrayMap.put("in_progress", FastJsonResponse.Field.forStrings("in_progress", 3));
        simpleArrayMap.put("success", FastJsonResponse.Field.forStrings("success", 4));
        simpleArrayMap.put("failed", FastJsonResponse.Field.forStrings("failed", 5));
        simpleArrayMap.put("escrowed", FastJsonResponse.Field.forStrings("escrowed", 6));
    }

    public zzs(int i, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, ArrayList arrayList5) {
        this.f3347c = i;
        this.f = arrayList;
        this.g = arrayList2;
        this.h = arrayList3;
        this.i = arrayList4;
        this.j = arrayList5;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Map getFieldMappings() {
        return k;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Object getFieldValue(FastJsonResponse.Field field) {
        switch (field.getSafeParcelableFieldId()) {
            case 1:
                return Integer.valueOf(this.f3347c);
            case 2:
                return this.f;
            case 3:
                return this.g;
            case 4:
                return this.h;
            case 5:
                return this.i;
            case 6:
                return this.j;
            default:
                throw new IllegalStateException(a.e(field.getSafeParcelableFieldId(), "Unknown SafeParcelable id="));
        }
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean isFieldSet(FastJsonResponse.Field field) {
        return true;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void setStringsInternal(FastJsonResponse.Field field, String str, ArrayList arrayList) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId != 2) {
            if (safeParcelableFieldId != 3) {
                if (safeParcelableFieldId != 4) {
                    if (safeParcelableFieldId != 5) {
                        if (safeParcelableFieldId == 6) {
                            this.j = arrayList;
                            return;
                        }
                        throw new IllegalArgumentException(String.format("Field with id=%d is not known to be a string list.", Integer.valueOf(safeParcelableFieldId)));
                    }
                    this.i = arrayList;
                    return;
                }
                this.h = arrayList;
                return;
            }
            this.g = arrayList;
            return;
        }
        this.f = arrayList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f3347c);
        SafeParcelWriter.writeStringList(parcel, 2, this.f, false);
        SafeParcelWriter.writeStringList(parcel, 3, this.g, false);
        SafeParcelWriter.writeStringList(parcel, 4, this.h, false);
        SafeParcelWriter.writeStringList(parcel, 5, this.i, false);
        SafeParcelWriter.writeStringList(parcel, 6, this.j, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
