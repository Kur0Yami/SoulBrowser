.class public interface abstract Lcom/google/api/client/googleapis/mtls/MtlsProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# virtual methods
.method public abstract getKeyStore()Ljava/security/KeyStore;
.end method

.method public abstract getKeyStorePassword()Ljava/lang/String;
.end method

.method public abstract useMtlsClientCertificate()Z
.end method
