package com.google.android.gms.internal.ads;

import java.io.ByteArrayInputStream;
import java.nio.charset.StandardCharsets;
import org.json.JSONObject;

/* loaded from: classes.dex */
final /* synthetic */ class zzbsb implements zzbrx {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzbsb f4866a = new Object();

    @Override // com.google.android.gms.internal.ads.zzbrx
    public final /* synthetic */ Object b(JSONObject jSONObject) {
        return new ByteArrayInputStream(jSONObject.toString().getBytes(StandardCharsets.UTF_8));
    }
}
