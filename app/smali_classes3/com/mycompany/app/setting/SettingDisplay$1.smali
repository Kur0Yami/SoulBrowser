.class Lcom/mycompany/app/setting/SettingDisplay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingDisplay;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingDisplay;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingDisplay$1;->c:Lcom/mycompany/app/setting/SettingDisplay;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget-object v0, Lcom/mycompany/app/setting/SettingDisplay;->p2:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay$1;->c:Lcom/mycompany/app/setting/SettingDisplay;

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
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->m7()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/mycompany/app/setting/SettingDisplay$2;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lcom/mycompany/app/setting/SettingDisplay$2;-><init>(Lcom/mycompany/app/setting/SettingDisplay;)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/setting/SettingActivity;->L0(ILcom/mycompany/app/dialog/DialogSetReset$DialogResetListener;)V

    .line 20
    .line 21
    .line 22
    iget-boolean v1, v0, Lcom/mycompany/app/setting/SettingDisplay;->X1:Z

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    new-instance v1, Lcom/mycompany/app/setting/SettingDisplay$3;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Lcom/mycompany/app/setting/SettingDisplay$3;-><init>(Lcom/mycompany/app/setting/SettingDisplay;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/setting/SettingActivity;->K0(ZLandroid/view/View$OnClickListener;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    :goto_0
    return-void

    .line 39
    :cond_2
    new-instance v2, Lcom/mycompany/app/setting/SettingDisplay$4;

    .line 40
    .line 41
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingDisplay$4;-><init>(Lcom/mycompany/app/setting/SettingDisplay;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method
