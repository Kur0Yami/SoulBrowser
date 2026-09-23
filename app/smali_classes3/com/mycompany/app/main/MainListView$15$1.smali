.class Lcom/mycompany/app/main/MainListView$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListView$15;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView$15;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$15$1;->c:Lcom/mycompany/app/main/MainListView$15;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$15$1;->c:Lcom/mycompany/app/main/MainListView$15;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView$15;->c:Lcom/mycompany/app/main/MainListView;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, v1, Lcom/mycompany/app/main/MainListView;->O:Lcom/mycompany/app/view/MyScrollBar;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyScrollBar;->o()V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView$15;->c:Lcom/mycompany/app/main/MainListView;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {v1, v2}, Lcom/mycompany/app/main/MainListView;->o(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView$15;->c:Lcom/mycompany/app/main/MainListView;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListView;->l()V

    .line 26
    .line 27
    .line 28
    return-void
.end method
