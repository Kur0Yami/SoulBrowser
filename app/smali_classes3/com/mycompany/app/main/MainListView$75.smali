.class Lcom/mycompany/app/main/MainListView$75;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:I

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:I

.field public final synthetic j:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;IIZZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$75;->j:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/main/MainListView$75;->c:I

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/main/MainListView$75;->f:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/mycompany/app/main/MainListView$75;->g:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/mycompany/app/main/MainListView$75;->h:Z

    .line 13
    .line 14
    iput p6, p0, Lcom/mycompany/app/main/MainListView$75;->i:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$75;->j:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/lit8 v1, v1, 0x2

    .line 13
    .line 14
    iget v2, p0, Lcom/mycompany/app/main/MainListView$75;->c:I

    .line 15
    .line 16
    if-le v2, v1, :cond_1

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-lt v2, v1, :cond_2

    .line 25
    .line 26
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 27
    .line 28
    iget v3, p0, Lcom/mycompany/app/main/MainListView$75;->f:I

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 34
    .line 35
    new-instance v1, Lcom/mycompany/app/main/MainListView$75$1;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainListView$75$1;-><init>(Lcom/mycompany/app/main/MainListView$75;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method
