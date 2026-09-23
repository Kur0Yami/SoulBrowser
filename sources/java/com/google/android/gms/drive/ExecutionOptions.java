package com.google.android.gms.drive;

import com.google.android.gms.common.internal.Objects;

/* loaded from: classes.dex */
public class ExecutionOptions {

    /* loaded from: classes.dex */
    public static class Builder {
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == getClass()) {
            if (obj == this) {
                return true;
            }
            if (Objects.equal(null, null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(null, 0, Boolean.FALSE);
    }
}
