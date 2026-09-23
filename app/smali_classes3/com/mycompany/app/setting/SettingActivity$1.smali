.class Lcom/mycompany/app/setting/SettingActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingActivity$1;->c:Lcom/mycompany/app/setting/SettingActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingActivity$1;->c:Lcom/mycompany/app/setting/SettingActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 9
    .line 10
    new-instance v2, Lcom/mycompany/app/setting/SettingActivity$2;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingActivity$2;-><init>(Lcom/mycompany/app/setting/SettingActivity;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :cond_1
    new-instance v2, Lcom/mycompany/app/setting/SettingActivity$3;

    .line 24
    .line 25
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingActivity$3;-><init>(Lcom/mycompany/app/setting/SettingActivity;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
