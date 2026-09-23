.class Lcom/mycompany/app/main/MainListView2$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2$34;->c:Lcom/mycompany/app/main/MainListView2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView2$34;->c:Lcom/mycompany/app/main/MainListView2;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainListView2;->E0:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->z0:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->o:Lcom/mycompany/app/view/MyHeaderView;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->A0:Lcom/mycompany/app/view/MyEditPure;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->A0:Lcom/mycompany/app/view/MyEditPure;

    .line 23
    .line 24
    new-instance v3, Lcom/mycompany/app/main/MainListView2$35;

    .line 25
    .line 26
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/MainListView2$35;-><init>(Lcom/mycompany/app/main/MainListView2;)V

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
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView2;->S:Lcom/mycompany/app/list/ListTask;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-virtual {v1, v3}, Lcom/mycompany/app/list/ListTask;->j(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iput-boolean v2, v0, Lcom/mycompany/app/main/MainListView2;->V0:Z

    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    :goto_0
    iput-boolean v2, v0, Lcom/mycompany/app/main/MainListView2;->V0:Z

    .line 46
    .line 47
    return-void
.end method
