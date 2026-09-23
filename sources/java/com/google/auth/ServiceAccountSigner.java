package com.google.auth;

import j$.util.Objects;

/* loaded from: classes3.dex */
public interface ServiceAccountSigner {

    /* loaded from: classes3.dex */
    public static class SigningException extends RuntimeException {
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof SigningException)) {
                return false;
            }
            SigningException signingException = (SigningException) obj;
            if (Objects.equals(getCause(), signingException.getCause()) && Objects.equals(getMessage(), signingException.getMessage())) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(getMessage(), getCause());
        }
    }
}
