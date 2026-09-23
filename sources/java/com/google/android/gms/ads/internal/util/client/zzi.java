package com.google.android.gms.ads.internal.util.client;

import android.util.JsonWriter;

/* loaded from: classes.dex */
final /* synthetic */ class zzi implements zzk {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f3078a;

    @Override // com.google.android.gms.ads.internal.util.client.zzk
    public final /* synthetic */ void a(JsonWriter jsonWriter) {
        Object obj = zzl.b;
        jsonWriter.name("params").beginObject();
        String str = this.f3078a;
        if (str != null) {
            jsonWriter.name("error_description").value(str);
        }
        jsonWriter.endObject();
    }
}
