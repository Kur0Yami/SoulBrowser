package com.google.android.gms.cast.framework;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.ImagePicker;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;

@SafeParcelable.Class(creator = "CastOptionsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class CastOptions extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<CastOptions> CREATOR;
    public static final zzj w = new zzj(false);
    public static final zzl x = new zzl(0);
    public static final CastMediaOptions y;

    /* renamed from: c, reason: collision with root package name */
    public final String f3467c;
    public final ArrayList f;
    public final boolean g;
    public final LaunchOptions h;
    public final boolean i;
    public final CastMediaOptions j;
    public final boolean k;
    public final double l;
    public final boolean m;
    public final boolean n;
    public final boolean o;
    public final List p;
    public final boolean q;
    public final boolean r;
    public final zzj s;
    public zzl t;
    public final boolean u;
    public final boolean v;

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public String f3468a;
        public final ArrayList b = new ArrayList();

        /* renamed from: c, reason: collision with root package name */
        public final LaunchOptions f3469c = new LaunchOptions();
        public final boolean d = true;
        public final boolean e = true;
        public final double f = 0.05000000074505806d;
        public final ArrayList g = new ArrayList();
        public final boolean h = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, android.os.Parcelable$Creator<com.google.android.gms.cast.framework.CastOptions>] */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.os.IBinder] */
    static {
        CastMediaOptions.Builder builder = new CastMediaOptions.Builder();
        builder.d = false;
        com.google.android.gms.cast.framework.media.zzd zzdVar = null;
        builder.f3496c = null;
        ImagePicker imagePicker = builder.b;
        if (imagePicker != null) {
            zzdVar = imagePicker.f3498a;
        }
        y = new CastMediaOptions("com.google.android.gms.cast.framework.media.MediaIntentReceiver", builder.f3495a, zzdVar, builder.f3496c, false, builder.d);
        CREATOR = new Object();
    }

    public CastOptions(String str, List list, boolean z, LaunchOptions launchOptions, boolean z2, CastMediaOptions castMediaOptions, boolean z3, double d, boolean z4, boolean z5, boolean z6, List list2, boolean z7, boolean z8, zzj zzjVar, zzl zzlVar, boolean z9, boolean z10) {
        int size;
        this.f3467c = true == TextUtils.isEmpty(str) ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : str;
        if (list == null) {
            size = 0;
        } else {
            size = list.size();
        }
        ArrayList arrayList = new ArrayList(size);
        this.f = arrayList;
        if (size > 0) {
            arrayList.addAll(list);
        }
        this.g = z;
        this.h = launchOptions == null ? new LaunchOptions() : launchOptions;
        this.i = z2;
        this.j = castMediaOptions;
        this.k = z3;
        this.l = d;
        this.m = z4;
        this.n = z5;
        this.o = z6;
        this.p = list2;
        this.q = z7;
        this.r = z8;
        this.s = zzjVar;
        this.t = zzlVar;
        this.u = z9;
        this.v = z10;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f3467c, false);
        SafeParcelWriter.writeStringList(parcel, 3, DesugarCollections.unmodifiableList(this.f), false);
        SafeParcelWriter.writeBoolean(parcel, 4, this.g);
        SafeParcelWriter.writeParcelable(parcel, 5, this.h, i, false);
        SafeParcelWriter.writeBoolean(parcel, 6, this.i);
        SafeParcelWriter.writeParcelable(parcel, 7, this.j, i, false);
        SafeParcelWriter.writeBoolean(parcel, 8, this.k);
        SafeParcelWriter.writeDouble(parcel, 9, this.l);
        SafeParcelWriter.writeBoolean(parcel, 10, this.m);
        SafeParcelWriter.writeBoolean(parcel, 11, this.n);
        SafeParcelWriter.writeBoolean(parcel, 12, this.o);
        SafeParcelWriter.writeStringList(parcel, 13, DesugarCollections.unmodifiableList(this.p), false);
        SafeParcelWriter.writeBoolean(parcel, 14, this.q);
        SafeParcelWriter.writeInt(parcel, 15, 0);
        SafeParcelWriter.writeBoolean(parcel, 16, this.r);
        SafeParcelWriter.writeParcelable(parcel, 17, this.s, i, false);
        SafeParcelWriter.writeParcelable(parcel, 18, this.t, i, false);
        SafeParcelWriter.writeBoolean(parcel, 19, this.u);
        SafeParcelWriter.writeBoolean(parcel, 20, this.v);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
