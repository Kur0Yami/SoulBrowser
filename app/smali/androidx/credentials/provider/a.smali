.class public abstract synthetic Landroidx/credentials/provider/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;)Landroid/credentials/ClearCredentialStateException;
    .locals 1

    .line 1
    new-instance v0, Landroid/credentials/ClearCredentialStateException;

    invoke-direct {v0, p0, p1}, Landroid/credentials/ClearCredentialStateException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;)Landroid/credentials/CreateCredentialException;
    .locals 1

    .line 1
    new-instance v0, Landroid/credentials/CreateCredentialException;

    invoke-direct {v0, p0, p1}, Landroid/credentials/CreateCredentialException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic c(Ljava/lang/String;Ljava/lang/String;)Landroid/credentials/GetCredentialException;
    .locals 1

    .line 1
    new-instance v0, Landroid/credentials/GetCredentialException;

    invoke-direct {v0, p0, p1}, Landroid/credentials/GetCredentialException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic d(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/service/credentials/BeginGetCredentialOption;
    .locals 1

    .line 1
    new-instance v0, Landroid/service/credentials/BeginGetCredentialOption;

    invoke-direct {v0, p0, p2, p1}, Landroid/service/credentials/BeginGetCredentialOption;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static synthetic e()V
    .locals 1

    .line 1
    new-instance v0, Landroid/credentials/CreateCredentialException;

    return-void
.end method

.method public static synthetic f()V
    .locals 1

    .line 1
    new-instance v0, Landroid/credentials/GetCredentialException;

    return-void
.end method

.method public static synthetic g()V
    .locals 1

    .line 1
    new-instance v0, Landroid/credentials/ClearCredentialStateException;

    return-void
.end method

.method public static synthetic h()V
    .locals 1

    .line 1
    new-instance v0, Landroid/service/credentials/BeginGetCredentialOption;

    return-void
.end method
