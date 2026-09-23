.class Lcom/mycompany/app/setting/SettingClean$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingClean;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingClean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingClean$1;->c:Lcom/mycompany/app/setting/SettingClean;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget-object v0, Lcom/mycompany/app/setting/SettingClean;->v2:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingClean$1;->c:Lcom/mycompany/app/setting/SettingClean;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Lcom/mycompany/app/setting/SettingClean$2;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/mycompany/app/setting/SettingClean$2;-><init>(Lcom/mycompany/app/setting/SettingClean;)V

    .line 13
    .line 14
    .line 15
    const/16 v2, 0x10

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/setting/SettingActivity;->L0(ILcom/mycompany/app/dialog/DialogSetReset$DialogResetListener;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/mycompany/app/setting/SettingClean$3;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Lcom/mycompany/app/setting/SettingClean$3;-><init>(Lcom/mycompany/app/setting/SettingClean;)V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/setting/SettingActivity;->K0(ZLandroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    sget-boolean v1, Lcom/mycompany/app/pref/PrefAlbum;->p:Z

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->J1:Lcom/mycompany/app/view/MyButtonImage;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 42
    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    :goto_0
    return-void

    .line 46
    :cond_2
    new-instance v2, Lcom/mycompany/app/setting/SettingClean$4;

    .line 47
    .line 48
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingClean$4;-><init>(Lcom/mycompany/app/setting/SettingClean;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method
