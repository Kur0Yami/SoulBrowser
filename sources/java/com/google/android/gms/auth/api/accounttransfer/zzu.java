package com.google.android.gms.auth.api.accounttransfer;

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

@SafeParcelable.Class(creator = "AuthenticatorAnnotatedDataCreator")
/* loaded from: classes.dex */
public final class zzu extends zzbz {
    public static final Parcelable.Creator<zzu> CREATOR = new Object();
    public static final HashMap k;

    /* renamed from: c, reason: collision with root package name */
    public final HashSet f3348c;
    public final int f;
    public zzw g;
    public String h;
    public String i;
    public final String j;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, android.os.Parcelable$Creator<com.google.android.gms.auth.api.accounttransfer.zzu>] */
    static {
        HashMap hashMap = new HashMap();
        k = hashMap;
        hashMap.put("authenticatorInfo", FastJsonResponse.Field.forConcreteType("authenticatorInfo", 2, zzw.class));
        hashMap.put("signature", FastJsonResponse.Field.forString("signature", 3));
        hashMap.put("package", FastJsonResponse.Field.forString("package", 4));
    }

    public zzu(HashSet hashSet, int i, zzw zzwVar, String str, String str2, String str3) {
        this.f3348c = hashSet;
        this.f = i;
        this.g = zzwVar;
        this.h = str;
        this.i = str2;
        this.j = str3;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void addConcreteTypeInternal(FastJsonResponse.Field field, String str, FastJsonResponse fastJsonResponse) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId == 2) {
            this.g = (zzw) fastJsonResponse;
            this.f3348c.add(Integer.valueOf(safeParcelableFieldId));
            return;
        }
        throw new IllegalArgumentException(String.format("Field with id=%d is not a known custom type. Found %s", Integer.valueOf(safeParcelableFieldId), fastJsonResponse.getClass().getCanonicalName()));
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final /* synthetic */ Map getFieldMappings() {
        return k;
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
                return this.h;
            }
            return this.g;
        }
        return Integer.valueOf(this.f);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean isFieldSet(FastJsonResponse.Field field) {
        return this.f3348c.contains(Integer.valueOf(field.getSafeParcelableFieldId()));
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void setStringInternal(FastJsonResponse.Field field, String str, String str2) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId != 3) {
            if (safeParcelableFieldId == 4) {
                this.i = str2;
            } else {
                throw new IllegalArgumentException(String.format("Field with id=%d is not known to be a string.", Integer.valueOf(safeParcelableFieldId)));
            }
        } else {
            this.h = str2;
        }
        this.f3348c.add(Integer.valueOf(safeParcelableFieldId));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        HashSet hashSet = this.f3348c;
        if (hashSet.contains(1)) {
            SafeParcelWriter.writeInt(parcel, 1, this.f);
        }
        if (hashSet.contains(2)) {
            SafeParcelWriter.writeParcelable(parcel, 2, this.g, i, true);
        }
        if (hashSet.contains(3)) {
            SafeParcelWriter.writeString(parcel, 3, this.h, true);
        }
        if (hashSet.contains(4)) {
            SafeParcelWriter.writeString(parcel, 4, this.i, true);
        }
        if (hashSet.contains(5)) {
            SafeParcelWriter.writeString(parcel, 5, this.j, true);
        }
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
