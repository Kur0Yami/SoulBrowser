.class Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/quick/TabDragHelper$TabDragListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$7;->a:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$7;->a:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->D:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-ne p1, v3, :cond_0

    .line 8
    .line 9
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZone;->E:Z

    .line 10
    .line 11
    iput-boolean p1, v1, Lcom/mycompany/app/dialog/DialogTabMain;->w0:Z

    .line 12
    .line 13
    iput-boolean v2, v1, Lcom/mycompany/app/dialog/DialogTabMain;->C0:Z

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v4, 0x2

    .line 17
    if-ne p1, v4, :cond_1

    .line 18
    .line 19
    iput-boolean v2, v1, Lcom/mycompany/app/dialog/DialogTabMain;->w0:Z

    .line 20
    .line 21
    iput-boolean v3, v1, Lcom/mycompany/app/dialog/DialogTabMain;->C0:Z

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    if-nez p1, :cond_4

    .line 25
    .line 26
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 27
    .line 28
    if-eqz p1, :cond_4

    .line 29
    .line 30
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogTabMain;->I:Lcom/mycompany/app/dialog/DialogTabMain$ListTabListener;

    .line 31
    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget-object p1, v1, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 36
    .line 37
    if-nez p1, :cond_3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    new-instance v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$7$1;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$7$1;-><init>(Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$7;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    :cond_4
    :goto_0
    return-void
.end method

.method public final b(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$7;->a:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/mycompany/app/web/WebTabAdapter;->S(II)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final c(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$7;->a:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->D:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->a:Z

    .line 11
    .line 12
    sget-object v3, Lcom/mycompany/app/dialog/DialogTabMain;->l1:[I

    .line 13
    .line 14
    const/4 v3, -0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-virtual {v1, v3, v4, v2}, Lcom/mycompany/app/dialog/DialogTabMain;->N(IZZ)V

    .line 17
    .line 18
    .line 19
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 22
    .line 23
    invoke-virtual {v2, v0, p1, p2}, Lcom/mycompany/app/web/WebTabAdapter;->M(Landroid/view/View;II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogTabMain;->O()V

    .line 27
    .line 28
    .line 29
    iput-boolean v4, v1, Lcom/mycompany/app/dialog/DialogTabMain;->w0:Z

    .line 30
    .line 31
    iput-boolean v4, v1, Lcom/mycompany/app/dialog/DialogTabMain;->C0:Z

    .line 32
    .line 33
    return-void
.end method

.method public final d(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$7;->a:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->D:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 4
    .line 5
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogTabMain;->w0:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-boolean v2, v1, Lcom/mycompany/app/dialog/DialogTabMain;->w0:Z

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->g(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final e(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$7;->a:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->D:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 4
    .line 5
    iput p1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->x0:I

    .line 6
    .line 7
    return-void
.end method
