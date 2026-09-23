.class Lcom/mycompany/app/main/list/MainListImage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/list/MainListImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListImage$1;->c:Lcom/mycompany/app/main/list/MainListImage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListImage$1;->c:Lcom/mycompany/app/main/list/MainListImage;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListImage;->H1:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/main/list/MainListImage;->H1:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/main/list/MainListImage;->F1:Lcom/mycompany/app/view/MyMainRelative;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_1
    iget v2, v0, Lcom/mycompany/app/main/list/MainListImage;->D1:I

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    if-ne v2, v3, :cond_2

    .line 20
    .line 21
    sget v3, Lnet/kaki87/soul2/testing/R$string;->pdf:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/4 v3, 0x3

    .line 25
    if-ne v2, v3, :cond_3

    .line 26
    .line 27
    sget v3, Lnet/kaki87/soul2/testing/R$string;->zip:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    sget v3, Lnet/kaki87/soul2/testing/R$string;->album:I

    .line 31
    .line 32
    :goto_0
    new-instance v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;

    .line 33
    .line 34
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    const/16 v5, 0xc

    .line 38
    .line 39
    const/4 v6, 0x1

    .line 40
    if-ne v2, v5, :cond_4

    .line 41
    .line 42
    iput v6, v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;->a:I

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_4
    iput v2, v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;->a:I

    .line 46
    .line 47
    :goto_1
    iput-boolean v6, v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;->d:Z

    .line 48
    .line 49
    iput-object v1, v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;->e:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 50
    .line 51
    iput v3, v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 52
    .line 53
    sget v1, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 54
    .line 55
    iput v1, v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;->g:I

    .line 56
    .line 57
    iput-boolean v6, v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;->h:Z

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    iput-boolean v1, v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;->j:Z

    .line 61
    .line 62
    iput-boolean v1, v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;->k:Z

    .line 63
    .line 64
    new-instance v1, Lcom/mycompany/app/main/MainListView;

    .line 65
    .line 66
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 67
    .line 68
    new-instance v3, Lcom/mycompany/app/main/list/MainListImage$2;

    .line 69
    .line 70
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/list/MainListImage$2;-><init>(Lcom/mycompany/app/main/list/MainListImage;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {v1, v0, v2, v4, v3}, Lcom/mycompany/app/main/MainListView;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/content/Context;Lcom/mycompany/app/main/MainListView$ListViewConfig;Lcom/mycompany/app/main/MainListListener;)V

    .line 74
    .line 75
    .line 76
    iput-object v1, v0, Lcom/mycompany/app/main/list/MainListImage;->G1:Lcom/mycompany/app/main/MainListView;

    .line 77
    .line 78
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 79
    .line 80
    if-nez v1, :cond_5

    .line 81
    .line 82
    :goto_2
    return-void

    .line 83
    :cond_5
    new-instance v2, Lcom/mycompany/app/main/list/MainListImage$3;

    .line 84
    .line 85
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/list/MainListImage$3;-><init>(Lcom/mycompany/app/main/list/MainListImage;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    .line 90
    .line 91
    return-void
.end method
