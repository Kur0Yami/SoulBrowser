.class Lcom/mycompany/app/main/MainWebDestroy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainWebDestroy;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainWebDestroy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainWebDestroy$2;->c:Lcom/mycompany/app/main/MainWebDestroy;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainWebDestroy$2;->c:Lcom/mycompany/app/main/MainWebDestroy;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainWebDestroy;->n:Lcom/mycompany/app/main/MainWebDestroy$DelItem;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/main/MainWebDestroy;->n:Lcom/mycompany/app/main/MainWebDestroy$DelItem;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iput-boolean v3, v0, Lcom/mycompany/app/main/MainWebDestroy;->e:Z

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v4, v1, Lcom/mycompany/app/main/MainWebDestroy$DelItem;->b:Landroid/webkit/WebView;

    .line 15
    .line 16
    const-wide/16 v5, 0xc8

    .line 17
    .line 18
    const/4 v7, 0x1

    .line 19
    if-eqz v4, :cond_4

    .line 20
    .line 21
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainWebDestroy;->i:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    new-instance v1, Lcom/mycompany/app/main/MainWebDestroy$DelItem;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v4, v1, Lcom/mycompany/app/main/MainWebDestroy$DelItem;->b:Landroid/webkit/WebView;

    .line 31
    .line 32
    iput-object v1, v0, Lcom/mycompany/app/main/MainWebDestroy;->m:Lcom/mycompany/app/main/MainWebDestroy$DelItem;

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainWebDestroy;->h()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    new-instance v1, Lcom/mycompany/app/main/MainWebDestroy$DelItem;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v4, v1, Lcom/mycompany/app/main/MainWebDestroy$DelItem;->b:Landroid/webkit/WebView;

    .line 47
    .line 48
    iput-object v1, v0, Lcom/mycompany/app/main/MainWebDestroy;->m:Lcom/mycompany/app/main/MainWebDestroy$DelItem;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainWebDestroy;->c()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    iput-boolean v7, v0, Lcom/mycompany/app/main/MainWebDestroy;->f:Z

    .line 55
    .line 56
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->E(Landroid/webkit/WebView;)V

    .line 57
    .line 58
    .line 59
    :try_start_0
    invoke-virtual {v4}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    :catch_0
    iget-object v1, v0, Lcom/mycompany/app/main/MainWebDestroy;->c:Landroid/os/Handler;

    .line 63
    .line 64
    if-nez v1, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    new-instance v2, Lcom/mycompany/app/main/MainWebDestroy$3;

    .line 68
    .line 69
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainWebDestroy$3;-><init>(Lcom/mycompany/app/main/MainWebDestroy;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_4
    iget-object v1, v1, Lcom/mycompany/app/main/MainWebDestroy$DelItem;->c:Lcom/mycompany/app/view/MyAdNative;

    .line 77
    .line 78
    if-eqz v1, :cond_a

    .line 79
    .line 80
    iget-boolean v4, v0, Lcom/mycompany/app/main/MainWebDestroy;->i:Z

    .line 81
    .line 82
    if-eqz v4, :cond_5

    .line 83
    .line 84
    new-instance v2, Lcom/mycompany/app/main/MainWebDestroy$DelItem;

    .line 85
    .line 86
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v1, v2, Lcom/mycompany/app/main/MainWebDestroy$DelItem;->c:Lcom/mycompany/app/view/MyAdNative;

    .line 90
    .line 91
    iput-object v2, v0, Lcom/mycompany/app/main/MainWebDestroy;->m:Lcom/mycompany/app/main/MainWebDestroy$DelItem;

    .line 92
    .line 93
    return-void

    .line 94
    :cond_5
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainWebDestroy;->h()Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_6

    .line 99
    .line 100
    new-instance v2, Lcom/mycompany/app/main/MainWebDestroy$DelItem;

    .line 101
    .line 102
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object v1, v2, Lcom/mycompany/app/main/MainWebDestroy$DelItem;->c:Lcom/mycompany/app/view/MyAdNative;

    .line 106
    .line 107
    iput-object v2, v0, Lcom/mycompany/app/main/MainWebDestroy;->m:Lcom/mycompany/app/main/MainWebDestroy$DelItem;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainWebDestroy;->c()V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_6
    iput-boolean v7, v0, Lcom/mycompany/app/main/MainWebDestroy;->f:Z

    .line 114
    .line 115
    iget-boolean v4, v1, Lcom/mycompany/app/view/MyAdNative;->c:Z

    .line 116
    .line 117
    if-nez v4, :cond_7

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_7
    iput-boolean v3, v1, Lcom/mycompany/app/view/MyAdNative;->c:Z

    .line 121
    .line 122
    iget-object v4, v1, Lcom/mycompany/app/view/MyAdNative;->j:Lcom/mycompany/app/view/MyAdNative$AdNativeListener;

    .line 123
    .line 124
    if-eqz v4, :cond_8

    .line 125
    .line 126
    invoke-interface {v4, v3}, Lcom/mycompany/app/view/MyAdNative$AdNativeListener;->g(Z)V

    .line 127
    .line 128
    .line 129
    iput-object v2, v1, Lcom/mycompany/app/view/MyAdNative;->j:Lcom/mycompany/app/view/MyAdNative$AdNativeListener;

    .line 130
    .line 131
    :cond_8
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->V6(Landroid/view/View;)V

    .line 132
    .line 133
    .line 134
    iget-object v4, v1, Lcom/mycompany/app/view/MyAdNative;->h:Landroid/os/Handler;

    .line 135
    .line 136
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->R6(Landroid/os/Handler;)V

    .line 137
    .line 138
    .line 139
    iput-object v2, v1, Lcom/mycompany/app/view/MyAdNative;->h:Landroid/os/Handler;

    .line 140
    .line 141
    iput-object v2, v1, Lcom/mycompany/app/view/MyAdNative;->m:Landroid/view/View;

    .line 142
    .line 143
    iput-object v2, v1, Lcom/mycompany/app/view/MyAdNative;->n:Landroid/widget/ImageView;

    .line 144
    .line 145
    iput-object v2, v1, Lcom/mycompany/app/view/MyAdNative;->o:Landroidx/appcompat/widget/AppCompatTextView;

    .line 146
    .line 147
    iput-object v2, v1, Lcom/mycompany/app/view/MyAdNative;->p:Landroid/widget/RelativeLayout;

    .line 148
    .line 149
    iput-object v2, v1, Lcom/mycompany/app/view/MyAdNative;->q:Landroidx/appcompat/widget/AppCompatTextView;

    .line 150
    .line 151
    iput-object v2, v1, Lcom/mycompany/app/view/MyAdNative;->r:Landroidx/appcompat/widget/AppCompatTextView;

    .line 152
    .line 153
    

    .line 154
    .line 155
    iput-object v2, v1, Lcom/mycompany/app/view/MyAdNative;->A:Ljava/util/concurrent/ExecutorService;

    .line 156
    .line 157
    :goto_0
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyAdNative;->n()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyAdNative;->o(Z)V

    .line 161
    .line 162
    .line 163
    iget-object v1, v0, Lcom/mycompany/app/main/MainWebDestroy;->c:Landroid/os/Handler;

    .line 164
    .line 165
    if-nez v1, :cond_9

    .line 166
    .line 167
    :goto_1
    return-void

    .line 168
    :cond_9
    new-instance v2, Lcom/mycompany/app/main/MainWebDestroy$4;

    .line 169
    .line 170
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainWebDestroy$4;-><init>(Lcom/mycompany/app/main/MainWebDestroy;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_a
    iput-boolean v3, v0, Lcom/mycompany/app/main/MainWebDestroy;->e:Z

    .line 178
    .line 179
    return-void
.end method
