package protect;

import backend.DoHQueryToken;

/* loaded from: classes4.dex */
public interface Protector extends DoHQueryToken {
    String getResolvers();

    boolean protect(int i);
}
