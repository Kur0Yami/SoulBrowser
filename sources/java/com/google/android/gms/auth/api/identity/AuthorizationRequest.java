package com.google.android.gms.auth.api.identity;

import android.accounts.Account;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

@SafeParcelable.Class(creator = "AuthorizationRequestCreator")
/* loaded from: classes.dex */
public class AuthorizationRequest extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<AuthorizationRequest> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final List f3350c;
    public final String f;
    public final boolean g;
    public final boolean h;
    public final Account i;
    public final String j;
    public final String k;
    public final boolean l;
    public final Bundle m;
    public final boolean n;

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public List f3351a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f3352c;
        public boolean d;
        public Account e;
        public String f;
        public String g;
        public boolean h;
        public Bundle i;
        public boolean j;

        public final AuthorizationRequest a() {
            return new AuthorizationRequest(this.f3351a, this.b, this.f3352c, this.d, this.e, this.f, this.g, this.h, this.i, this.j);
        }

        public final void b(List list) {
            boolean z = false;
            if (list != null && !list.isEmpty()) {
                z = true;
            }
            Preconditions.checkArgument(z, "requestedScopes cannot be null or empty");
            this.f3351a = list;
        }
    }

    /* loaded from: classes.dex */
    public enum ResourceParameter {
        /* JADX INFO: Fake field, exist only in values array */
        ACCOUNT_SELECTION_TOKEN("account_selection_token"),
        /* JADX INFO: Fake field, exist only in values array */
        ACCOUNT_SELECTION_STATE("account_selection_state"),
        /* JADX INFO: Fake field, exist only in values array */
        PICKER_ALLOW_MULTIPLE("allow_multiple"),
        /* JADX INFO: Fake field, exist only in values array */
        PICKER_MIMETYPES("mimetypes"),
        /* JADX INFO: Fake field, exist only in values array */
        PICKER_FILE_IDS("file_ids"),
        /* JADX INFO: Fake field, exist only in values array */
        PICKER_OAUTH_TRIGGER("trigger_onepick");


        /* renamed from: c, reason: collision with root package name */
        public final String f3353c;

        ResourceParameter(String str) {
            this.f3353c = str;
        }
    }

    public AuthorizationRequest(List list, String str, boolean z, boolean z2, Account account, String str2, String str3, boolean z3, Bundle bundle, boolean z4) {
        boolean z5 = false;
        if (list != null && !list.isEmpty()) {
            z5 = true;
        }
        Preconditions.checkArgument(z5, "requestedScopes cannot be null or empty");
        this.f3350c = list;
        this.f = str;
        this.g = z;
        this.h = z2;
        this.i = account;
        this.j = str2;
        this.k = str3;
        this.l = z3;
        this.m = bundle;
        this.n = z4;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AuthorizationRequest)) {
            return false;
        }
        AuthorizationRequest authorizationRequest = (AuthorizationRequest) obj;
        List list = this.f3350c;
        int size = list.size();
        List list2 = authorizationRequest.f3350c;
        if (size == list2.size() && list.containsAll(list2)) {
            Bundle bundle = authorizationRequest.m;
            Bundle bundle2 = this.m;
            if (bundle2 == null) {
                if (bundle == null) {
                    bundle = null;
                }
                return false;
            }
            if (bundle2 == null || bundle != null) {
                if (bundle2 != null) {
                    if (bundle2.size() != bundle.size()) {
                        return false;
                    }
                    for (String str : bundle2.keySet()) {
                        if (!Objects.equal(bundle2.getString(str), bundle.getString(str))) {
                            return false;
                        }
                    }
                }
                if (this.g == authorizationRequest.g && this.l == authorizationRequest.l && this.h == authorizationRequest.h && this.n == authorizationRequest.n && Objects.equal(this.f, authorizationRequest.f) && Objects.equal(this.i, authorizationRequest.i) && Objects.equal(this.j, authorizationRequest.j) && Objects.equal(this.k, authorizationRequest.k)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3350c, this.f, Boolean.valueOf(this.g), Boolean.valueOf(this.l), Boolean.valueOf(this.h), this.i, this.j, this.k, this.m, Boolean.valueOf(this.n));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, this.f3350c, false);
        SafeParcelWriter.writeString(parcel, 2, this.f, false);
        SafeParcelWriter.writeBoolean(parcel, 3, this.g);
        SafeParcelWriter.writeBoolean(parcel, 4, this.h);
        SafeParcelWriter.writeParcelable(parcel, 5, this.i, i, false);
        SafeParcelWriter.writeString(parcel, 6, this.j, false);
        SafeParcelWriter.writeString(parcel, 7, this.k, false);
        SafeParcelWriter.writeBoolean(parcel, 8, this.l);
        SafeParcelWriter.writeBundle(parcel, 9, this.m, false);
        SafeParcelWriter.writeBoolean(parcel, 10, this.n);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
