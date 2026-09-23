package com.google.android.gms.auth.blockstore;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

@SafeParcelable.Class(creator = "RetrieveBytesResponseCreator")
/* loaded from: classes.dex */
public class RetrieveBytesResponse extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<RetrieveBytesResponse> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final Bundle f3402c;
    public final List f;

    @SafeParcelable.Class(creator = "BlockstoreDataCreator")
    /* loaded from: classes.dex */
    public static class BlockstoreData extends AbstractSafeParcelable {

        @NonNull
        public static final Parcelable.Creator<BlockstoreData> CREATOR = new Object();

        /* renamed from: c, reason: collision with root package name */
        public final byte[] f3403c;
        public final String f;

        public BlockstoreData(String str, byte[] bArr) {
            this.f3403c = bArr;
            this.f = str;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof BlockstoreData)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            return Arrays.equals(this.f3403c, ((BlockstoreData) obj).f3403c);
        }

        public final int hashCode() {
            return Objects.hashCode(Integer.valueOf(Arrays.hashCode(this.f3403c)));
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
            SafeParcelWriter.writeByteArray(parcel, 1, this.f3403c, false);
            SafeParcelWriter.writeString(parcel, 2, this.f, false);
            SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        }
    }

    public RetrieveBytesResponse(Bundle bundle, ArrayList arrayList) {
        this.f3402c = bundle;
        this.f = arrayList;
        HashMap hashMap = new HashMap();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            BlockstoreData blockstoreData = (BlockstoreData) obj;
            hashMap.put(blockstoreData.f, blockstoreData);
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBundle(parcel, 1, this.f3402c, false);
        SafeParcelWriter.writeTypedList(parcel, 2, this.f, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
