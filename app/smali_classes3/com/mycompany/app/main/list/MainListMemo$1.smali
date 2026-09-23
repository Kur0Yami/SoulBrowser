.class Lcom/mycompany/app/main/list/MainListMemo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/list/MainListMemo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListMemo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListMemo$1;->c:Lcom/mycompany/app/main/list/MainListMemo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListMemo$1;->c:Lcom/mycompany/app/main/list/MainListMemo;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListMemo;->H1:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/main/list/MainListMemo;->H1:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/main/list/MainListMemo;->D1:Lcom/mycompany/app/view/MyMainRelative;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    new-instance v2, Lcom/mycompany/app/main/MainListView$ListViewConfig;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    const/16 v3, 0x25

    .line 22
    .line 23
    iput v3, v2, Lcom/mycompany/app/main/MainListView$ListViewConfig;->a:I

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    iput-boolean v3, v2, Lcom/mycompany/app/main/MainListView$ListViewConfig;->b:Z

    .line 27
    .line 28
    iput-object v1, v2, Lcom/mycompany/app/main/MainListView$ListViewConfig;->e:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 29
    .line 30
    sget v1, Lnet/kaki87/soul2/testing/R$string;->memo_title:I

    .line 31
    .line 32
    iput v1, v2, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 33
    .line 34
    sget v1, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 35
    .line 36
    iput v1, v2, Lcom/mycompany/app/main/MainListView$ListViewConfig;->g:I

    .line 37
    .line 38
    iput-boolean v3, v2, Lcom/mycompany/app/main/MainListView$ListViewConfig;->h:Z

    .line 39
    .line 40
    iput-boolean v3, v2, Lcom/mycompany/app/main/MainListView$ListViewConfig;->i:Z

    .line 41
    .line 42
    iput-boolean v3, v2, Lcom/mycompany/app/main/MainListView$ListViewConfig;->j:Z

    .line 43
    .line 44
    iput-boolean v3, v2, Lcom/mycompany/app/main/MainListView$ListViewConfig;->k:Z

    .line 45
    .line 46
    new-instance v1, Lcom/mycompany/app/main/MainListView2;

    .line 47
    .line 48
    iget-object v3, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 49
    .line 50
    new-instance v4, Lcom/mycompany/app/main/list/MainListMemo$2;

    .line 51
    .line 52
    invoke-direct {v4, v0}, Lcom/mycompany/app/main/list/MainListMemo$2;-><init>(Lcom/mycompany/app/main/list/MainListMemo;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, v0, v3, v2, v4}, Lcom/mycompany/app/main/MainListView2;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/content/Context;Lcom/mycompany/app/main/MainListView$ListViewConfig;Lcom/mycompany/app/main/MainListListener;)V

    .line 56
    .line 57
    .line 58
    iput-object v1, v0, Lcom/mycompany/app/main/list/MainListMemo;->E1:Lcom/mycompany/app/main/MainListView2;

    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 61
    .line 62
    if-nez v1, :cond_2

    .line 63
    .line 64
    :goto_0
    return-void

    .line 65
    :cond_2
    new-instance v2, Lcom/mycompany/app/main/list/MainListMemo$3;

    .line 66
    .line 67
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/list/MainListMemo$3;-><init>(Lcom/mycompany/app/main/list/MainListMemo;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    .line 72
    .line 73
    return-void
.end method
