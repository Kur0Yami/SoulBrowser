package com.google.android.gms.cast;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.work.impl.workers.a;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;

@SafeParcelable.Class(creator = "ApplicationMetadataCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class ApplicationMetadata extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<ApplicationMetadata> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3427c;
    public final String f;
    public final List g;
    public final String h;
    public final Uri i;
    public final String j;
    public final String k;
    public final Boolean l;
    public final Boolean m;
    public final int n;

    public ApplicationMetadata(String str, String str2, ArrayList arrayList, String str3, Uri uri, String str4, String str5, Boolean bool, Boolean bool2, int i) {
        this.f3427c = str;
        this.f = str2;
        this.g = arrayList;
        this.h = str3;
        this.i = uri;
        this.j = str4;
        this.k = str5;
        this.l = bool;
        this.m = bool2;
        this.n = i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ApplicationMetadata)) {
            return false;
        }
        ApplicationMetadata applicationMetadata = (ApplicationMetadata) obj;
        if (CastUtils.c(this.f3427c, applicationMetadata.f3427c) && CastUtils.c(this.f, applicationMetadata.f) && CastUtils.c(this.g, applicationMetadata.g) && CastUtils.c(this.h, applicationMetadata.h) && CastUtils.c(this.i, applicationMetadata.i) && CastUtils.c(this.j, applicationMetadata.j) && CastUtils.c(this.k, applicationMetadata.k) && this.n == applicationMetadata.n) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3427c, this.f, this.g, this.h, this.i, this.j, Integer.valueOf(this.n));
    }

    public final String toString() {
        int size;
        List list = this.g;
        if (list == null) {
            size = 0;
        } else {
            size = list.size();
        }
        String valueOf = String.valueOf(this.i);
        String str = this.f3427c;
        int length = String.valueOf(str).length();
        String str2 = this.f;
        int length2 = String.valueOf(str2).length() + length + 23;
        int length3 = String.valueOf(size).length();
        String str3 = this.h;
        int d = a.d(length2 + 20 + length3 + 23, 22, String.valueOf(str3));
        int length4 = valueOf.length();
        String str4 = this.j;
        int i = d + length4 + 11;
        int length5 = String.valueOf(str4).length();
        String str5 = this.k;
        StringBuilder sb = new StringBuilder(i + length5 + 8 + String.valueOf(str5).length());
        android.support.v4.media.a.z(sb, "applicationId: ", str, ", name: ", str2);
        sb.append(", namespaces.count: ");
        sb.append(size);
        sb.append(", senderAppIdentifier: ");
        sb.append(str3);
        android.support.v4.media.a.z(sb, ", senderAppLaunchUrl: ", valueOf, ", iconUrl: ", str4);
        return android.support.v4.media.a.p(sb, ", type: ", str5);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f3427c, false);
        SafeParcelWriter.writeString(parcel, 3, this.f, false);
        SafeParcelWriter.writeTypedList(parcel, 4, null, false);
        SafeParcelWriter.writeStringList(parcel, 5, DesugarCollections.unmodifiableList(this.g), false);
        SafeParcelWriter.writeString(parcel, 6, this.h, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.i, i, false);
        SafeParcelWriter.writeString(parcel, 8, this.j, false);
        SafeParcelWriter.writeString(parcel, 9, this.k, false);
        SafeParcelWriter.writeBooleanObject(parcel, 10, this.l, false);
        SafeParcelWriter.writeBooleanObject(parcel, 11, this.m, false);
        SafeParcelWriter.writeInt(parcel, 12, this.n);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
