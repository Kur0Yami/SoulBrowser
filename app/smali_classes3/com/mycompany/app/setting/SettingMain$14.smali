.class Lcom/mycompany/app/setting/SettingMain$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMain$14;->c:Lcom/mycompany/app/setting/SettingMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMain$14;->c:Lcom/mycompany/app/setting/SettingMain;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/setting/SettingMain;->l2:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMain;->g2:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->F1:Lcom/mycompany/app/view/MyHeaderView;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMain;->h2:Lcom/mycompany/app/view/MyEditPure;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMain;->h2:Lcom/mycompany/app/view/MyEditPure;

    .line 23
    .line 24
    new-instance v3, Lcom/mycompany/app/setting/SettingMain$15;

    .line 25
    .line 26
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingMain$15;-><init>(Lcom/mycompany/app/setting/SettingMain;)V

    .line 27
    .line 28
    .line 29
    const-wide/16 v4, 0xc8

    .line 30
    .line 31
    invoke-virtual {v1, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Lcom/mycompany/app/setting/SettingMain;->R0(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iput-boolean v2, v0, Lcom/mycompany/app/setting/SettingMain;->B2:Z

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    :goto_0
    iput-boolean v2, v0, Lcom/mycompany/app/setting/SettingMain;->B2:Z

    .line 42
    .line 43
    return-void
.end method
