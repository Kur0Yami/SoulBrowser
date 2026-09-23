package com.google.thirdparty.publicsuffix;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;

@Beta
@GwtCompatible
/* loaded from: classes3.dex */
public enum PublicSuffixType {
    /* JADX INFO: Fake field, exist only in values array */
    PRIVATE(':', ','),
    /* JADX INFO: Fake field, exist only in values array */
    REGISTRY('!', '?');


    /* renamed from: c, reason: collision with root package name */
    public final char f12836c;
    public final char f;

    PublicSuffixType(char c2, char c3) {
        this.f12836c = c2;
        this.f = c3;
    }
}
