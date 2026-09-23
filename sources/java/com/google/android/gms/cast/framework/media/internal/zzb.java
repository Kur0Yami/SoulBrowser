package com.google.android.gms.cast.framework.media.internal;

import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes.dex */
public final class zzb {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3509a;
    public final ImageHints b;

    /* renamed from: c, reason: collision with root package name */
    public Uri f3510c;
    public zzd d;
    public zza e;

    public zzb(Context context) {
        this(context, new ImageHints(-1, 0, 0));
    }

    public final void a(Uri uri) {
        int i;
        if (uri == null) {
            b();
            return;
        }
        if (!uri.equals(this.f3510c)) {
            b();
            this.f3510c = uri;
            ImageHints imageHints = this.b;
            int i2 = imageHints.f;
            Context context = this.f3509a;
            if (i2 != 0 && (i = imageHints.g) != 0) {
                this.d = new zzd(context, i2, i, this);
            } else {
                this.d = new zzd(context, 0, 0, this);
            }
            ((zzd) Preconditions.checkNotNull(this.d)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, (Uri) Preconditions.checkNotNull(this.f3510c));
        }
    }

    public final void b() {
        zzd zzdVar = this.d;
        if (zzdVar != null) {
            zzdVar.cancel(true);
            this.d = null;
        }
        this.f3510c = null;
    }

    public zzb(Context context, ImageHints imageHints) {
        this.f3509a = context;
        this.b = imageHints;
        b();
    }
}
