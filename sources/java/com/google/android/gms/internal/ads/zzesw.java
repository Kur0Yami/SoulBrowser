package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzesw implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6901a;
    public final zzgyw b;

    public zzesw(Context context, zzgyw zzgywVar) {
        this.b = zzgywVar;
        this.f6901a = context;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.me)).booleanValue()) {
            return zzgym.a(new zzesx(null, false));
        }
        final ContentResolver contentResolver = this.f6901a.getContentResolver();
        if (contentResolver == null) {
            return zzgym.a(new zzesx(null, false));
        }
        return this.b.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzesv
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                ContentResolver contentResolver2 = contentResolver;
                String string = Settings.Secure.getString(contentResolver2, "advertising_id");
                boolean z = false;
                if (Settings.Secure.getInt(contentResolver2, "limit_ad_tracking", 0) == 1) {
                    z = true;
                }
                return new zzesx(string, z);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 61;
    }
}
