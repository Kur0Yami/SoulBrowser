package org.apache.commons.lang3;

import j$.util.function.Consumer$CC;
import java.util.HashMap;
import java.util.Set;
import java.util.function.Consumer;
import org.apache.commons.lang3.arch.Processor;

/* loaded from: classes4.dex */
public final /* synthetic */ class d implements Consumer {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f22381c;
    public final /* synthetic */ Object f;

    public /* synthetic */ d(int i, Object obj) {
        this.f22381c = i;
        this.f = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f22381c) {
            case 0:
                String str = (String) obj;
                Set set = ((CharSet) this.f).f22341c;
                if (str != null) {
                    int length = str.length();
                    int i = 0;
                    while (i < length) {
                        int i2 = length - i;
                        if (i2 >= 4 && str.charAt(i) == '^' && str.charAt(i + 2) == '-') {
                            set.add(new CharRange(str.charAt(i + 1), str.charAt(i + 3), true));
                            i += 4;
                        } else if (i2 >= 3 && str.charAt(i + 1) == '-') {
                            set.add(new CharRange(str.charAt(i), str.charAt(i + 2), false));
                            i += 3;
                        } else if (i2 >= 2 && str.charAt(i) == '^') {
                            char charAt = str.charAt(i + 1);
                            set.add(new CharRange(charAt, charAt, true));
                            i += 2;
                        } else {
                            char charAt2 = str.charAt(i);
                            set.add(new CharRange(charAt2, charAt2, false));
                            i++;
                        }
                    }
                    return;
                }
                return;
            default:
                Processor processor = (Processor) this.f;
                String str2 = (String) obj;
                HashMap hashMap = ArchUtils.f22335a;
                if (!hashMap.containsKey(str2)) {
                    hashMap.put(str2, processor);
                    return;
                }
                throw new IllegalStateException(android.support.v4.media.a.l("Key ", str2, " already exists in processor map"));
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.f22381c;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
