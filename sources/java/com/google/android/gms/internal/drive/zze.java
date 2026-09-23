package com.google.android.gms.internal.drive;

import com.google.android.gms.common.internal.Objects;
import java.util.Locale;

/* loaded from: classes.dex */
public final class zze implements com.google.android.gms.drive.events.zzk {

    /* renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.drive.events.zzm f10153a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final long f10154c;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.drive.events.zzm, com.google.android.gms.internal.drive.zzf] */
    public zze(zzh zzhVar) {
        this.f10153a = new zzf(zzhVar);
        this.b = zzhVar.h;
        this.f10154c = zzhVar.i;
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == zze.class) {
            if (obj == this) {
                return true;
            }
            zze zzeVar = (zze) obj;
            if (Objects.equal(this.f10153a, zzeVar.f10153a) && this.b == zzeVar.b && this.f10154c == zzeVar.f10154c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f10154c;
        return Objects.hashCode(Long.valueOf(j), Long.valueOf(this.b), Long.valueOf(j));
    }

    public final String toString() {
        Locale locale = Locale.US;
        return "FileTransferProgress[FileTransferState: " + this.f10153a.toString() + ", BytesTransferred: " + this.b + ", TotalBytes: " + this.f10154c + "]";
    }
}
