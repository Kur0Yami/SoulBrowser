package com.google.android.gms.internal.drive;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.IOUtils;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveContents;

/* loaded from: classes.dex */
public final class zzbi implements DriveContents {
    public static final GmsLogger b = new GmsLogger("DriveContentsImpl", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);

    /* renamed from: a, reason: collision with root package name */
    public final Contents f10145a;

    public zzbi(Contents contents) {
        this.f10145a = (Contents) Preconditions.checkNotNull(contents);
    }

    @Override // com.google.android.gms.drive.DriveContents
    public final void zzj() {
        IOUtils.closeQuietly(this.f10145a.f3676c);
    }
}
