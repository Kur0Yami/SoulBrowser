.class public final enum Lcom/google/auth/oauth2/ComputeEngineCredentials$GoogleAuthTransport;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/ComputeEngineCredentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GoogleAuthTransport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/auth/oauth2/ComputeEngineCredentials$GoogleAuthTransport;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Lcom/google/auth/oauth2/ComputeEngineCredentials$GoogleAuthTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/auth/oauth2/ComputeEngineCredentials$GoogleAuthTransport;

    .line 2
    .line 3
    const-string v1, "ALTS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/google/auth/oauth2/ComputeEngineCredentials$GoogleAuthTransport;

    .line 10
    .line 11
    const-string v3, "MTLS"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x2

    .line 18
    new-array v3, v3, [Lcom/google/auth/oauth2/ComputeEngineCredentials$GoogleAuthTransport;

    .line 19
    .line 20
    aput-object v0, v3, v2

    .line 21
    .line 22
    aput-object v1, v3, v4

    .line 23
    .line 24
    sput-object v3, Lcom/google/auth/oauth2/ComputeEngineCredentials$GoogleAuthTransport;->c:[Lcom/google/auth/oauth2/ComputeEngineCredentials$GoogleAuthTransport;

    .line 25
    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/auth/oauth2/ComputeEngineCredentials$GoogleAuthTransport;
    .locals 1

    .line 1
    const-class v0, Lcom/google/auth/oauth2/ComputeEngineCredentials$GoogleAuthTransport;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/auth/oauth2/ComputeEngineCredentials$GoogleAuthTransport;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/auth/oauth2/ComputeEngineCredentials$GoogleAuthTransport;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/auth/oauth2/ComputeEngineCredentials$GoogleAuthTransport;->c:[Lcom/google/auth/oauth2/ComputeEngineCredentials$GoogleAuthTransport;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/auth/oauth2/ComputeEngineCredentials$GoogleAuthTransport;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/auth/oauth2/ComputeEngineCredentials$GoogleAuthTransport;

    .line 8
    .line 9
    return-object v0
.end method
