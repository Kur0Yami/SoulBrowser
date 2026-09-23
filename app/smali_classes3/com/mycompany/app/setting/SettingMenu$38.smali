.class Lcom/mycompany/app/setting/SettingMenu$38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMenu$38;->c:Lcom/mycompany/app/setting/SettingMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingMenu;->s2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu$38;->c:Lcom/mycompany/app/setting/SettingMenu;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingMenu;->S0()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->I1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->T1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-boolean v1, v0, Lcom/mycompany/app/setting/SettingMenu;->p2:Z

    .line 23
    .line 24
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 25
    .line 26
    if-ne v1, v2, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    iput-boolean v2, v0, Lcom/mycompany/app/setting/SettingMenu;->p2:Z

    .line 30
    .line 31
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 32
    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 41
    .line 42
    if-eqz v3, :cond_4

    .line 43
    .line 44
    const/high16 v3, -0x1000000

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    const v3, -0x70708

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyMainRelative;->b(Landroid/view/Window;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingMenu;->T0()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/mycompany/app/setting/CastActivity;->A0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    :catch_0
    :goto_1
    return-void
.end method
