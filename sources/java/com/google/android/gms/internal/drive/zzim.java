package com.google.android.gms.internal.drive;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.DriveId;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class zzim extends com.google.android.gms.drive.metadata.internal.zzm<DriveId> {

    /* renamed from: c, reason: collision with root package name */
    public static final zzim f10197c = new com.google.android.gms.drive.metadata.zza("driveId", Arrays.asList("sqlId", "resourceId", "mimeType"), Arrays.asList("dbInstanceId"));

    @Override // com.google.android.gms.drive.metadata.zza
    public final boolean e(DataHolder dataHolder, int i, int i2) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            if (!dataHolder.hasColumn((String) it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.drive.metadata.zza
    public final Object f(DataHolder dataHolder, int i, int i2) {
        long j = dataHolder.getMetadata().getLong("dbInstanceId");
        boolean equals = "application/vnd.google-apps.folder".equals(dataHolder.getString(zzhs.x.f3707a, i, i2));
        String string = dataHolder.getString("resourceId", i, i2);
        long j2 = dataHolder.getLong("sqlId", i, i2);
        if ("generated-android-null".equals(string)) {
            string = null;
        }
        return new DriveId(string, j2, j, equals ? 1 : 0);
    }
}
