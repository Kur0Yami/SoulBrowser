package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.drive.zzfb;

@SafeParcelable.Class(creator = "DriveIdCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class DriveId extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<DriveId> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3677c;
    public final long f;
    public final long g;
    public final int h;
    public volatile String i = null;

    public DriveId(String str, long j, long j2, int i) {
        this.f3677c = str;
        boolean z = true;
        Preconditions.checkArgument(!RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED.equals(str));
        if (str == null && j == -1) {
            z = false;
        }
        Preconditions.checkArgument(z);
        this.f = j;
        this.g = j2;
        this.h = i;
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == DriveId.class) {
            DriveId driveId = (DriveId) obj;
            String str = driveId.f3677c;
            if (driveId.g != this.g) {
                return false;
            }
            long j = driveId.f;
            String str2 = this.f3677c;
            long j2 = this.f;
            if (j == -1 && j2 == -1) {
                return str.equals(str2);
            }
            if (str2 != null && str != null) {
                if (j != j2 || !str.equals(str2)) {
                    return false;
                }
                return true;
            }
            if (j == j2) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str;
        long j = this.f;
        if (j == -1) {
            return this.f3677c.hashCode();
        }
        String valueOf = String.valueOf(String.valueOf(this.g));
        String valueOf2 = String.valueOf(String.valueOf(j));
        if (valueOf2.length() != 0) {
            str = valueOf.concat(valueOf2);
        } else {
            str = new String(valueOf);
        }
        return str.hashCode();
    }

    public final String toString() {
        String str;
        if (this.i == null) {
            zzfb.zza p = zzfb.p();
            p.h();
            zzfb.m((zzfb) p.f);
            String str2 = this.f3677c;
            if (str2 == null) {
                str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            p.h();
            zzfb.o((zzfb) p.f, str2);
            long j = this.f;
            p.h();
            zzfb.n((zzfb) p.f, j);
            long j2 = this.g;
            p.h();
            zzfb.r((zzfb) p.f, j2);
            int i = this.h;
            p.h();
            zzfb.q((zzfb) p.f, i);
            String valueOf = String.valueOf(Base64.encodeToString(((zzfb) p.G()).f(), 10));
            if (valueOf.length() != 0) {
                str = "DriveId:".concat(valueOf);
            } else {
                str = new String("DriveId:");
            }
            this.i = str;
        }
        return this.i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f3677c, false);
        SafeParcelWriter.writeLong(parcel, 3, this.f);
        SafeParcelWriter.writeLong(parcel, 4, this.g);
        SafeParcelWriter.writeInt(parcel, 5, this.h);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
