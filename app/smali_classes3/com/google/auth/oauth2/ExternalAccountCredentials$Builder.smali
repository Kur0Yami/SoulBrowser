.class public abstract Lcom/google/auth/oauth2/ExternalAccountCredentials$Builder;
.super Lcom/google/auth/oauth2/GoogleCredentials$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/ExternalAccountCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# instance fields
.field public final e:Lcom/google/auth/oauth2/EnvironmentProvider;

.field public final f:Lcom/google/auth/http/HttpTransportFactory;

.field public g:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Lcom/google/auth/oauth2/ExternalAccountCredentials;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/auth/oauth2/GoogleCredentials$Builder;-><init>(Lcom/google/auth/oauth2/GoogleCredentials;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lcom/google/auth/oauth2/ExternalAccountCredentials;->q:Lcom/google/auth/http/HttpTransportFactory;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$Builder;->f:Lcom/google/auth/http/HttpTransportFactory;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$Builder;->g:Ljava/util/Collection;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials$Builder;->e:Lcom/google/auth/oauth2/EnvironmentProvider;

    .line 12
    .line 13
    return-void
.end method
