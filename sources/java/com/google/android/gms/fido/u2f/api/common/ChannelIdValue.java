package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "ChannelIdValueCreator")
@SafeParcelable.Reserved({1})
@Deprecated
/* loaded from: classes.dex */
public class ChannelIdValue extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<ChannelIdValue> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final ChannelIdValueType f3800c;
    public final String f;
    public final String g;

    /* loaded from: classes.dex */
    public enum ChannelIdValueType implements Parcelable {
        ABSENT(0),
        STRING(1),
        /* JADX INFO: Fake field, exist only in values array */
        OBJECT(2);


        @NonNull
        public static final Parcelable.Creator<ChannelIdValueType> CREATOR = new Object();

        /* renamed from: c, reason: collision with root package name */
        public final int f3801c;

        ChannelIdValueType(int i) {
            this.f3801c = i;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f3801c);
        }
    }

    /* loaded from: classes.dex */
    public static class UnsupportedChannelIdValueTypeException extends Exception {
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, android.os.Parcelable$Creator<com.google.android.gms.fido.u2f.api.common.ChannelIdValue>] */
    static {
        new ChannelIdValue();
        new ChannelIdValue("unavailable");
        new ChannelIdValue("unused");
    }

    public ChannelIdValue() {
        this.f3800c = ChannelIdValueType.ABSENT;
        this.g = null;
        this.f = null;
    }

    public static ChannelIdValueType F(int i) {
        for (ChannelIdValueType channelIdValueType : ChannelIdValueType.values()) {
            if (i == channelIdValueType.f3801c) {
                return channelIdValueType;
            }
        }
        throw new Exception(a.f(i, "ChannelIdValueType ", " not supported"));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChannelIdValue)) {
            return false;
        }
        ChannelIdValue channelIdValue = (ChannelIdValue) obj;
        ChannelIdValueType channelIdValueType = channelIdValue.f3800c;
        ChannelIdValueType channelIdValueType2 = this.f3800c;
        if (!channelIdValueType2.equals(channelIdValueType)) {
            return false;
        }
        int ordinal = channelIdValueType2.ordinal();
        if (ordinal == 0) {
            return true;
        }
        if (ordinal != 1) {
            if (ordinal != 2) {
                return false;
            }
            return this.g.equals(channelIdValue.g);
        }
        return this.f.equals(channelIdValue.f);
    }

    public final int hashCode() {
        int i;
        int hashCode;
        ChannelIdValueType channelIdValueType = this.f3800c;
        int hashCode2 = channelIdValueType.hashCode() + 31;
        int ordinal = channelIdValueType.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                return hashCode2;
            }
            i = hashCode2 * 31;
            hashCode = this.g.hashCode();
        } else {
            i = hashCode2 * 31;
            hashCode = this.f.hashCode();
        }
        return hashCode + i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.f3800c.f3801c);
        SafeParcelWriter.writeString(parcel, 3, this.f, false);
        SafeParcelWriter.writeString(parcel, 4, this.g, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public ChannelIdValue(int i, String str, String str2) {
        try {
            this.f3800c = F(i);
            this.f = str;
            this.g = str2;
        } catch (UnsupportedChannelIdValueTypeException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public ChannelIdValue(String str) {
        this.f = (String) Preconditions.checkNotNull(str);
        this.f3800c = ChannelIdValueType.STRING;
        this.g = null;
    }
}
