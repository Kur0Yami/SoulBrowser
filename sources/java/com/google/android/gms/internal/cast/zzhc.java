package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.framework.media.CastMediaOptions;
import java.io.Serializable;

/* loaded from: classes.dex */
public abstract class zzhc implements Serializable {
    public static zzhc b(CastMediaOptions castMediaOptions) {
        return new zzhe(castMediaOptions);
    }

    public abstract Object a(Object obj);
}
