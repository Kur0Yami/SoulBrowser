.class Lcom/mycompany/app/dialog/DialogTabMain$38$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMain$38;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain$38;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$38$1;->c:Lcom/mycompany/app/dialog/DialogTabMain$38;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$38$1;->c:Lcom/mycompany/app/dialog/DialogTabMain$38;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$38;->a:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 6
    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->d0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 10
    .line 11
    if-eqz v1, :cond_9

    .line 12
    .line 13
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    iget v3, v2, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 19
    .line 20
    iget-object v4, v2, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    if-ltz v3, :cond_2

    .line 25
    .line 26
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-lt v3, v4, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->h(I)V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_0
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->D:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 39
    .line 40
    if-nez v2, :cond_3

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_3
    new-instance v3, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$16;

    .line 44
    .line 45
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$16;-><init>(Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->c0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 53
    .line 54
    if-eqz v1, :cond_9

    .line 55
    .line 56
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->o:Lcom/mycompany/app/web/WebTabAdapter;

    .line 57
    .line 58
    if-nez v2, :cond_5

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    iget v3, v2, Lcom/mycompany/app/web/WebTabAdapter;->n:I

    .line 62
    .line 63
    iget-object v4, v2, Lcom/mycompany/app/web/WebTabAdapter;->k:Ljava/util/List;

    .line 64
    .line 65
    if-eqz v4, :cond_7

    .line 66
    .line 67
    if-ltz v3, :cond_7

    .line 68
    .line 69
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-lt v3, v4, :cond_6

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_6
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->h(I)V

    .line 77
    .line 78
    .line 79
    :cond_7
    :goto_1
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->D:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 80
    .line 81
    iget-object v2, v2, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 82
    .line 83
    if-nez v2, :cond_8

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_8
    new-instance v3, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$16;

    .line 87
    .line 88
    invoke-direct {v3, v1}, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid$16;-><init>(Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    .line 93
    .line 94
    :cond_9
    :goto_2
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 95
    .line 96
    if-nez v0, :cond_a

    .line 97
    .line 98
    return-void

    .line 99
    :cond_a
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMain$38$1$1;

    .line 100
    .line 101
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogTabMain$38$1$1;-><init>(Lcom/mycompany/app/dialog/DialogTabMain$38$1;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    .line 106
    .line 107
    return-void
.end method
