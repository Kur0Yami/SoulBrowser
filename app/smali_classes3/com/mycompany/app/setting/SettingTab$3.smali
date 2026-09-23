.class Lcom/mycompany/app/setting/SettingTab$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingTab;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingTab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingTab$3;->c:Lcom/mycompany/app/setting/SettingTab;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingTab;->g2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingTab$3;->c:Lcom/mycompany/app/setting/SettingTab;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingTab;->D0()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, v0, Lcom/mycompany/app/setting/SettingActivity;->M1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 17
    .line 18
    new-instance v4, Lcom/mycompany/app/setting/SettingTab$4;

    .line 19
    .line 20
    invoke-direct {v4, v0}, Lcom/mycompany/app/setting/SettingTab$4;-><init>(Lcom/mycompany/app/setting/SettingTab;)V

    .line 21
    .line 22
    .line 23
    check-cast v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    invoke-direct {v1, v2, v5, v3, v4}, Lcom/mycompany/app/setting/SettingListAdapter;-><init>(Ljava/util/ArrayList;ZLandroidx/recyclerview/widget/LinearLayoutManager;Lcom/mycompany/app/setting/SettingListAdapter$SettingListener;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 30
    .line 31
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingActivity;->M0()V

    .line 37
    .line 38
    .line 39
    return-void
.end method
