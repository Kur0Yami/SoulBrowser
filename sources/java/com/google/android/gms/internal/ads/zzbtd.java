package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzbtd extends zzbcb implements zzbtf {
    public zzbtd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void A() {
        r2(11, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void J2() {
        r2(18, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void Q(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzeVar);
        r2(23, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void U4(int i, String str) {
        Parcel I1 = I1();
        I1.writeInt(i);
        I1.writeString(str);
        r2(22, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void k4(String str, String str2) {
        Parcel I1 = I1();
        I1.writeString(str);
        I1.writeString(str2);
        r2(9, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void p(int i) {
        Parcel I1 = I1();
        I1.writeInt(i);
        r2(3, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void p0(zzbks zzbksVar, String str) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzbksVar);
        I1.writeString(str);
        r2(10, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void p1() {
        r2(20, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void t4(zzcac zzcacVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzcacVar);
        r2(16, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void v1(zzbzy zzbzyVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void y0(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel I1 = I1();
        zzbcd.c(I1, zzeVar);
        r2(24, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void zze() {
        r2(1, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void zzf() {
        r2(2, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void zzh() {
        r2(4, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void zzi() {
        r2(5, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void zzj() {
        r2(6, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void zzk() {
        r2(8, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void zzo() {
        r2(13, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void zzq() {
        r2(15, I1());
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void zzs(int i) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void zzv(String str) {
        Parcel I1 = I1();
        I1.writeString(str);
        r2(21, I1);
    }

    @Override // com.google.android.gms.internal.ads.zzbtf
    public final void zzz() {
        r2(25, I1());
    }
}
