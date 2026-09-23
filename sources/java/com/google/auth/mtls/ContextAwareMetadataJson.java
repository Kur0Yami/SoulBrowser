package com.google.auth.mtls;

import com.google.api.client.json.GenericJson;
import com.google.api.client.util.Key;
import java.util.List;

/* loaded from: classes3.dex */
public class ContextAwareMetadataJson extends GenericJson {

    @Key("cert_provider_command")
    private List<String> commands;
}
