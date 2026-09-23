.class Lcom/google/auth/oauth2/OAuth2Credentials$AsyncRefreshResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/OAuth2Credentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncRefreshResult"
.end annotation


# instance fields
.field public final a:Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTask;

.field public final b:Z


# direct methods
.method public constructor <init>(Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTask;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/auth/oauth2/OAuth2Credentials$AsyncRefreshResult;->a:Lcom/google/auth/oauth2/OAuth2Credentials$RefreshTask;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/google/auth/oauth2/OAuth2Credentials$AsyncRefreshResult;->b:Z

    .line 7
    .line 8
    return-void
.end method
