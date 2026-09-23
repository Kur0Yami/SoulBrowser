.class Lcom/mycompany/app/setting/SettingBackup$16$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingBackup$16;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingBackup$16;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingBackup$16$1;->c:Lcom/mycompany/app/setting/SettingBackup$16;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingBackup$16$1;->c:Lcom/mycompany/app/setting/SettingBackup$16;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingBackup$16;->c:Lcom/mycompany/app/setting/SettingBackup;

    .line 4
    .line 5
    sget v1, Lcom/mycompany/app/setting/SettingBackup;->l2:I

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v1, v2}, Lcom/mycompany/app/main/MainUtil;->c7(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
