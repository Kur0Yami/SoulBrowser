.class public Lcom/google/auth/oauth2/GoogleCredentials$Builder;
.super Lcom/google/auth/oauth2/OAuth2Credentials$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/GoogleCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/google/auth/oauth2/OAuth2Credentials;->l:Lj$/time/Duration;

    iput-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$Builder;->b:Lj$/time/Duration;

    .line 3
    sget-object v0, Lcom/google/auth/oauth2/OAuth2Credentials;->k:Lj$/time/Duration;

    iput-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$Builder;->c:Lj$/time/Duration;

    return-void
.end method

.method public constructor <init>(Lcom/google/auth/oauth2/GoogleCredentials;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Lcom/google/auth/oauth2/OAuth2Credentials;->l:Lj$/time/Duration;

    iput-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$Builder;->b:Lj$/time/Duration;

    .line 6
    sget-object v0, Lcom/google/auth/oauth2/OAuth2Credentials;->k:Lj$/time/Duration;

    iput-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$Builder;->c:Lj$/time/Duration;

    .line 7
    invoke-virtual {p1}, Lcom/google/auth/oauth2/OAuth2Credentials;->d()Lcom/google/auth/oauth2/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$Builder;->a:Lcom/google/auth/oauth2/AccessToken;

    .line 8
    iget-object v0, p1, Lcom/google/auth/oauth2/OAuth2Credentials;->f:Lj$/time/Duration;

    .line 9
    iput-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$Builder;->b:Lj$/time/Duration;

    .line 10
    iget-object v0, p1, Lcom/google/auth/oauth2/OAuth2Credentials;->c:Lj$/time/Duration;

    .line 11
    iput-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$Builder;->c:Lj$/time/Duration;

    .line 12
    iget-boolean v0, p1, Lcom/google/auth/oauth2/GoogleCredentials;->o:Z

    if-eqz v0, :cond_0

    .line 13
    iget-object p1, p1, Lcom/google/auth/oauth2/GoogleCredentials;->n:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/google/auth/oauth2/GoogleCredentials$Builder;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method
