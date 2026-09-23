package com.google.api.client.auth.oauth2;

import com.google.api.client.util.Beta;
import com.google.api.client.util.Objects;
import java.io.Serializable;
import java.util.Arrays;
import java.util.concurrent.locks.ReentrantLock;

@Beta
/* loaded from: classes3.dex */
public final class StoredCredential implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final ReentrantLock f12074c;
    public final String f;
    public final Long g;
    public final String h;

    public StoredCredential(Credential credential) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f12074c = reentrantLock;
        String accessToken = credential.getAccessToken();
        reentrantLock.lock();
        try {
            this.f = accessToken;
            reentrantLock.unlock();
            String refreshToken = credential.getRefreshToken();
            reentrantLock.lock();
            try {
                this.h = refreshToken;
                reentrantLock.unlock();
                Long expirationTimeMilliseconds = credential.getExpirationTimeMilliseconds();
                reentrantLock.lock();
                try {
                    this.g = expirationTimeMilliseconds;
                } finally {
                }
            } finally {
            }
        } finally {
        }
    }

    public final String a() {
        ReentrantLock reentrantLock = this.f12074c;
        reentrantLock.lock();
        try {
            return this.f;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final Long b() {
        ReentrantLock reentrantLock = this.f12074c;
        reentrantLock.lock();
        try {
            return this.g;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final String c() {
        ReentrantLock reentrantLock = this.f12074c;
        reentrantLock.lock();
        try {
            return this.h;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoredCredential)) {
            return false;
        }
        StoredCredential storedCredential = (StoredCredential) obj;
        if (Objects.equal(a(), storedCredential.a()) && Objects.equal(c(), storedCredential.c()) && Objects.equal(b(), storedCredential.b())) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{a(), c(), b()});
    }

    public final String toString() {
        return Objects.toStringHelper(StoredCredential.class).add("accessToken", a()).add("refreshToken", c()).add("expirationTimeMilliseconds", b()).toString();
    }
}
