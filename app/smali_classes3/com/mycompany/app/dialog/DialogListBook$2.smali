.class Lcom/mycompany/app/dialog/DialogListBook$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogListBook;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogListBook;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogListBook$2;->c:Lcom/mycompany/app/dialog/DialogListBook;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogListBook$2;->c:Lcom/mycompany/app/dialog/DialogListBook;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogListBook;->H:Lcom/mycompany/app/main/MainListView$ListViewConfig;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogListBook;->J:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogListBook;->H:Lcom/mycompany/app/main/MainListView$ListViewConfig;

    .line 9
    .line 10
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogListBook;->J:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 11
    .line 12
    if-eqz v1, :cond_5

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogListBook;->w:Lcom/mycompany/app/main/MainActivity;

    .line 18
    .line 19
    if-eqz v3, :cond_5

    .line 20
    .line 21
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogListBook;->x:Landroid/content/Context;

    .line 22
    .line 23
    if-nez v4, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v5, 0x1

    .line 27
    iput-boolean v5, v1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->b:Z

    .line 28
    .line 29
    iput-boolean v5, v1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->c:Z

    .line 30
    .line 31
    iput-object v2, v1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->e:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 32
    .line 33
    sget v2, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 34
    .line 35
    iput v2, v1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->g:I

    .line 36
    .line 37
    iput-boolean v5, v1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->h:Z

    .line 38
    .line 39
    iput-boolean v5, v1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->j:Z

    .line 40
    .line 41
    iput-boolean v5, v1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->k:Z

    .line 42
    .line 43
    iget v2, v0, Lcom/mycompany/app/dialog/DialogListBook;->y:I

    .line 44
    .line 45
    const/16 v6, 0x1a

    .line 46
    .line 47
    if-ne v2, v6, :cond_2

    .line 48
    .line 49
    iput-boolean v5, v1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->i:Z

    .line 50
    .line 51
    :cond_2
    iget v2, v1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 52
    .line 53
    if-nez v2, :cond_3

    .line 54
    .line 55
    sget v2, Lnet/kaki87/soul2/testing/R$string;->bookmark:I

    .line 56
    .line 57
    iput v2, v1, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 58
    .line 59
    :cond_3
    new-instance v2, Lcom/mycompany/app/main/MainListView;

    .line 60
    .line 61
    new-instance v5, Lcom/mycompany/app/dialog/DialogListBook$3;

    .line 62
    .line 63
    invoke-direct {v5, v0}, Lcom/mycompany/app/dialog/DialogListBook$3;-><init>(Lcom/mycompany/app/dialog/DialogListBook;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {v2, v3, v4, v1, v5}, Lcom/mycompany/app/main/MainListView;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/content/Context;Lcom/mycompany/app/main/MainListView$ListViewConfig;Lcom/mycompany/app/main/MainListListener;)V

    .line 67
    .line 68
    .line 69
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogListBook;->D:Lcom/mycompany/app/main/MainListView;

    .line 70
    .line 71
    iput-object v0, v2, Lcom/mycompany/app/main/MainListView;->V0:Lcom/mycompany/app/view/MyDialogNormal;

    .line 72
    .line 73
    new-instance v1, Lcom/mycompany/app/dialog/DialogListBook$4;

    .line 74
    .line 75
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogListBook$4;-><init>(Lcom/mycompany/app/dialog/DialogListBook;)V

    .line 76
    .line 77
    .line 78
    iput-object v1, v2, Lcom/mycompany/app/main/MainListView;->y1:Lcom/mycompany/app/main/MainListView$DcChangeListener;

    .line 79
    .line 80
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 81
    .line 82
    if-nez v1, :cond_4

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    new-instance v2, Lcom/mycompany/app/dialog/DialogListBook$5;

    .line 86
    .line 87
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogListBook$5;-><init>(Lcom/mycompany/app/dialog/DialogListBook;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    .line 92
    .line 93
    :cond_5
    :goto_0
    return-void
.end method
