.class public Lcom/google/auth/mtls/ContextAwareMetadataJson;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# instance fields
.field private commands:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "cert_provider_command"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
