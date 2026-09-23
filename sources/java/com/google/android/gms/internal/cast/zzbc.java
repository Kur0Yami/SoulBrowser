package com.google.android.gms.internal.cast;

import android.os.IInterface;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashMap;

/* loaded from: classes.dex */
public interface zzbc extends IInterface {
    com.google.android.gms.cast.framework.zzar F1(ObjectWrapper objectWrapper, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2);

    com.google.android.gms.cast.framework.zzak H(CastOptions castOptions, IObjectWrapper iObjectWrapper, com.google.android.gms.cast.framework.zzae zzaeVar);

    com.google.android.gms.cast.framework.media.internal.zzg I0(ObjectWrapper objectWrapper, ObjectWrapper objectWrapper2, com.google.android.gms.cast.framework.media.internal.zzi zziVar, int i, int i2);

    com.google.android.gms.cast.framework.media.internal.zzg X1(ObjectWrapper objectWrapper, com.google.android.gms.cast.framework.media.internal.zzi zziVar, int i, int i2);

    com.google.android.gms.cast.framework.zzau Y4(String str, String str2, com.google.android.gms.cast.framework.zzbc zzbcVar);

    com.google.android.gms.cast.framework.zzah u3(ObjectWrapper objectWrapper, CastOptions castOptions, zzbx zzbxVar, HashMap hashMap);

    int zze();
}
