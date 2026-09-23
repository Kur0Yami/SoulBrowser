.class Lcom/mycompany/app/main/list/MainListDown$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/list/MainListDown;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListDown;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListDown$1;->c:Lcom/mycompany/app/main/list/MainListDown;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown$1;->c:Lcom/mycompany/app/main/list/MainListDown;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/list/MainListDown;->P1:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/main/list/MainListDown;->P1:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/main/list/MainListDown;->F1:Lcom/mycompany/app/view/MyMainRelative;

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_1
    sget-object v2, Lcom/mycompany/app/main/MainConst;->j0:[I

    .line 19
    .line 20
    array-length v2, v2

    .line 21
    const/4 v3, 0x0

    .line 22
    move v4, v3

    .line 23
    move v5, v4

    .line 24
    :goto_0
    if-ge v4, v2, :cond_3

    .line 25
    .line 26
    sget-object v6, Lcom/mycompany/app/main/MainConst;->j0:[I

    .line 27
    .line 28
    aget v6, v6, v4

    .line 29
    .line 30
    sget v7, Lcom/mycompany/app/pref/PrefList;->Z0:I

    .line 31
    .line 32
    if-ne v6, v7, :cond_2

    .line 33
    .line 34
    sget-object v5, Lcom/mycompany/app/main/MainConst;->k0:[I

    .line 35
    .line 36
    aget v5, v5, v4

    .line 37
    .line 38
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    if-gtz v5, :cond_4

    .line 42
    .line 43
    sput v3, Lcom/mycompany/app/pref/PrefList;->Z0:I

    .line 44
    .line 45
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 46
    .line 47
    const/4 v4, 0x4

    .line 48
    const-string v5, "mBookDownType"

    .line 49
    .line 50
    invoke-static {v2, v4, v3, v5}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget-object v2, Lcom/mycompany/app/main/MainConst;->k0:[I

    .line 54
    .line 55
    aget v5, v2, v3

    .line 56
    .line 57
    :cond_4
    new-instance v2, Lcom/mycompany/app/main/MainListView$ListViewConfig;

    .line 58
    .line 59
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    const/16 v3, 0x20

    .line 63
    .line 64
    iput v3, v2, Lcom/mycompany/app/main/MainListView$ListViewConfig;->a:I

    .line 65
    .line 66
    const/4 v3, 0x1

    .line 67
    iput-boolean v3, v2, Lcom/mycompany/app/main/MainListView$ListViewConfig;->b:Z

    .line 68
    .line 69
    iput-object v1, v2, Lcom/mycompany/app/main/MainListView$ListViewConfig;->e:Lcom/mycompany/app/main/MainListView$ListViewHolder;

    .line 70
    .line 71
    iput v5, v2, Lcom/mycompany/app/main/MainListView$ListViewConfig;->f:I

    .line 72
    .line 73
    sget v1, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 74
    .line 75
    iput v1, v2, Lcom/mycompany/app/main/MainListView$ListViewConfig;->g:I

    .line 76
    .line 77
    iput-boolean v3, v2, Lcom/mycompany/app/main/MainListView$ListViewConfig;->h:Z

    .line 78
    .line 79
    iput-boolean v3, v2, Lcom/mycompany/app/main/MainListView$ListViewConfig;->j:Z

    .line 80
    .line 81
    iput-boolean v3, v2, Lcom/mycompany/app/main/MainListView$ListViewConfig;->k:Z

    .line 82
    .line 83
    new-instance v1, Lcom/mycompany/app/main/MainListView;

    .line 84
    .line 85
    iget-object v4, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 86
    .line 87
    new-instance v5, Lcom/mycompany/app/main/list/MainListDown$2;

    .line 88
    .line 89
    invoke-direct {v5, v0}, Lcom/mycompany/app/main/list/MainListDown$2;-><init>(Lcom/mycompany/app/main/list/MainListDown;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {v1, v0, v4, v2, v5}, Lcom/mycompany/app/main/MainListView;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/content/Context;Lcom/mycompany/app/main/MainListView$ListViewConfig;Lcom/mycompany/app/main/MainListListener;)V

    .line 93
    .line 94
    .line 95
    iput-object v1, v0, Lcom/mycompany/app/main/list/MainListDown;->G1:Lcom/mycompany/app/main/MainListView;

    .line 96
    .line 97
    iput-boolean v3, v0, Lcom/mycompany/app/main/list/MainListDown;->O1:Z

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    if-nez v1, :cond_5

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_5
    new-instance v2, Lcom/mycompany/app/main/list/MainListDown$4;

    .line 111
    .line 112
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/list/MainListDown$4;-><init>(Lcom/mycompany/app/main/list/MainListDown;)V

    .line 113
    .line 114
    .line 115
    iput-object v2, v1, Lcom/mycompany/app/main/MainApp;->G:Lcom/mycompany/app/main/MainDownSvc$DownListListener;

    .line 116
    .line 117
    iget-boolean v3, v1, Lcom/mycompany/app/main/MainApp;->u:Z

    .line 118
    .line 119
    if-eqz v3, :cond_7

    .line 120
    .line 121
    iget-object v1, v1, Lcom/mycompany/app/main/MainApp;->v:Lcom/mycompany/app/main/MainDownSvc;

    .line 122
    .line 123
    if-nez v1, :cond_6

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_6
    iput-object v2, v1, Lcom/mycompany/app/main/MainDownSvc;->r:Lcom/mycompany/app/main/MainDownSvc$DownListListener;

    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/mycompany/app/main/list/MainListDown$4;->onConnected()V

    .line 129
    .line 130
    .line 131
    :cond_7
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 132
    .line 133
    if-nez v1, :cond_8

    .line 134
    .line 135
    :goto_2
    return-void

    .line 136
    :cond_8
    new-instance v2, Lcom/mycompany/app/main/list/MainListDown$3;

    .line 137
    .line 138
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/list/MainListDown$3;-><init>(Lcom/mycompany/app/main/list/MainListDown;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    .line 143
    .line 144
    return-void
.end method
