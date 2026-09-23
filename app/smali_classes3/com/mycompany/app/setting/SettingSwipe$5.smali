.class Lcom/mycompany/app/setting/SettingSwipe$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingSwipe;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSwipe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSwipe$5;->c:Lcom/mycompany/app/setting/SettingSwipe;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingSwipe$5;->c:Lcom/mycompany/app/setting/SettingSwipe;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingSwipe;->I1:Lcom/mycompany/app/view/MyButtonImage;

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
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingSwipe;->O1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingSwipe;->P1:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingSwipe;->Q1:Lcom/mycompany/app/view/MyDialogBottom;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_3
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingSwipe;->D0()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 31
    .line 32
    if-nez v0, :cond_4

    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :cond_4
    new-instance v1, Lcom/mycompany/app/setting/SettingSwipe$18;

    .line 36
    .line 37
    invoke-direct {v1, p1}, Lcom/mycompany/app/setting/SettingSwipe$18;-><init>(Lcom/mycompany/app/setting/SettingSwipe;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method
