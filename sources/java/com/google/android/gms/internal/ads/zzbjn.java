package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "NativeAdOptionsParcelCreator")
/* loaded from: classes.dex */
public final class zzbjn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbjn> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f4743c;
    public final boolean f;
    public final int g;
    public final boolean h;
    public final int i;
    public final com.google.android.gms.ads.internal.client.zzga j;
    public final boolean k;
    public final int l;
    public final int m;
    public final boolean n;
    public final int o;

    public zzbjn(int i, boolean z, int i2, boolean z2, int i3, com.google.android.gms.ads.internal.client.zzga zzgaVar, boolean z3, int i4, int i5, boolean z4, int i6) {
        this.f4743c = i;
        this.f = z;
        this.g = i2;
        this.h = z2;
        this.i = i3;
        this.j = zzgaVar;
        this.k = z3;
        this.l = i4;
        this.n = z4;
        this.m = i5;
        this.o = i6;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0034, code lost:
    
        if (r1 == 1) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.ads.nativead.NativeAdOptions F(com.google.android.gms.internal.ads.zzbjn r5) {
        /*
            com.google.android.gms.ads.nativead.NativeAdOptions$Builder r0 = new com.google.android.gms.ads.nativead.NativeAdOptions$Builder
            r0.<init>()
            if (r5 != 0) goto Lc
            com.google.android.gms.ads.nativead.NativeAdOptions r5 = r0.build()
            return r5
        Lc:
            int r1 = r5.f4743c
            r2 = 2
            if (r1 == r2) goto L45
            r3 = 3
            if (r1 == r3) goto L39
            r4 = 4
            if (r1 == r4) goto L18
            goto L4a
        L18:
            boolean r1 = r5.k
            r0.setRequestCustomMuteThisAd(r1)
            int r1 = r5.l
            r0.setMediaAspectRatio(r1)
            int r1 = r5.m
            boolean r4 = r5.n
            r0.enableCustomClickGestureDirection(r1, r4)
            int r1 = r5.o
            r4 = 1
            if (r1 != 0) goto L30
        L2e:
            r2 = r4
            goto L36
        L30:
            if (r1 != r2) goto L34
            r2 = r3
            goto L36
        L34:
            if (r1 != r4) goto L2e
        L36:
            r0.zzi(r2)
        L39:
            com.google.android.gms.ads.internal.client.zzga r1 = r5.j
            if (r1 == 0) goto L45
            com.google.android.gms.ads.VideoOptions r2 = new com.google.android.gms.ads.VideoOptions
            r2.<init>(r1)
            r0.setVideoOptions(r2)
        L45:
            int r1 = r5.i
            r0.setAdChoicesPlacement(r1)
        L4a:
            boolean r1 = r5.f
            r0.setReturnUrlsForImageAssets(r1)
            boolean r5 = r5.h
            r0.setRequestMultipleImages(r5)
            com.google.android.gms.ads.nativead.NativeAdOptions r5 = r0.build()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbjn.F(com.google.android.gms.internal.ads.zzbjn):com.google.android.gms.ads.nativead.NativeAdOptions");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f4743c);
        SafeParcelWriter.writeBoolean(parcel, 2, this.f);
        SafeParcelWriter.writeInt(parcel, 3, this.g);
        SafeParcelWriter.writeBoolean(parcel, 4, this.h);
        SafeParcelWriter.writeInt(parcel, 5, this.i);
        SafeParcelWriter.writeParcelable(parcel, 6, this.j, i, false);
        SafeParcelWriter.writeBoolean(parcel, 7, this.k);
        SafeParcelWriter.writeInt(parcel, 8, this.l);
        SafeParcelWriter.writeInt(parcel, 9, this.m);
        SafeParcelWriter.writeBoolean(parcel, 10, this.n);
        SafeParcelWriter.writeInt(parcel, 11, this.o);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public zzbjn(NativeAdOptions nativeAdOptions) {
        this(4, nativeAdOptions.shouldReturnUrlsForImageAssets(), nativeAdOptions.getImageOrientation(), nativeAdOptions.shouldRequestMultipleImages(), nativeAdOptions.getAdChoicesPlacement(), nativeAdOptions.getVideoOptions() != null ? new com.google.android.gms.ads.internal.client.zzga(nativeAdOptions.getVideoOptions()) : null, nativeAdOptions.zza(), nativeAdOptions.getMediaAspectRatio(), 0, false, 0);
    }
}
