package com.google.android.gms.internal.ads;

import java.util.HashSet;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class zzftq extends zzftr {

    /* renamed from: c, reason: collision with root package name */
    public final HashSet f7650c;
    public final JSONObject d;
    public final long e;

    public zzftq(zzftj zzftjVar, HashSet hashSet, JSONObject jSONObject, long j) {
        super(zzftjVar);
        this.f7650c = new HashSet(hashSet);
        this.d = jSONObject;
        this.e = j;
    }
}
