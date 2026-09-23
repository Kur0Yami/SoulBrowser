package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;

@SafeParcelable.Class(creator = "AuthorizationResultCreator")
/* loaded from: classes.dex */
public final class AuthorizationResult extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<AuthorizationResult> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3354c;
    public final String f;
    public final String g;
    public final List h;
    public final GoogleSignInAccount i;
    public final PendingIntent j;

    public AuthorizationResult(String str, String str2, String str3, ArrayList arrayList, GoogleSignInAccount googleSignInAccount, PendingIntent pendingIntent) {
        this.f3354c = str;
        this.f = str2;
        this.g = str3;
        this.h = (List) Preconditions.checkNotNull(arrayList);
        this.j = pendingIntent;
        this.i = googleSignInAccount;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AuthorizationResult)) {
            return false;
        }
        AuthorizationResult authorizationResult = (AuthorizationResult) obj;
        if (!Objects.equal(this.f3354c, authorizationResult.f3354c) || !Objects.equal(this.f, authorizationResult.f) || !Objects.equal(this.g, authorizationResult.g) || !Objects.equal(this.h, authorizationResult.h) || !Objects.equal(this.j, authorizationResult.j) || !Objects.equal(this.i, authorizationResult.i)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3354c, this.f, this.g, this.h, this.j, this.i);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f3354c, false);
        SafeParcelWriter.writeString(parcel, 2, this.f, false);
        SafeParcelWriter.writeString(parcel, 3, this.g, false);
        SafeParcelWriter.writeStringList(parcel, 4, this.h, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.i, i, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.j, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
