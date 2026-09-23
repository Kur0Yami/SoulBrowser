package com.google.android.gms.auth.blockstore;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import j$.util.DesugarCollections;
import java.util.ArrayList;

@SafeParcelable.Class(creator = "RetrieveBytesRequestCreator")
/* loaded from: classes.dex */
public class RetrieveBytesRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<RetrieveBytesRequest> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f3401c;
    public final boolean f;

    /* loaded from: classes.dex */
    public static final class Builder {
    }

    public RetrieveBytesRequest(ArrayList arrayList, boolean z) {
        int i = 0;
        if (z) {
            boolean z2 = true;
            if (arrayList != null && !arrayList.isEmpty()) {
                z2 = false;
            }
            Preconditions.checkState(z2, "retrieveAll was set to true but other constraint(s) was also provided: keys");
        }
        this.f = z;
        this.f3401c = new ArrayList();
        if (arrayList != null) {
            int size = arrayList.size();
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                String str = (String) obj;
                Preconditions.checkNotEmpty(str, "Element in keys cannot be null or empty");
                this.f3401c.add(str);
            }
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeStringList(parcel, 1, DesugarCollections.unmodifiableList(this.f3401c), false);
        SafeParcelWriter.writeBoolean(parcel, 2, this.f);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
