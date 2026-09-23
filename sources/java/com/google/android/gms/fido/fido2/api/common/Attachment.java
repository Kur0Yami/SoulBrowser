package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public enum Attachment implements Parcelable {
    /* JADX INFO: Fake field, exist only in values array */
    PLATFORM("platform"),
    /* JADX INFO: Fake field, exist only in values array */
    CROSS_PLATFORM("cross-platform");


    @NonNull
    public static final Parcelable.Creator<Attachment> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3738c;

    /* loaded from: classes.dex */
    public static class UnsupportedAttachmentException extends Exception {
    }

    Attachment(String str) {
        this.f3738c = str;
    }

    public static Attachment a(String str) {
        for (Attachment attachment : values()) {
            if (str.equals(attachment.f3738c)) {
                return attachment;
            }
        }
        throw new Exception(a.l("Attachment ", str, " not supported"));
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f3738c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3738c);
    }
}
