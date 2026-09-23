.class public final Lcom/google/api/client/testing/http/HttpTesting;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# static fields
.field public static final a:Lcom/google/api/client/http/GenericUrl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    .line 2
    .line 3
    const-string v1, "http://google.com/"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/api/client/testing/http/HttpTesting;->a:Lcom/google/api/client/http/GenericUrl;

    .line 9
    .line 10
    return-void
.end method
