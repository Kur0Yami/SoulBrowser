.class public final enum Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/identity/AuthorizationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResourceParameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic f:[Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    .line 2
    .line 3
    const-string v1, "ACCOUNT_SELECTION_TOKEN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "account_selection_token"

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    .line 12
    .line 13
    const-string v3, "ACCOUNT_SELECTION_STATE"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const-string v5, "account_selection_state"

    .line 17
    .line 18
    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    .line 22
    .line 23
    const-string v5, "PICKER_ALLOW_MULTIPLE"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    const-string v7, "allow_multiple"

    .line 27
    .line 28
    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v5, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    .line 32
    .line 33
    const-string v7, "PICKER_MIMETYPES"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    const-string v9, "mimetypes"

    .line 37
    .line 38
    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v7, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    .line 42
    .line 43
    const-string v9, "PICKER_FILE_IDS"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    const-string v11, "file_ids"

    .line 47
    .line 48
    invoke-direct {v7, v9, v10, v11}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v9, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    .line 52
    .line 53
    const-string v11, "PICKER_OAUTH_TRIGGER"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    const-string v13, "trigger_onepick"

    .line 57
    .line 58
    invoke-direct {v9, v11, v12, v13}, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/4 v11, 0x6

    .line 62
    new-array v11, v11, [Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    .line 63
    .line 64
    aput-object v0, v11, v2

    .line 65
    .line 66
    aput-object v1, v11, v4

    .line 67
    .line 68
    aput-object v3, v11, v6

    .line 69
    .line 70
    aput-object v5, v11, v8

    .line 71
    .line 72
    aput-object v7, v11, v10

    .line 73
    .line 74
    aput-object v9, v11, v12

    .line 75
    .line 76
    sput-object v11, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;->f:[Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    .line 77
    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;->c:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;->f:[Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/gms/auth/api/identity/AuthorizationRequest$ResourceParameter;

    .line 8
    .line 9
    return-object v0
.end method
