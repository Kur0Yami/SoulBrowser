.class Lcom/mycompany/app/setting/SettingMain$13;
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
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMain$13;->c:Lcom/mycompany/app/setting/SettingMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMain$13;->c:Lcom/mycompany/app/setting/SettingMain;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/setting/SettingMain;->l2:Z

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMain;->g2:Landroid/widget/FrameLayout;

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->F1:Lcom/mycompany/app/view/MyHeaderView;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMain;->h2:Lcom/mycompany/app/view/MyEditPure;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->c5(Landroid/widget/EditText;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMain;->h2:Lcom/mycompany/app/view/MyEditPure;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMain;->h2:Lcom/mycompany/app/view/MyEditPure;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    new-instance v2, Lcom/mycompany/app/setting/SettingMain$14;

    .line 38
    .line 39
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingMain$14;-><init>(Lcom/mycompany/app/setting/SettingMain;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 47
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingMain;->B2:Z

    .line 48
    .line 49
    return-void
.end method
