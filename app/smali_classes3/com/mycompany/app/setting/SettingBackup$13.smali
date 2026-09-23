.class Lcom/mycompany/app/setting/SettingBackup$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogPrintPage$PathChangeListener;


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
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingBackup$13;->a:Lcom/mycompany/app/setting/SettingBackup;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingBackup;->l2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup$13;->a:Lcom/mycompany/app/setting/SettingBackup;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingBackup;->Q0()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingBackup;->c2:Lcom/mycompany/app/gdrive/GdriveManager;

    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/mycompany/app/setting/SettingBackup;->U0(Ljava/lang/String;Lcom/mycompany/app/gdrive/GdriveManager;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
