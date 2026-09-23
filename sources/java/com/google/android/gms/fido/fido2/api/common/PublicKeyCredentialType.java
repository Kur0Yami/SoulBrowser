package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import androidx.annotation.NonNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class PublicKeyCredentialType implements Parcelable {

    /* JADX INFO: Fake field, exist only in values array */
    PublicKeyCredentialType EF5;

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ PublicKeyCredentialType[] f3767c = {new Enum("PUBLIC_KEY", 0)};

    @NonNull
    public static final Parcelable.Creator<PublicKeyCredentialType> CREATOR = new Object();

    /* loaded from: classes.dex */
    public static class UnsupportedPublicKeyCredTypeException extends Exception {
    }

    public static PublicKeyCredentialType a(String str) {
        for (PublicKeyCredentialType publicKeyCredentialType : values()) {
            publicKeyCredentialType.getClass();
            if (str.equals("public-key")) {
                return publicKeyCredentialType;
            }
        }
        throw new Exception(a.l("PublicKeyCredentialType ", str, " not supported"));
    }

    @NonNull
    public static PublicKeyCredentialType valueOf(@NonNull String str) {
        return (PublicKeyCredentialType) Enum.valueOf(PublicKeyCredentialType.class, str);
    }

    @NonNull
    public static PublicKeyCredentialType[] values() {
        return (PublicKeyCredentialType[]) f3767c.clone();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "public-key";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString("public-key");
    }
}
