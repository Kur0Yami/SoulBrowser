package org.apache.commons.lang3.time;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* loaded from: classes4.dex */
public final /* synthetic */ class f implements Consumer {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f22456c;
    public final /* synthetic */ StringBuilder f;

    public /* synthetic */ f(StringBuilder sb, int i) {
        this.f22456c = i;
        this.f = sb;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        String str = (String) obj;
        switch (this.f22456c) {
            case 0:
                StringBuilder sb = this.f;
                FastDateParser.c(sb, str);
                sb.append('|');
                return;
            default:
                StringBuilder sb2 = this.f;
                sb2.append('|');
                FastDateParser.c(sb2, str);
                return;
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.f22456c;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
