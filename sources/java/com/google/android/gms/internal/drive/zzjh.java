package com.google.android.gms.internal.drive;

/* loaded from: classes.dex */
final class zzjh extends zzjm {
    @Override // com.google.android.gms.internal.drive.zzjm, com.google.android.gms.internal.drive.zzjc
    public final byte k(int i) {
        if (((0 - (i + 1)) | i) < 0) {
            if (i < 0) {
                StringBuilder sb = new StringBuilder(22);
                sb.append("Index < 0: ");
                sb.append(i);
                throw new ArrayIndexOutOfBoundsException(sb.toString());
            }
            StringBuilder sb2 = new StringBuilder(40);
            sb2.append("Index > length: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(0);
            throw new ArrayIndexOutOfBoundsException(sb2.toString());
        }
        return this.h[0 + i];
    }

    @Override // com.google.android.gms.internal.drive.zzjm, com.google.android.gms.internal.drive.zzjc
    public final byte m(int i) {
        return this.h[0 + i];
    }

    @Override // com.google.android.gms.internal.drive.zzjm
    public final int p() {
        return 0;
    }

    @Override // com.google.android.gms.internal.drive.zzjm, com.google.android.gms.internal.drive.zzjc
    public final int size() {
        return 0;
    }
}
