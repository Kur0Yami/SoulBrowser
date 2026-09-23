package com.google.android.gms.cast;

/* loaded from: classes.dex */
final class zzg extends zzo {
    @Override // com.google.android.gms.cast.zzo, com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    /* renamed from: b */
    public final void doExecute(com.google.android.gms.cast.internal.zzx zzxVar) {
        try {
            LaunchOptions launchOptions = new LaunchOptions();
            launchOptions.f3436c = false;
            zzxVar.m(launchOptions, this);
        } catch (IllegalStateException unused) {
            a();
        }
    }
}
