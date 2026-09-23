.class Lcom/mycompany/app/setting/SettingMenu$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMenu$8;->c:Lcom/mycompany/app/setting/SettingMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingMenu$8;->c:Lcom/mycompany/app/setting/SettingMenu;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingMenu;->O1:Lcom/mycompany/app/view/MyButtonImage;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingMenu;->P0()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingMenu;->j2:Lcom/mycompany/app/dialog/DialogSetColumn;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetColumn;->dismiss()V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p1, Lcom/mycompany/app/setting/SettingMenu;->j2:Lcom/mycompany/app/dialog/DialogSetColumn;

    .line 28
    .line 29
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogSetColumn;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-direct {v0, p1, v1}, Lcom/mycompany/app/dialog/DialogSetColumn;-><init>(Lcom/mycompany/app/main/MainActivity;Z)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p1, Lcom/mycompany/app/setting/SettingMenu;->j2:Lcom/mycompany/app/dialog/DialogSetColumn;

    .line 36
    .line 37
    new-instance v1, Lcom/mycompany/app/setting/SettingMenu$31;

    .line 38
    .line 39
    invoke-direct {v1, p1}, Lcom/mycompany/app/setting/SettingMenu$31;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
