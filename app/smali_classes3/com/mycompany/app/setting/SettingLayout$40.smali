.class Lcom/mycompany/app/setting/SettingLayout$40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingLayout;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingLayout$40;->c:Lcom/mycompany/app/setting/SettingLayout;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLayout$40;->c:Lcom/mycompany/app/setting/SettingLayout;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->O1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->h2:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-boolean v1, v0, Lcom/mycompany/app/setting/SettingLayout;->G2:Z

    .line 18
    .line 19
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 20
    .line 21
    if-ne v1, v2, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    iput-boolean v2, v0, Lcom/mycompany/app/setting/SettingLayout;->G2:Z

    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 27
    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 36
    .line 37
    if-eqz v3, :cond_4

    .line 38
    .line 39
    const/high16 v3, -0x1000000

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_4
    const v3, -0x70708

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyMainRelative;->b(Landroid/view/Window;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingLayout;->Y0()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingLayout;->W0()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/mycompany/app/setting/CastActivity;->A0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    :catch_0
    :goto_1
    return-void
.end method
