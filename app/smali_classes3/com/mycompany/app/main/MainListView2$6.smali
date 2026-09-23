.class Lcom/mycompany/app/main/MainListView2$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListView2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2$6;->c:Lcom/mycompany/app/main/MainListView2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2$6;->c:Lcom/mycompany/app/main/MainListView2;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/main/MainListView2;->E0:Z

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
    iput-boolean v0, p1, Lcom/mycompany/app/main/MainListView2;->E0:Z

    .line 10
    .line 11
    iget-object v1, p1, Lcom/mycompany/app/main/MainListView2;->m:Lcom/mycompany/app/fragment/FragmentTabPath;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x4

    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v1, p1, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iput-boolean v0, v1, Lcom/mycompany/app/main/MainListAdapter2;->n:Z

    .line 24
    .line 25
    :cond_2
    iget-object v1, p1, Lcom/mycompany/app/main/MainListView2;->z0:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    if-nez v1, :cond_6

    .line 28
    .line 29
    iget-object v1, p1, Lcom/mycompany/app/main/MainListView2;->o:Lcom/mycompany/app/view/MyHeaderView;

    .line 30
    .line 31
    if-nez v1, :cond_3

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    iget-boolean v1, p1, Lcom/mycompany/app/main/MainListView2;->V0:Z

    .line 35
    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    iput-boolean v0, p1, Lcom/mycompany/app/main/MainListView2;->V0:Z

    .line 40
    .line 41
    iget-object v0, p1, Lcom/mycompany/app/main/MainListView2;->g:Landroid/widget/RelativeLayout;

    .line 42
    .line 43
    if-nez v0, :cond_5

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_5
    new-instance v1, Lcom/mycompany/app/main/MainListView2$26;

    .line 47
    .line 48
    invoke-direct {v1, p1}, Lcom/mycompany/app/main/MainListView2$26;-><init>(Lcom/mycompany/app/main/MainListView2;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    :cond_6
    :goto_0
    return-void
.end method
