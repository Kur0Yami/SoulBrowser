package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class zzexn implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final String f7057a;
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f7058c;
    public final boolean d;
    public final boolean e;

    public zzexn(String str, boolean z, boolean z2, boolean z3, boolean z4) {
        this.f7057a = str;
        this.b = z;
        this.f7058c = z2;
        this.d = z3;
        this.e = z4;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = ((zzczm) obj).b;
        String str = this.f7057a;
        if (!str.isEmpty()) {
            bundle.putString("inspector_extras", str);
        }
        boolean z = this.b;
        bundle.putInt("test_mode", z ? 1 : 0);
        boolean z2 = this.f7058c;
        bundle.putInt("linked_device", z2 ? 1 : 0);
        if (z || z2) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Fa)).booleanValue()) {
                bundle.putBoolean("collect_response_logs", this.e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void zza(Object obj) {
        Bundle bundle = ((zzczm) obj).f5627a;
        String str = this.f7057a;
        if (!str.isEmpty()) {
            bundle.putString("inspector_extras", str);
        }
        boolean z = this.b;
        bundle.putInt("test_mode", z ? 1 : 0);
        boolean z2 = this.f7058c;
        bundle.putInt("linked_device", z2 ? 1 : 0);
        if (z || z2) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ba)).booleanValue()) {
                bundle.putInt("risd", !this.d ? 1 : 0);
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Fa)).booleanValue()) {
                bundle.putBoolean("collect_response_logs", this.e);
            }
        }
    }
}
