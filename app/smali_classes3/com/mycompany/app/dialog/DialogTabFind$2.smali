.class Lcom/mycompany/app/dialog/DialogTabFind$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabFind;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabFind;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabFind$2;->c:Lcom/mycompany/app/dialog/DialogTabFind;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabFind$2;->c:Lcom/mycompany/app/dialog/DialogTabFind;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabFind;->k:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogTabFind;->k:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabFind;->a:Lcom/mycompany/app/main/MainActivity;

    .line 12
    .line 13
    if-eqz v2, :cond_5

    .line 14
    .line 15
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogTabFind;->b:Landroid/content/Context;

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    new-instance v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;

    .line 21
    .line 22
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    const/16 v5, 0x2a

    .line 26
    .line 27
    iput v5, v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;->a:I

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    iput-boolean v5, v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;->b:Z

    .line 31
    .line 32
    iput-boolean v5, v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;->c:Z

    .line 33
    .line 34
    iput-object v1, v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;->e:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 35
    .line 36
    sget v1, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 37
    .line 38
    iput v1, v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;->g:I

    .line 39
    .line 40
    iput-boolean v5, v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;->h:Z

    .line 41
    .line 42
    iput-boolean v5, v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;->j:Z

    .line 43
    .line 44
    iput-boolean v5, v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;->k:Z

    .line 45
    .line 46
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabFind;->g:Z

    .line 47
    .line 48
    iput-boolean v1, v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;->l:Z

    .line 49
    .line 50
    new-instance v1, Lcom/mycompany/app/main/MainListView;

    .line 51
    .line 52
    new-instance v5, Lcom/mycompany/app/dialog/DialogTabFind$3;

    .line 53
    .line 54
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogTabFind$3;-><init>(Lcom/mycompany/app/dialog/DialogTabFind;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mycompany/app/main/MainListView;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/content/Context;Lcom/mycompany/app/main/MainListView$ListViewConfig;Lcom/mycompany/app/main/MainListListener;)V

    .line 58
    .line 59
    .line 60
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogTabFind;->f:Lcom/mycompany/app/main/MainListView;

    .line 61
    .line 62
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabFind;->i:Lcom/mycompany/app/view/MyDialogNormal;

    .line 63
    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    iput-object v2, v1, Lcom/mycompany/app/main/MainListView;->V0:Lcom/mycompany/app/view/MyDialogNormal;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabFind;->j:Lcom/mycompany/app/view/MyDialogBottom;

    .line 70
    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    iput-object v2, v1, Lcom/mycompany/app/main/MainListView;->W0:Lcom/mycompany/app/view/MyDialogBottom;

    .line 74
    .line 75
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabFind;->d:Landroid/view/ViewGroup;

    .line 76
    .line 77
    if-nez v1, :cond_4

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    new-instance v2, Lcom/mycompany/app/dialog/DialogTabFind$4;

    .line 81
    .line 82
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTabFind$4;-><init>(Lcom/mycompany/app/dialog/DialogTabFind;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 86
    .line 87
    .line 88
    :cond_5
    :goto_1
    return-void
.end method
