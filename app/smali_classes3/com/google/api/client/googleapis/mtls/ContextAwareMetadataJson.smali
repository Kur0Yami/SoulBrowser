.class public Lcom/google/api/client/googleapis/mtls/ContextAwareMetadataJson;
.super Lcom/google/api/client/json/GenericJson;
.source "SourceFile"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


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


# virtual methods
.method public final getCommands()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/mtls/ContextAwareMetadataJson;->commands:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
