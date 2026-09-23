package com.google.android.gms.internal.drive;

import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.drive.DriveId;

/* loaded from: classes.dex */
public final class zzf {

    /* renamed from: a, reason: collision with root package name */
    public final DriveId f10161a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f10162c;

    public zzf(zzh zzhVar) {
        this.f10161a = zzhVar.f;
        this.b = zzhVar.f10187c;
        this.f10162c = zzhVar.g;
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == zzf.class) {
            if (obj == this) {
                return true;
            }
            zzf zzfVar = (zzf) obj;
            if (Objects.equal(this.f10161a, zzfVar.f10161a) && this.b == zzfVar.b && this.f10162c == zzfVar.f10162c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f10161a, Integer.valueOf(this.b), Integer.valueOf(this.f10162c));
    }

    public final String toString() {
        return String.format("FileTransferState[TransferType: %d, DriveId: %s, status: %d]", Integer.valueOf(this.b), this.f10161a, Integer.valueOf(this.f10162c));
    }
}
