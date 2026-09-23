package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
@SafeParcelable.Class(creator = "AdRequestInfoParcelCreator")
/* loaded from: classes.dex */
public final class zzbyf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbyf> CREATOR = new Object();
    public final List A;
    public final String B;
    public final zzbjn C;
    public final List D;
    public final long E;
    public final String F;
    public final float G;
    public final int H;
    public final int I;
    public final boolean J;
    public final String K;
    public final boolean L;
    public final String M;
    public final boolean N;
    public final int O;
    public final Bundle P;
    public final String Q;
    public final com.google.android.gms.ads.internal.client.zzeh R;
    public final boolean S;
    public final Bundle T;
    public final String U;
    public final String V;
    public final String W;
    public final boolean X;
    public final List Y;
    public final String Z;
    public final List a0;
    public final int b0;

    /* renamed from: c, reason: collision with root package name */
    public final int f4970c;
    public final boolean c0;
    public final boolean d0;
    public final boolean e0;
    public final Bundle f;
    public final ArrayList f0;
    public final com.google.android.gms.ads.internal.client.zzm g;
    public final String g0;
    public final com.google.android.gms.ads.internal.client.zzr h;
    public final zzbpy h0;
    public final String i;
    public final String i0;
    public final ApplicationInfo j;
    public final Bundle j0;
    public final PackageInfo k;
    public final String l;
    public final String m;
    public final String n;
    public final VersionInfoParcel o;
    public final Bundle p;
    public final int q;
    public final List r;
    public final Bundle s;
    public final boolean t;
    public final int u;
    public final int v;
    public final float w;
    public final String x;
    public final long y;
    public final String z;

    public zzbyf(int i, Bundle bundle, com.google.android.gms.ads.internal.client.zzm zzmVar, com.google.android.gms.ads.internal.client.zzr zzrVar, String str, ApplicationInfo applicationInfo, PackageInfo packageInfo, String str2, String str3, String str4, VersionInfoParcel versionInfoParcel, Bundle bundle2, int i2, ArrayList arrayList, Bundle bundle3, boolean z, int i3, int i4, float f, String str5, long j, String str6, ArrayList arrayList2, String str7, zzbjn zzbjnVar, ArrayList arrayList3, long j2, String str8, float f2, boolean z2, int i5, int i6, boolean z3, String str9, String str10, boolean z4, int i7, Bundle bundle4, String str11, com.google.android.gms.ads.internal.client.zzeh zzehVar, boolean z5, Bundle bundle5, String str12, String str13, String str14, boolean z6, ArrayList arrayList4, String str15, ArrayList arrayList5, int i8, boolean z7, boolean z8, boolean z9, ArrayList arrayList6, String str16, zzbpy zzbpyVar, String str17, Bundle bundle6) {
        List unmodifiableList;
        List unmodifiableList2;
        this.f4970c = i;
        this.f = bundle;
        this.g = zzmVar;
        this.h = zzrVar;
        this.i = str;
        this.j = applicationInfo;
        this.k = packageInfo;
        this.l = str2;
        this.m = str3;
        this.n = str4;
        this.o = versionInfoParcel;
        this.p = bundle2;
        this.q = i2;
        this.r = arrayList;
        if (arrayList3 == null) {
            unmodifiableList = Collections.EMPTY_LIST;
        } else {
            unmodifiableList = DesugarCollections.unmodifiableList(arrayList3);
        }
        this.D = unmodifiableList;
        this.s = bundle3;
        this.t = z;
        this.u = i3;
        this.v = i4;
        this.w = f;
        this.x = str5;
        this.y = j;
        this.z = str6;
        if (arrayList2 == null) {
            unmodifiableList2 = Collections.EMPTY_LIST;
        } else {
            unmodifiableList2 = DesugarCollections.unmodifiableList(arrayList2);
        }
        this.A = unmodifiableList2;
        this.B = str7;
        this.C = zzbjnVar;
        this.E = j2;
        this.F = str8;
        this.G = f2;
        this.L = z2;
        this.H = i5;
        this.I = i6;
        this.J = z3;
        this.K = str9;
        this.M = str10;
        this.N = z4;
        this.O = i7;
        this.P = bundle4;
        this.Q = str11;
        this.R = zzehVar;
        this.S = z5;
        this.T = bundle5;
        this.U = str12;
        this.V = str13;
        this.W = str14;
        this.X = z6;
        this.Y = arrayList4;
        this.Z = str15;
        this.a0 = arrayList5;
        this.b0 = i8;
        this.c0 = z7;
        this.d0 = z8;
        this.e0 = z9;
        this.f0 = arrayList6;
        this.g0 = str16;
        this.h0 = zzbpyVar;
        this.i0 = str17;
        this.j0 = bundle6;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f4970c);
        SafeParcelWriter.writeBundle(parcel, 2, this.f, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.g, i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.h, i, false);
        SafeParcelWriter.writeString(parcel, 5, this.i, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.j, i, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.k, i, false);
        SafeParcelWriter.writeString(parcel, 8, this.l, false);
        SafeParcelWriter.writeString(parcel, 9, this.m, false);
        SafeParcelWriter.writeString(parcel, 10, this.n, false);
        SafeParcelWriter.writeParcelable(parcel, 11, this.o, i, false);
        SafeParcelWriter.writeBundle(parcel, 12, this.p, false);
        SafeParcelWriter.writeInt(parcel, 13, this.q);
        SafeParcelWriter.writeStringList(parcel, 14, this.r, false);
        SafeParcelWriter.writeBundle(parcel, 15, this.s, false);
        SafeParcelWriter.writeBoolean(parcel, 16, this.t);
        SafeParcelWriter.writeInt(parcel, 18, this.u);
        SafeParcelWriter.writeInt(parcel, 19, this.v);
        SafeParcelWriter.writeFloat(parcel, 20, this.w);
        SafeParcelWriter.writeString(parcel, 21, this.x, false);
        SafeParcelWriter.writeLong(parcel, 25, this.y);
        SafeParcelWriter.writeString(parcel, 26, this.z, false);
        SafeParcelWriter.writeStringList(parcel, 27, this.A, false);
        SafeParcelWriter.writeString(parcel, 28, this.B, false);
        SafeParcelWriter.writeParcelable(parcel, 29, this.C, i, false);
        SafeParcelWriter.writeStringList(parcel, 30, this.D, false);
        SafeParcelWriter.writeLong(parcel, 31, this.E);
        SafeParcelWriter.writeString(parcel, 33, this.F, false);
        SafeParcelWriter.writeFloat(parcel, 34, this.G);
        SafeParcelWriter.writeInt(parcel, 35, this.H);
        SafeParcelWriter.writeInt(parcel, 36, this.I);
        SafeParcelWriter.writeBoolean(parcel, 37, this.J);
        SafeParcelWriter.writeString(parcel, 39, this.K, false);
        SafeParcelWriter.writeBoolean(parcel, 40, this.L);
        SafeParcelWriter.writeString(parcel, 41, this.M, false);
        SafeParcelWriter.writeBoolean(parcel, 42, this.N);
        SafeParcelWriter.writeInt(parcel, 43, this.O);
        SafeParcelWriter.writeBundle(parcel, 44, this.P, false);
        SafeParcelWriter.writeString(parcel, 45, this.Q, false);
        SafeParcelWriter.writeParcelable(parcel, 46, this.R, i, false);
        SafeParcelWriter.writeBoolean(parcel, 47, this.S);
        SafeParcelWriter.writeBundle(parcel, 48, this.T, false);
        SafeParcelWriter.writeString(parcel, 49, this.U, false);
        SafeParcelWriter.writeString(parcel, 50, this.V, false);
        SafeParcelWriter.writeString(parcel, 51, this.W, false);
        SafeParcelWriter.writeBoolean(parcel, 52, this.X);
        SafeParcelWriter.writeIntegerList(parcel, 53, this.Y, false);
        SafeParcelWriter.writeString(parcel, 54, this.Z, false);
        SafeParcelWriter.writeStringList(parcel, 55, this.a0, false);
        SafeParcelWriter.writeInt(parcel, 56, this.b0);
        SafeParcelWriter.writeBoolean(parcel, 57, this.c0);
        SafeParcelWriter.writeBoolean(parcel, 58, this.d0);
        SafeParcelWriter.writeBoolean(parcel, 59, this.e0);
        SafeParcelWriter.writeStringList(parcel, 60, this.f0, false);
        SafeParcelWriter.writeString(parcel, 61, this.g0, false);
        SafeParcelWriter.writeParcelable(parcel, 63, this.h0, i, false);
        SafeParcelWriter.writeString(parcel, 64, this.i0, false);
        SafeParcelWriter.writeBundle(parcel, 65, this.j0, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
