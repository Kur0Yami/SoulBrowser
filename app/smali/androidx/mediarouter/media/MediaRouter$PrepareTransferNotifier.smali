.class final Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrepareTransferNotifier"
.end annotation


# instance fields
.field public final a:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

.field public final b:I

.field public final c:Z

.field public final d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public final e:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public final f:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/lang/ref/WeakReference;

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/GlobalMediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouteProvider$RouteController;IZLandroidx/mediarouter/media/MediaRouter$RouteInfo;Ljava/util/Collection;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->i:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->j:Z

    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->h:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->e:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 17
    .line 18
    iput-object p3, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->a:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 19
    .line 20
    iput p4, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->b:I

    .line 21
    .line 22
    iput-boolean p5, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->c:Z

    .line 23
    .line 24
    iget-object p2, p1, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 25
    .line 26
    iput-object p2, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 27
    .line 28
    iput-object p6, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->f:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 29
    .line 30
    if-nez p7, :cond_0

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {p2, p7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    iput-object p2, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->g:Ljava/util/ArrayList;

    .line 40
    .line 41
    iget-object p1, p1, Landroidx/mediarouter/media/GlobalMediaRouter;->a:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    .line 42
    .line 43
    new-instance p2, Landroidx/mediarouter/media/a;

    .line 44
    .line 45
    const/4 p3, 0x2

    .line 46
    invoke-direct {p2, p3, p0}, Landroidx/mediarouter/media/a;-><init>(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    const-wide/16 p3, 0x3a98

    .line 50
    .line 51
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->c()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->i:Z

    .line 5
    .line 6
    if-nez v0, :cond_a

    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->j:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->h:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->a:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    if-eqz v1, :cond_8

    .line 26
    .line 27
    iget-object v4, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->f:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    .line 28
    .line 29
    if-ne v4, p0, :cond_8

    .line 30
    .line 31
    iput-boolean v3, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->i:Z

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    iput-object v3, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->f:Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 41
    .line 42
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 43
    .line 44
    iget v5, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->b:I

    .line 45
    .line 46
    if-eqz v1, :cond_5

    .line 47
    .line 48
    iget-object v6, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->b:Ljava/util/HashMap;

    .line 49
    .line 50
    iget-object v7, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 51
    .line 52
    if-eq v7, v4, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iget-object v7, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->a:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    .line 56
    .line 57
    const/16 v8, 0x107

    .line 58
    .line 59
    invoke-virtual {v7, v8, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    iput v5, v7, Landroid/os/Message;->arg1:I

    .line 64
    .line 65
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 66
    .line 67
    .line 68
    iget-object v7, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->e:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 69
    .line 70
    if-eqz v7, :cond_2

    .line 71
    .line 72
    invoke-virtual {v7, v5}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->h(I)V

    .line 73
    .line 74
    .line 75
    iget-object v7, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->e:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 76
    .line 77
    invoke-virtual {v7}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->d()V

    .line 78
    .line 79
    .line 80
    :cond_2
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-nez v7, :cond_4

    .line 85
    .line 86
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    if-eqz v8, :cond_3

    .line 99
    .line 100
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    check-cast v8, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 105
    .line 106
    invoke-virtual {v8, v5}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->h(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v8}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->d()V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 114
    .line 115
    .line 116
    :cond_4
    iput-object v3, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->e:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 117
    .line 118
    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 123
    .line 124
    if-nez v0, :cond_6

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_6
    iget-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->a:Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;

    .line 128
    .line 129
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->e:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 130
    .line 131
    iput-object v3, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 132
    .line 133
    iput-object v2, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->e:Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    .line 134
    .line 135
    iget-boolean v2, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->c:Z

    .line 136
    .line 137
    iget-object v6, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->f:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 138
    .line 139
    if-nez v6, :cond_7

    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    new-instance v6, Landroidx/mediarouter/media/GlobalMediaRouter$RouteSelectedMessageParams;

    .line 145
    .line 146
    invoke-direct {v6, v4, v3, v2}, Landroidx/mediarouter/media/GlobalMediaRouter$RouteSelectedMessageParams;-><init>(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouter$RouteInfo;Z)V

    .line 147
    .line 148
    .line 149
    const/16 v2, 0x106

    .line 150
    .line 151
    invoke-virtual {v1, v2, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 156
    .line 157
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    new-instance v4, Landroidx/mediarouter/media/GlobalMediaRouter$RouteSelectedMessageParams;

    .line 165
    .line 166
    invoke-direct {v4, v6, v3, v2}, Landroidx/mediarouter/media/GlobalMediaRouter$RouteSelectedMessageParams;-><init>(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouter$RouteInfo;Z)V

    .line 167
    .line 168
    .line 169
    const/16 v2, 0x108

    .line 170
    .line 171
    invoke-virtual {v1, v2, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 176
    .line 177
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 178
    .line 179
    .line 180
    :goto_2
    iget-object v1, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->b:Ljava/util/HashMap;

    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->j()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->o()V

    .line 189
    .line 190
    .line 191
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->g:Ljava/util/ArrayList;

    .line 192
    .line 193
    if-eqz v1, :cond_a

    .line 194
    .line 195
    iget-object v0, v0, Landroidx/mediarouter/media/GlobalMediaRouter;->d:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 196
    .line 197
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->a()Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    if-eqz v0, :cond_a

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter$GroupRouteInfo;->q(Ljava/util/Collection;)V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :cond_8
    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->i:Z

    .line 208
    .line 209
    if-nez v0, :cond_a

    .line 210
    .line 211
    iget-boolean v0, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->j:Z

    .line 212
    .line 213
    if-eqz v0, :cond_9

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_9
    iput-boolean v3, p0, Landroidx/mediarouter/media/MediaRouter$PrepareTransferNotifier;->j:Z

    .line 217
    .line 218
    if-eqz v2, :cond_a

    .line 219
    .line 220
    const/4 v0, 0x0

    .line 221
    invoke-virtual {v2, v0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->h(I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->d()V

    .line 225
    .line 226
    .line 227
    :cond_a
    :goto_3
    return-void
.end method
