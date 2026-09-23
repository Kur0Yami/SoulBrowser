.class Lcom/mycompany/app/main/list/MainListAlbum$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/list/MainListAlbum;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListAlbum;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListAlbum$1;->c:Lcom/mycompany/app/main/list/MainListAlbum;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListAlbum$1;->c:Lcom/mycompany/app/main/list/MainListAlbum;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->T1:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/main/list/MainListAlbum;->T1:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/main/list/MainListAlbum;->H1:Lcom/mycompany/app/view/MyMainRelative;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_1
    iget v2, v0, Lcom/mycompany/app/main/list/MainListAlbum;->G1:I

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
    iput v2, v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;->a:I

    .line 38
    .line 39
    iput-object v1, v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;->e:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 40
    .line 41
    iput v3, v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 42
    .line 43
    sget v1, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 44
    .line 45
    iput v1, v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;->g:I

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    iput-boolean v1, v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;->h:Z

    .line 49
    .line 50
    iput-boolean v1, v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;->j:Z

    .line 51
    .line 52
    iput-boolean v1, v4, Lcom/mycompany/app/main/MainListView$ListViewConfig;->k:Z

    .line 53
    .line 54
    new-instance v1, Lcom/mycompany/app/main/MainListView;

    .line 55
    .line 56
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 57
    .line 58
    new-instance v3, Lcom/mycompany/app/main/list/MainListAlbum$2;

    .line 59
    .line 60
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/list/MainListAlbum$2;-><init>(Lcom/mycompany/app/main/list/MainListAlbum;)V

    .line 61
    .line 62
    .line 63
    invoke-direct {v1, v0, v2, v4, v3}, Lcom/mycompany/app/main/MainListView;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/content/Context;Lcom/mycompany/app/main/MainListView$ListViewConfig;Lcom/mycompany/app/main/MainListListener;)V

    .line 64
    .line 65
    .line 66
    iput-object v1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->I1:Lcom/mycompany/app/main/MainListView;

    .line 67
    .line 68
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 69
    .line 70
    const/high16 v2, -0x1000000

    .line 71
    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->J1:Lcom/mycompany/app/view/MyButtonText;

    .line 75
    .line 76
    const v3, -0x50506

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    .line 81
    .line 82
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->J1:Lcom/mycompany/app/view/MyButtonText;

    .line 83
    .line 84
    const v3, -0xd8d8d9

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->J1:Lcom/mycompany/app/view/MyButtonText;

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    .line 95
    .line 96
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->J1:Lcom/mycompany/app/view/MyButtonText;

    .line 97
    .line 98
    const v2, -0x70708

    .line 99
    .line 100
    .line 101
    const/high16 v3, 0x21000000

    .line 102
    .line 103
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 104
    .line 105
    .line 106
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListAlbum;->J1:Lcom/mycompany/app/view/MyButtonText;

    .line 107
    .line 108
    new-instance v2, Lcom/mycompany/app/main/list/MainListAlbum$3;

    .line 109
    .line 110
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/list/MainListAlbum$3;-><init>(Lcom/mycompany/app/main/list/MainListAlbum;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 117
    .line 118
    if-nez v1, :cond_5

    .line 119
    .line 120
    :goto_2
    return-void

    .line 121
    :cond_5
    new-instance v2, Lcom/mycompany/app/main/list/MainListAlbum$4;

    .line 122
    .line 123
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/list/MainListAlbum$4;-><init>(Lcom/mycompany/app/main/list/MainListAlbum;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    .line 128
    .line 129
    return-void
.end method
