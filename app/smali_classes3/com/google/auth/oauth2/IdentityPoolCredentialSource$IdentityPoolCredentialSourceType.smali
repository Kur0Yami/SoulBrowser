.class final enum Lcom/google/auth/oauth2/IdentityPoolCredentialSource$IdentityPoolCredentialSourceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/IdentityPoolCredentialSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IdentityPoolCredentialSourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/auth/oauth2/IdentityPoolCredentialSource$IdentityPoolCredentialSourceType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:[Lcom/google/auth/oauth2/IdentityPoolCredentialSource$IdentityPoolCredentialSourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/auth/oauth2/IdentityPoolCredentialSource$IdentityPoolCredentialSourceType;

    .line 2
    .line 3
    const-string v1, "FILE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/google/auth/oauth2/IdentityPoolCredentialSource$IdentityPoolCredentialSourceType;

    .line 10
    .line 11
    const-string v3, "URL"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lcom/google/auth/oauth2/IdentityPoolCredentialSource$IdentityPoolCredentialSourceType;

    .line 18
    .line 19
    const-string v5, "CERTIFICATE"

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x3

    .line 26
    new-array v5, v5, [Lcom/google/auth/oauth2/IdentityPoolCredentialSource$IdentityPoolCredentialSourceType;

    .line 27
    .line 28
    aput-object v0, v5, v2

    .line 29
    .line 30
    aput-object v1, v5, v4

    .line 31
    .line 32
    aput-object v3, v5, v6

    .line 33
    .line 34
    sput-object v5, Lcom/google/auth/oauth2/IdentityPoolCredentialSource$IdentityPoolCredentialSourceType;->c:[Lcom/google/auth/oauth2/IdentityPoolCredentialSource$IdentityPoolCredentialSourceType;

    .line 35
    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/auth/oauth2/IdentityPoolCredentialSource$IdentityPoolCredentialSourceType;
    .locals 1

    .line 1
    const-class v0, Lcom/google/auth/oauth2/IdentityPoolCredentialSource$IdentityPoolCredentialSourceType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/auth/oauth2/IdentityPoolCredentialSource$IdentityPoolCredentialSourceType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/auth/oauth2/IdentityPoolCredentialSource$IdentityPoolCredentialSourceType;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/auth/oauth2/IdentityPoolCredentialSource$IdentityPoolCredentialSourceType;->c:[Lcom/google/auth/oauth2/IdentityPoolCredentialSource$IdentityPoolCredentialSourceType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/auth/oauth2/IdentityPoolCredentialSource$IdentityPoolCredentialSourceType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/auth/oauth2/IdentityPoolCredentialSource$IdentityPoolCredentialSourceType;

    .line 8
    .line 9
    return-object v0
.end method
