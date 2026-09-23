.class Lcom/mycompany/app/dialog/DialogTabMain$41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/quick/TabSubView$TabSubListener;


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public d:I

.field public e:Z

.field public final synthetic f:Lcom/mycompany/app/dialog/DialogTabMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$41;->f:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$41;->f:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogTabMain;->x(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iput-wide p1, v1, Lcom/mycompany/app/web/WebTabAdapter;->l:J

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabMain;->O()V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->v0:Z

    .line 19
    .line 20
    return-void
.end method

.method public final b(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$41;->f:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->I:Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogTabMain;->x(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebTabAdapter;->Q()V

    .line 18
    .line 19
    .line 20
    iput-wide p2, v1, Lcom/mycompany/app/web/WebTabAdapter;->l:J

    .line 21
    .line 22
    const/4 p2, 0x1

    .line 23
    invoke-virtual {v1, p2}, Lcom/mycompany/app/web/WebTabAdapter;->T(Z)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p1}, Lcom/mycompany/app/dialog/DialogTabMain;->t(Lcom/mycompany/app/dialog/DialogTabMain;I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final c(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$41;->f:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->I:Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogTabMain;->x(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebTabAdapter;->T(Z)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/mycompany/app/dialog/DialogTabMain;->t(Lcom/mycompany/app/dialog/DialogTabMain;I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$41;->f:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/mycompany/app/dialog/DialogTabMain;->v(Lcom/mycompany/app/dialog/DialogTabMain;IZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final e(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$41;->f:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->I:Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogTabMain;->x(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    :goto_0
    return-void

    .line 17
    :cond_1
    invoke-virtual {v1, p1, p2}, Lcom/mycompany/app/web/WebTabAdapter;->O(II)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabMain;->O()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final f(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$41;->f:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->k1:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->k1:Z

    .line 10
    .line 11
    iput p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$41;->d:I

    .line 12
    .line 13
    new-instance p1, Lcom/mycompany/app/dialog/DialogTabMain$41$3;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogTabMain$41$3;-><init>(Lcom/mycompany/app/dialog/DialogTabMain$41;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogNormal;->m(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$41;->f:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->I:Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMain$41$2;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogTabMain$41$2;-><init>(Lcom/mycompany/app/dialog/DialogTabMain$41;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogNormal;->m(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final h(IZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$41;->f:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->j1:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->j1:Z

    .line 10
    .line 11
    iput p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$41;->a:I

    .line 12
    .line 13
    iput-boolean p2, p0, Lcom/mycompany/app/dialog/DialogTabMain$41;->b:Z

    .line 14
    .line 15
    iput-boolean p3, p0, Lcom/mycompany/app/dialog/DialogTabMain$41;->c:Z

    .line 16
    .line 17
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->I:Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_1
    new-instance p1, Lcom/mycompany/app/dialog/DialogTabMain$41$1;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Lcom/mycompany/app/dialog/DialogTabMain$41$1;-><init>(Lcom/mycompany/app/dialog/DialogTabMain$41;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogNormal;->m(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    sget-object v0, Lcom/mycompany/app/dialog/DialogTabMain;->l1:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$41;->f:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabMain;->D()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
