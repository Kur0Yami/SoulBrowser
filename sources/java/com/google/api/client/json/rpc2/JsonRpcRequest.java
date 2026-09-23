package com.google.api.client.json.rpc2;

import com.google.api.client.util.Beta;
import com.google.api.client.util.GenericData;
import com.google.api.client.util.Key;

@Beta
/* loaded from: classes3.dex */
public class JsonRpcRequest extends GenericData {

    @Key
    private Object id;

    @Key
    private final String jsonrpc;

    @Key
    private String method;

    @Key
    private Object params;

    @Override // com.google.api.client.util.GenericData, java.util.AbstractMap
    public final GenericData clone() {
        return (JsonRpcRequest) super.clone();
    }

    @Override // com.google.api.client.util.GenericData
    public final GenericData set(String str, Object obj) {
        return (JsonRpcRequest) super.set(str, obj);
    }

    @Override // com.google.api.client.util.GenericData, java.util.AbstractMap
    public final Object clone() {
        return (JsonRpcRequest) super.clone();
    }
}
