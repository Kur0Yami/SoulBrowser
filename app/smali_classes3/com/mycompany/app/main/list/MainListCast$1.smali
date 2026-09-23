.class Lcom/mycompany/app/main/list/MainListCast$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/list/MainListCast;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListCast;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListCast$1;->c:Lcom/mycompany/app/main/list/MainListCast;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListCast$1;->c:Lcom/mycompany/app/main/list/MainListCast;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListCast;->M1:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/main/list/MainListCast;->M1:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/main/list/MainListCast;->G1:Lcom/mycompany/app/view/MyMainRelative;

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_1
    sget v2, Lcom/mycompany/app/pref/PrefList;->r:I

    .line 18
    .line 19
    const/4 v3, 0x4

    .line 20
    if-ne v2, v3, :cond_2

    .line 21
    .line 22
    sget v2, Lnet/kaki87/soul2/testing/R$string;->image:I

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const/4 v3, 0x6

    .line 26
    if-ne v2, v3, :cond_3

    .line 27
    .line 28
    sget v2, Lnet/kaki87/soul2/testing/R$string;->audio:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    sget v2, Lnet/kaki87/soul2/testing/R$string;->video:I

    .line 32
    .line 33
    :goto_0
    new-instance v3, Lcom/mycompany/app/main/MainListView$ListViewConfig;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    const/16 v4, 0xd

    .line 39
    .line 40
    iput v4, v3, Lcom/mycompany/app/main/MainListView$ListViewConfig;->a:I

    .line 41
    .line 42
    iput-object v1, v3, Lcom/mycompany/app/main/MainListView$ListViewConfig;->e:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 43
    .line 44
    iput v2, v3, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 45
    .line 46
    sget v1, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 47
    .line 48
    iput v1, v3, Lcom/mycompany/app/main/MainListView$ListViewConfig;->g:I

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    iput-boolean v1, v3, Lcom/mycompany/app/main/MainListView$ListViewConfig;->h:Z

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    iput-boolean v2, v3, Lcom/mycompany/app/main/MainListView$ListViewConfig;->j:Z

    .line 55
    .line 56
    iput-boolean v1, v3, Lcom/mycompany/app/main/MainListView$ListViewConfig;->k:Z

    .line 57
    .line 58
    new-instance v1, Lcom/mycompany/app/main/MainListView;

    .line 59
    .line 60
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 61
    .line 62
    new-instance v4, Lcom/mycompany/app/main/list/MainListCast$2;

    .line 63
    .line 64
    invoke-direct {v4, v0}, Lcom/mycompany/app/main/list/MainListCast$2;-><init>(Lcom/mycompany/app/main/list/MainListCast;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/mycompany/app/main/MainListView;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/content/Context;Lcom/mycompany/app/main/MainListView$ListViewConfig;Lcom/mycompany/app/main/MainListListener;)V

    .line 68
    .line 69
    .line 70
    iput-object v1, v0, Lcom/mycompany/app/main/list/MainListCast;->H1:Lcom/mycompany/app/main/MainListView;

    .line 71
    .line 72
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 73
    .line 74
    const/high16 v2, -0x1000000

    .line 75
    .line 76
    if-eqz v1, :cond_4

    .line 77
    .line 78
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListCast;->I1:Lcom/mycompany/app/view/MyButtonText;

    .line 79
    .line 80
    const v3, -0x50506

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListCast;->I1:Lcom/mycompany/app/view/MyButtonText;

    .line 87
    .line 88
    const v3, -0xd8d8d9

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListCast;->I1:Lcom/mycompany/app/view/MyButtonText;

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListCast;->I1:Lcom/mycompany/app/view/MyButtonText;

    .line 101
    .line 102
    const v2, -0x70708

    .line 103
    .line 104
    .line 105
    const/high16 v3, 0x21000000

    .line 106
    .line 107
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 108
    .line 109
    .line 110
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListCast;->I1:Lcom/mycompany/app/view/MyButtonText;

    .line 111
    .line 112
    new-instance v2, Lcom/mycompany/app/main/list/MainListCast$3;

    .line 113
    .line 114
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/list/MainListCast$3;-><init>(Lcom/mycompany/app/main/list/MainListCast;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 121
    .line 122
    if-nez v1, :cond_5

    .line 123
    .line 124
    :goto_2
    return-void

    .line 125
    :cond_5
    new-instance v2, Lcom/mycompany/app/main/list/MainListCast$4;

    .line 126
    .line 127
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/list/MainListCast$4;-><init>(Lcom/mycompany/app/main/list/MainListCast;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    .line 132
    .line 133
    return-void
.end method
