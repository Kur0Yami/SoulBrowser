package com.google.android.gms.internal.p001authapiphone;

import android.os.BadParcelableException;
import android.os.Parcel;
import android.support.v4.media.a;

/* loaded from: classes.dex */
public final class zzc {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f9443a = 0;

    static {
        zzc.class.getClassLoader();
    }

    public static void a(Parcel parcel) {
        int dataAvail = parcel.dataAvail();
        if (dataAvail <= 0) {
        } else {
            throw new BadParcelableException(a.e(dataAvail, "Parcel data not fully consumed, unread size: "));
        }
    }
}
