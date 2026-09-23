package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "LaunchOptionsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class LaunchOptions extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<LaunchOptions> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public boolean f3436c;
    public final String f;
    public final boolean g;
    public final CredentialsData h;

    /* loaded from: classes.dex */
    public static final class Builder {
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LaunchOptions() {
        /*
            r5 = this;
            java.util.Locale r0 = java.util.Locale.getDefault()
            java.util.regex.Pattern r1 = com.google.android.gms.cast.internal.CastUtils.f3603a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r2 = 20
            r1.<init>(r2)
            java.lang.String r2 = r0.getLanguage()
            r1.append(r2)
            java.lang.String r2 = r0.getCountry()
            boolean r3 = android.text.TextUtils.isEmpty(r2)
            r4 = 45
            if (r3 != 0) goto L26
            r1.append(r4)
            r1.append(r2)
        L26:
            java.lang.String r0 = r0.getVariant()
            boolean r2 = android.text.TextUtils.isEmpty(r0)
            if (r2 != 0) goto L36
            r1.append(r4)
            r1.append(r0)
        L36:
            java.lang.String r0 = r1.toString()
            r1 = 0
            r2 = 0
            r5.<init>(r2, r0, r2, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.LaunchOptions.<init>():void");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LaunchOptions)) {
            return false;
        }
        LaunchOptions launchOptions = (LaunchOptions) obj;
        if (this.f3436c == launchOptions.f3436c && CastUtils.c(this.f, launchOptions.f) && this.g == launchOptions.g && CastUtils.c(this.h, launchOptions.h)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.f3436c), this.f, Boolean.valueOf(this.g), this.h);
    }

    public final String toString() {
        return "LaunchOptions(relaunchIfRunning=" + this.f3436c + ", language=" + this.f + ", androidReceiverCompatible: " + this.g + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 2, this.f3436c);
        SafeParcelWriter.writeString(parcel, 3, this.f, false);
        SafeParcelWriter.writeBoolean(parcel, 4, this.g);
        SafeParcelWriter.writeParcelable(parcel, 5, this.h, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public LaunchOptions(boolean z, String str, boolean z2, CredentialsData credentialsData) {
        this.f3436c = z;
        this.f = str;
        this.g = z2;
        this.h = credentialsData;
    }
}
