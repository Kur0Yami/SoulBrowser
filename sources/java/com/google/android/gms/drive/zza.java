package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import androidx.work.impl.workers.a;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.drive.zzez;

@ShowFirstParty
@SafeParcelable.Class(creator = "ChangeSequenceNumberCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class zza extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zza> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final long f3721c;
    public final long f;
    public final long g;
    public volatile String h = null;

    public zza(long j, long j2, long j3) {
        boolean z;
        boolean z2;
        if (j != -1) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z);
        if (j2 != -1) {
            z2 = true;
        } else {
            z2 = false;
        }
        Preconditions.checkArgument(z2);
        Preconditions.checkArgument(j3 != -1);
        this.f3721c = j;
        this.f = j2;
        this.g = j3;
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == zza.class) {
            zza zzaVar = (zza) obj;
            if (zzaVar.f == this.f && zzaVar.g == this.g && zzaVar.f3721c == this.f3721c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String valueOf = String.valueOf(this.f3721c);
        String valueOf2 = String.valueOf(this.f);
        String valueOf3 = String.valueOf(this.g);
        StringBuilder sb = new StringBuilder(a.e(a.e(String.valueOf(valueOf).length(), valueOf2), valueOf3));
        sb.append(valueOf);
        sb.append(valueOf2);
        sb.append(valueOf3);
        return sb.toString().hashCode();
    }

    public final String toString() {
        String str;
        if (this.h == null) {
            zzez.zza o = zzez.o();
            o.h();
            zzez.m((zzez) o.f);
            long j = this.f3721c;
            o.h();
            zzez.n((zzez) o.f, j);
            long j2 = this.f;
            o.h();
            zzez.p((zzez) o.f, j2);
            long j3 = this.g;
            o.h();
            zzez.q((zzez) o.f, j3);
            String valueOf = String.valueOf(Base64.encodeToString(((zzez) o.G()).f(), 10));
            if (valueOf.length() != 0) {
                str = "ChangeSequenceNumber:".concat(valueOf);
            } else {
                str = new String("ChangeSequenceNumber:");
            }
            this.h = str;
        }
        return this.h;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 2, this.f3721c);
        SafeParcelWriter.writeLong(parcel, 3, this.f);
        SafeParcelWriter.writeLong(parcel, 4, this.g);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
