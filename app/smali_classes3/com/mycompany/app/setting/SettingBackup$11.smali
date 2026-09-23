.class Lcom/mycompany/app/setting/SettingBackup$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/credentials/CredentialManagerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/credentials/CredentialManagerCallback<",
        "Ljava/lang/Void;",
        "Landroidx/credentials/exceptions/ClearCredentialException;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingBackup;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingBackup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingBackup$11;->a:Lcom/mycompany/app/setting/SettingBackup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/credentials/exceptions/ClearCredentialException;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingBackup$11;->a:Lcom/mycompany/app/setting/SettingBackup;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingBackup$11$2;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingBackup$11$2;-><init>(Lcom/mycompany/app/setting/SettingBackup$11;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup$11;->a:Lcom/mycompany/app/setting/SettingBackup;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lcom/mycompany/app/setting/SettingBackup;->O0(Lcom/mycompany/app/setting/SettingBackup;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingBackup$11$1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingBackup$11$1;-><init>(Lcom/mycompany/app/setting/SettingBackup$11;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method
