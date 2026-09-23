package com.google.android.gms.auth.api.accounttransfer;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzbz;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

@SafeParcelable.Class(creator = "AuthenticatorTransferInfoCreator")
/* loaded from: classes.dex */
public final class zzw extends zzbz {
    public static final Parcelable.Creator<zzw> CREATOR = new Object();
    public static final HashMap l;

    /* renamed from: c, reason: collision with root package name */
    public final HashSet f3349c;
    public final int f;
    public String g;
    public int h;
    public byte[] i;
    public final PendingIntent j;
    public final DeviceMetaData k;

    /* JADX WARN: Type inference failed for: r0v0, types: [android.os.Parcelable$Creator<com.google.android.gms.auth.api.accounttransfer.zzw>, java.lang.Object] */
    static {
        HashMap hashMap = new HashMap();
        l = hashMap;
        hashMap.put("accountType", FastJsonResponse.Field.forString("accountType", 2));
        hashMap.put("status", FastJsonResponse.Field.forInteger("status", 3));
        hashMap.put("transferBytes", FastJsonResponse.Field.forBase64("transferBytes", 4));
    }

    public zzw(HashSet hashSet, int i, String str, int i2, byte[] bArr, PendingIntent pendingIntent, DeviceMetaData deviceMetaData) {
        this.f3349c = hashSet;
        this.f = i;
        this.g = str;
        this.h = i2;
        this.i = bArr;
        this.j = pendingIntent;
        this.k = deviceMetaData;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final /* synthetic */ Map getFieldMappings() {
        return l;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Object getFieldValue(FastJsonResponse.Field field) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId != 1) {
            if (safeParcelableFieldId != 2) {
                if (safeParcelableFieldId != 3) {
                    if (safeParcelableFieldId == 4) {
                        return this.i;
                    }
                    throw new IllegalStateException(a.e(field.getSafeParcelableFieldId(), "Unknown SafeParcelable id="));
                }
                return Integer.valueOf(this.h);
            }
            return this.g;
        }
        return Integer.valueOf(this.f);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean isFieldSet(FastJsonResponse.Field field) {
        return this.f3349c.contains(Integer.valueOf(field.getSafeParcelableFieldId()));
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void setDecodedBytesInternal(FastJsonResponse.Field field, String str, byte[] bArr) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId == 4) {
            this.i = bArr;
            this.f3349c.add(Integer.valueOf(safeParcelableFieldId));
            return;
        }
        throw new IllegalArgumentException(a.f(safeParcelableFieldId, "Field with id=", " is not known to be a byte array."));
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void setIntegerInternal(FastJsonResponse.Field field, String str, int i) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId == 3) {
            this.h = i;
            this.f3349c.add(Integer.valueOf(safeParcelableFieldId));
            return;
        }
        throw new IllegalArgumentException(a.f(safeParcelableFieldId, "Field with id=", " is not known to be an int."));
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void setStringInternal(FastJsonResponse.Field field, String str, String str2) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId == 2) {
            this.g = str2;
            this.f3349c.add(Integer.valueOf(safeParcelableFieldId));
            return;
        }
        throw new IllegalArgumentException(String.format("Field with id=%d is not known to be a string.", Integer.valueOf(safeParcelableFieldId)));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        HashSet hashSet = this.f3349c;
        if (hashSet.contains(1)) {
            SafeParcelWriter.writeInt(parcel, 1, this.f);
        }
        if (hashSet.contains(2)) {
            SafeParcelWriter.writeString(parcel, 2, this.g, true);
        }
        if (hashSet.contains(3)) {
            SafeParcelWriter.writeInt(parcel, 3, this.h);
        }
        if (hashSet.contains(4)) {
            SafeParcelWriter.writeByteArray(parcel, 4, this.i, true);
        }
        if (hashSet.contains(5)) {
            SafeParcelWriter.writeParcelable(parcel, 5, this.j, i, true);
        }
        if (hashSet.contains(6)) {
            SafeParcelWriter.writeParcelable(parcel, 6, this.k, i, true);
        }
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
