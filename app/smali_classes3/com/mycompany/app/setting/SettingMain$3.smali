.class Lcom/mycompany/app/setting/SettingMain$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMain$3;->c:Lcom/mycompany/app/setting/SettingMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingMain$3;->c:Lcom/mycompany/app/setting/SettingMain;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/setting/SettingMain;->l2:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p1, Lcom/mycompany/app/setting/SettingMain;->l2:Z

    .line 10
    .line 11
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iput-boolean v0, v1, Lcom/mycompany/app/setting/SettingListAdapter;->i:Z

    .line 16
    .line 17
    :cond_1
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingMain;->g2:Landroid/widget/FrameLayout;

    .line 18
    .line 19
    if-nez v1, :cond_5

    .line 20
    .line 21
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingActivity;->F1:Lcom/mycompany/app/view/MyHeaderView;

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->M5()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iput-boolean v1, p1, Lcom/mycompany/app/setting/SettingMain;->f2:Z

    .line 31
    .line 32
    iget-boolean v1, p1, Lcom/mycompany/app/setting/SettingMain;->B2:Z

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    iput-boolean v0, p1, Lcom/mycompany/app/setting/SettingMain;->B2:Z

    .line 38
    .line 39
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 40
    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    new-instance v1, Lcom/mycompany/app/setting/SettingMain$6;

    .line 45
    .line 46
    invoke-direct {v1, p1}, Lcom/mycompany/app/setting/SettingMain$6;-><init>(Lcom/mycompany/app/setting/SettingMain;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 50
    .line 51
    .line 52
    :cond_5
    :goto_0
    return-void
.end method
