package com.google.auth.oauth2;

import com.google.api.client.json.JsonParser;
import com.google.api.client.json.JsonToken;
import com.google.api.client.util.Data;
import com.google.auth.oauth2.GoogleCredentials;
import com.google.common.base.MoreObjects;
import j$.util.Objects;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.Socket;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* loaded from: classes3.dex */
public class CloudShellCredentials extends GoogleCredentials {
    public static final byte[] q = "2\n[]\n".getBytes(StandardCharsets.UTF_8);

    /* loaded from: classes3.dex */
    public static class Builder extends GoogleCredentials.Builder {
    }

    @Override // com.google.auth.oauth2.GoogleCredentials, com.google.auth.oauth2.OAuth2Credentials
    public final boolean equals(Object obj) {
        if (!(obj instanceof CloudShellCredentials)) {
            return false;
        }
        return true;
    }

    @Override // com.google.auth.oauth2.GoogleCredentials, com.google.auth.oauth2.OAuth2Credentials
    public final int hashCode() {
        return Objects.hash(0);
    }

    @Override // com.google.auth.oauth2.OAuth2Credentials
    public final AccessToken i() {
        Socket socket = new Socket("localhost", 0);
        socket.setSoTimeout(5000);
        try {
            socket.getOutputStream().write(q);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(socket.getInputStream()));
            bufferedReader.readLine();
            JsonParser createJsonParser = OAuth2Utils.d.createJsonParser(bufferedReader);
            createJsonParser.getClass();
            Collection<Object> newCollectionInstance = Data.newCollectionInstance(ArrayList.class);
            ArrayList arrayList = new ArrayList();
            for (JsonToken S = createJsonParser.S(); S != JsonToken.f; S = createJsonParser.v()) {
                newCollectionInstance.add(createJsonParser.F(null, Object.class, arrayList, true));
            }
            return new AccessToken(((List) newCollectionInstance).get(2).toString(), null);
        } finally {
            socket.close();
        }
    }

    @Override // com.google.auth.oauth2.GoogleCredentials, com.google.auth.oauth2.OAuth2Credentials
    public final String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.a(0, "authPort");
        return b.toString();
    }
}
