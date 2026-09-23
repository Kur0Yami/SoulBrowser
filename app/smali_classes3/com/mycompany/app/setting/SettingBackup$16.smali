.class Lcom/mycompany/app/setting/SettingBackup$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingBackup;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingBackup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingBackup$16;->c:Lcom/mycompany/app/setting/SettingBackup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    sget p1, Lcom/mycompany/app/setting/SettingBackup;->l2:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingBackup$16;->c:Lcom/mycompany/app/setting/SettingBackup;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingBackup;->f2:Lcom/mycompany/app/dialog/DialogBackupLoad;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogBackupLoad;->dismiss()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p1, Lcom/mycompany/app/setting/SettingBackup;->f2:Lcom/mycompany/app/dialog/DialogBackupLoad;

    .line 14
    .line 15
    :cond_0
    iget-boolean v0, p1, Lcom/mycompany/app/setting/SettingBackup;->d2:Z

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    new-instance v0, Lcom/mycompany/app/setting/SettingBackup$16$1;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingBackup$16$1;-><init>(Lcom/mycompany/app/setting/SettingBackup$16;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
