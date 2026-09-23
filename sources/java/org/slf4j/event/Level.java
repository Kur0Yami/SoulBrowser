package org.slf4j.event;

import com.google.api.client.http.HttpMethods;

/* loaded from: classes4.dex */
public enum Level {
    /* JADX INFO: Fake field, exist only in values array */
    ERROR("ERROR"),
    /* JADX INFO: Fake field, exist only in values array */
    WARN("WARN"),
    INFO("INFO"),
    DEBUG("DEBUG"),
    /* JADX INFO: Fake field, exist only in values array */
    TRACE(HttpMethods.TRACE);


    /* renamed from: c, reason: collision with root package name */
    public final String f22690c;

    Level(String str) {
        this.f22690c = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f22690c;
    }
}
