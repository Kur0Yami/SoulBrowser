.class Lcom/mycompany/app/main/MainListAdapter$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

.field public final synthetic f:Lcom/mycompany/app/main/MainItem$ChildItem;

.field public final synthetic g:Lcom/mycompany/app/main/MainListAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListAdapter;Lcom/mycompany/app/main/MainListAdapter$ChildHolder;Lcom/mycompany/app/main/MainItem$ChildItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListAdapter$9;->g:Lcom/mycompany/app/main/MainListAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainListAdapter$9;->c:Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/main/MainListAdapter$9;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainListAdapter$9;->c:Lcom/mycompany/app/main/MainListAdapter$ChildHolder;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->r:Lcom/mycompany/app/view/MySwitchView;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->r:Lcom/mycompany/app/view/MySwitchView;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MySwitchView;->setEnabled(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter$9;->f:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 21
    .line 22
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->M:Z

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    xor-int/2addr v1, v2

    .line 26
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainItem$ChildItem;->M:Z

    .line 27
    .line 28
    iget-object p1, p1, Lcom/mycompany/app/main/MainListAdapter$ChildHolder;->r:Lcom/mycompany/app/view/MySwitchView;

    .line 29
    .line 30
    invoke-virtual {p1, v1, v2}, Lcom/mycompany/app/view/MySwitchView;->b(ZZ)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/main/MainListAdapter$9;->g:Lcom/mycompany/app/main/MainListAdapter;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/mycompany/app/main/MainListAdapter;->d:Landroid/content/Context;

    .line 36
    .line 37
    new-instance v0, Lcom/mycompany/app/main/MainListAdapter$9$1;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainListAdapter$9$1;-><init>(Lcom/mycompany/app/main/MainListAdapter$9;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    return-void
.end method
