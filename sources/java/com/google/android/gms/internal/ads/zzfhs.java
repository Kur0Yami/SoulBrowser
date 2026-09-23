package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzfhs {

    /* renamed from: a, reason: collision with root package name */
    public final int f7369a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f7370c;

    public zzfhs(int i, int i2, boolean z) {
        this.f7369a = i;
        this.b = i2;
        this.f7370c = z;
    }

    public static ArrayList a(JsonReader jsonReader) {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            jsonReader.beginObject();
            int i = 0;
            int i2 = 0;
            boolean z = false;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if ("width".equals(nextName)) {
                    i = jsonReader.nextInt();
                } else if ("height".equals(nextName)) {
                    i2 = jsonReader.nextInt();
                } else if ("is_fluid_height".equals(nextName)) {
                    z = jsonReader.nextBoolean();
                } else {
                    jsonReader.skipValue();
                }
            }
            jsonReader.endObject();
            arrayList.add(new zzfhs(i, i2, z));
        }
        jsonReader.endArray();
        return arrayList;
    }
}
