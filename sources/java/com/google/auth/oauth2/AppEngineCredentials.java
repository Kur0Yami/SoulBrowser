package com.google.auth.oauth2;

import com.google.auth.ServiceAccountSigner;
import com.google.auth.oauth2.GoogleCredentials;
import com.google.common.base.MoreObjects;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import j$.util.Objects;
import java.io.IOException;
import java.util.Collection;
import java.util.List;

/* loaded from: classes3.dex */
class AppEngineCredentials extends GoogleCredentials implements ServiceAccountSigner {
    public final ImmutableCollection q;
    public final boolean r;

    public AppEngineCredentials(Collection collection, AppEngineCredentials appEngineCredentials) {
        super(new GoogleCredentials.Builder());
        if (collection != null && !collection.isEmpty()) {
            this.q = ImmutableList.s(collection);
        } else {
            this.q = ImmutableSet.w();
        }
        this.r = this.q.isEmpty();
    }

    @Override // com.google.auth.oauth2.GoogleCredentials, com.google.auth.oauth2.OAuth2Credentials
    public final boolean equals(Object obj) {
        if (obj instanceof AppEngineCredentials) {
            AppEngineCredentials appEngineCredentials = (AppEngineCredentials) obj;
            if (this.r == appEngineCredentials.r && Objects.equals(this.q, appEngineCredentials.q)) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.google.auth.oauth2.GoogleCredentials, com.google.auth.oauth2.OAuth2Credentials
    public final int hashCode() {
        return Objects.hash(this.q, Boolean.valueOf(this.r));
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public final AccessToken i() {
        if (!this.r) {
            try {
                throw null;
            } catch (Exception e) {
                throw new IOException("Could not get the access token.", e);
            }
        }
        throw new IOException("AppEngineCredentials requires createScoped call before use.");
    }

    @Override // com.google.auth.oauth2.GoogleCredentials
    public final GoogleCredentials l(List list) {
        return new AppEngineCredentials(list, this);
    }

    @Override // com.google.auth.oauth2.GoogleCredentials, com.google.auth.oauth2.OAuth2Credentials
    public final String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.b(this.q, "scopes");
        b.d("scopesRequired", this.r);
        return b.toString();
    }
}
