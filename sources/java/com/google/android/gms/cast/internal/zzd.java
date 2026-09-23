package com.google.android.gms.cast.internal;

import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class zzd extends zzq {
    public final List d;

    public zzd(String str) {
        super(str);
        this.d = DesugarCollections.synchronizedList(new ArrayList());
    }

    public final void c(zzav zzavVar) {
        this.d.add(zzavVar);
    }
}
