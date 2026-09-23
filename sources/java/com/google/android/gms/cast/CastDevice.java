package com.google.android.gms.cast;

import android.net.Network;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.api.client.googleapis.media.MediaHttpUploader;
import j$.util.DesugarCollections;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;

@SafeParcelable.Class(creator = "CastDeviceCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class CastDevice extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<CastDevice> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3432c;
    public final String f;
    public final InetAddress g;
    public final String h;
    public final String i;
    public final String j;
    public final int k;
    public final List l;
    public final com.google.android.gms.cast.internal.zzp m;
    public final int n;
    public final String o;
    public final String p;
    public final int q;
    public final String r;
    public final byte[] s;
    public final String t;
    public final boolean u;
    public final com.google.android.gms.cast.internal.zzaa v;
    public final Integer w;
    public final Boolean x;
    public final Network y;

    public CastDevice(String str, String str2, String str3, String str4, String str5, int i, ArrayList arrayList, int i2, int i3, String str6, String str7, int i4, String str8, byte[] bArr, String str9, boolean z, com.google.android.gms.cast.internal.zzaa zzaaVar, Integer num, Boolean bool, Network network) {
        String str10 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        this.f3432c = str == null ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : str;
        str2 = str2 == null ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : str2;
        this.f = str2;
        if (!TextUtils.isEmpty(str2)) {
            try {
                this.g = InetAddress.getByName(str2);
            } catch (UnknownHostException e) {
                String str11 = this.f;
                String message = e.getMessage();
                Log.i("CastDevice", a.r(new StringBuilder(String.valueOf(str11).length() + 48 + String.valueOf(message).length()), "Unable to convert host address (", str11, ") to ipaddress: ", message));
            }
        }
        this.h = str3 == null ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : str3;
        this.i = str4 == null ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : str4;
        this.j = str5 == null ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : str5;
        this.k = i;
        this.l = arrayList == null ? new ArrayList() : arrayList;
        this.n = i3;
        this.o = str6 != null ? str6 : str10;
        this.p = str7;
        this.q = i4;
        this.r = str8;
        this.s = bArr;
        this.t = str9;
        this.u = z;
        this.v = zzaaVar;
        this.w = num;
        this.x = bool;
        this.y = network;
        this.m = new com.google.android.gms.cast.internal.zzp(i2);
    }

    public static CastDevice F(Bundle bundle) {
        ClassLoader classLoader;
        if (bundle != null && (classLoader = CastDevice.class.getClassLoader()) != null) {
            bundle.setClassLoader(classLoader);
            return (CastDevice) bundle.getParcelable("com.google.android.gms.cast.EXTRA_CAST_DEVICE");
        }
        return null;
    }

    public final com.google.android.gms.cast.internal.zzaa G() {
        com.google.android.gms.cast.internal.zzaa zzaaVar = this.v;
        if (zzaaVar == null && this.m.c()) {
            return new com.google.android.gms.cast.internal.zzaa(1, false, false, null, null, null, null, null, false, false);
        }
        return zzaaVar;
    }

    public final boolean X() {
        Boolean bool = this.x;
        if (bool != null) {
            return bool.booleanValue();
        }
        int i = this.n;
        if (i != -1 && (i & 2) > 0) {
            return true;
        }
        return false;
    }

    public final boolean equals(Object obj) {
        int i;
        byte[] bArr;
        boolean z;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CastDevice)) {
            return false;
        }
        CastDevice castDevice = (CastDevice) obj;
        byte[] bArr2 = castDevice.s;
        int i2 = castDevice.k;
        String str = castDevice.j;
        String str2 = castDevice.f3432c;
        String str3 = this.f3432c;
        if (str3 == null) {
            if (str2 == null) {
                return true;
            }
            return false;
        }
        if (CastUtils.c(str3, str2) && CastUtils.c(this.g, castDevice.g) && CastUtils.c(this.i, castDevice.i) && CastUtils.c(this.h, castDevice.h)) {
            String str4 = this.j;
            if (CastUtils.c(str4, str) && (i = this.k) == i2 && CastUtils.c(this.l, castDevice.l) && this.m.f3626a == castDevice.m.f3626a && this.n == castDevice.n && CastUtils.c(this.o, castDevice.o) && CastUtils.c(Integer.valueOf(this.q), Integer.valueOf(castDevice.q)) && CastUtils.c(this.r, castDevice.r) && CastUtils.c(this.p, castDevice.p) && CastUtils.c(str4, str) && i == i2 && ((((bArr = this.s) == null && bArr2 == null) || Arrays.equals(bArr, bArr2)) && CastUtils.c(this.t, castDevice.t) && this.u == castDevice.u && CastUtils.c(G(), castDevice.G()))) {
                Boolean valueOf = Boolean.valueOf(X());
                if (castDevice.X() && CastUtils.c(this.y, castDevice.y)) {
                    z = true;
                } else {
                    z = false;
                }
                if (CastUtils.c(valueOf, Boolean.valueOf(z))) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f3432c;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String toString() {
        String str;
        com.google.android.gms.cast.internal.zzp zzpVar = this.m;
        if (zzpVar.a(64)) {
            str = "[dynamic group]";
        } else if (zzpVar.b()) {
            str = "[static group]";
        } else if (zzpVar.c()) {
            str = "[speaker pair]";
        } else {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (zzpVar.a(MediaHttpUploader.MINIMUM_CHUNK_SIZE)) {
            str = str.concat("[cast connect]");
        }
        Locale locale = Locale.ROOT;
        Pattern pattern = CastUtils.f3603a;
        String str2 = this.h;
        if (!TextUtils.isEmpty(str2)) {
            int length = str2.length();
            if (length <= 2) {
                if (length == 2) {
                    str2 = "xx";
                } else {
                    str2 = "x";
                }
            } else {
                str2 = String.format(locale, "%c%d%c", Character.valueOf(str2.charAt(0)), Integer.valueOf(length - 2), Character.valueOf(str2.charAt(length - 1)));
            }
        }
        StringBuilder u = androidx.work.impl.workers.a.u("\"", str2, "\" (", this.f3432c, ") ");
        u.append(str);
        return u.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f3432c, false);
        SafeParcelWriter.writeString(parcel, 3, this.f, false);
        SafeParcelWriter.writeString(parcel, 4, this.h, false);
        SafeParcelWriter.writeString(parcel, 5, this.i, false);
        SafeParcelWriter.writeString(parcel, 6, this.j, false);
        SafeParcelWriter.writeInt(parcel, 7, this.k);
        SafeParcelWriter.writeTypedList(parcel, 8, DesugarCollections.unmodifiableList(this.l), false);
        SafeParcelWriter.writeInt(parcel, 9, this.m.f3626a);
        SafeParcelWriter.writeInt(parcel, 10, this.n);
        SafeParcelWriter.writeString(parcel, 11, this.o, false);
        SafeParcelWriter.writeString(parcel, 12, this.p, false);
        SafeParcelWriter.writeInt(parcel, 13, this.q);
        SafeParcelWriter.writeString(parcel, 14, this.r, false);
        SafeParcelWriter.writeByteArray(parcel, 15, this.s, false);
        SafeParcelWriter.writeString(parcel, 16, this.t, false);
        SafeParcelWriter.writeBoolean(parcel, 17, this.u);
        SafeParcelWriter.writeParcelable(parcel, 18, G(), i, false);
        SafeParcelWriter.writeIntegerObject(parcel, 19, this.w, false);
        SafeParcelWriter.writeBooleanObject(parcel, 20, Boolean.valueOf(X()), false);
        SafeParcelWriter.writeParcelable(parcel, 21, this.y, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final int zzd() {
        com.google.android.gms.cast.internal.zzp zzpVar = this.m;
        if (!zzpVar.a(64)) {
            if (!zzpVar.b()) {
                if (zzpVar.c()) {
                    return 5;
                }
                if (!zzpVar.a(1)) {
                    return 1;
                }
                return 2;
            }
            return 3;
        }
        return 4;
    }
}
