.class final Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/GlobalMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CallbackHandler"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public final synthetic c:Landroidx/mediarouter/media/GlobalMediaRouter;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/GlobalMediaRouter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->c:Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->b:Ljava/util/ArrayList;

    .line 19
    .line 20
    return-void
.end method

.method public static a(Landroidx/mediarouter/media/MediaRouter$CallbackRecord;ILjava/lang/Object;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->a:Landroidx/mediarouter/media/MediaRouter;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->b:Landroidx/mediarouter/media/MediaRouter$Callback;

    .line 4
    .line 5
    const v2, 0xff00

    .line 6
    .line 7
    .line 8
    and-int/2addr v2, p1

    .line 9
    const/16 v3, 0x100

    .line 10
    .line 11
    if-eq v2, v3, :cond_3

    .line 12
    .line 13
    const/16 p0, 0x200

    .line 14
    .line 15
    if-eq v2, p0, :cond_2

    .line 16
    .line 17
    const/16 p0, 0x300

    .line 18
    .line 19
    if-eq v2, p0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_0
    const/16 p0, 0x301

    .line 24
    .line 25
    if-eq p1, p0, :cond_1

    .line 26
    .line 27
    goto/16 :goto_4

    .line 28
    .line 29
    :cond_1
    check-cast p2, Landroidx/mediarouter/media/MediaRouterParams;

    .line 30
    .line 31
    invoke-virtual {v1, p2}, Landroidx/mediarouter/media/MediaRouter$Callback;->n(Landroidx/mediarouter/media/MediaRouterParams;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    check-cast p2, Landroidx/mediarouter/media/MediaRouter$ProviderInfo;

    .line 36
    .line 37
    packed-switch p1, :pswitch_data_0

    .line 38
    .line 39
    .line 40
    goto/16 :goto_4

    .line 41
    .line 42
    :pswitch_0
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$Callback;->b()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_1
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$Callback;->c()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_2
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$Callback;->a()V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    const/16 v2, 0x108

    .line 55
    .line 56
    const/16 v3, 0x106

    .line 57
    .line 58
    if-eq p1, v2, :cond_6

    .line 59
    .line 60
    if-ne p1, v3, :cond_4

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    const/16 v2, 0x109

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    if-eq p1, v2, :cond_5

    .line 67
    .line 68
    const/16 v2, 0x10a

    .line 69
    .line 70
    if-eq p1, v2, :cond_5

    .line 71
    .line 72
    check-cast p2, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_5
    check-cast p2, Landroidx/mediarouter/media/GlobalMediaRouter$RouteConnectionMessageParams;

    .line 76
    .line 77
    throw v4

    .line 78
    :cond_6
    :goto_0
    check-cast p2, Landroidx/mediarouter/media/GlobalMediaRouter$RouteSelectedMessageParams;

    .line 79
    .line 80
    iget-object v2, p2, Landroidx/mediarouter/media/GlobalMediaRouter$RouteSelectedMessageParams;->b:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 81
    .line 82
    iget-object v4, p2, Landroidx/mediarouter/media/GlobalMediaRouter$RouteSelectedMessageParams;->a:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 83
    .line 84
    move-object p2, v2

    .line 85
    :goto_1
    if-eqz p2, :cond_c

    .line 86
    .line 87
    iget v2, p0, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->d:I

    .line 88
    .line 89
    and-int/lit8 v2, v2, 0x2

    .line 90
    .line 91
    const/4 v5, 0x1

    .line 92
    if-nez v2, :cond_a

    .line 93
    .line 94
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;->c:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 95
    .line 96
    invoke-virtual {p2, p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->i(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_7

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_7
    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->g()Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    iget-object p0, p0, Landroidx/mediarouter/media/GlobalMediaRouter;->u:Landroidx/mediarouter/media/MediaRouterParams;

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    if-nez p0, :cond_8

    .line 111
    .line 112
    move p0, v2

    .line 113
    goto :goto_2

    .line 114
    :cond_8
    iget-boolean p0, p0, Landroidx/mediarouter/media/MediaRouterParams;->c:Z

    .line 115
    .line 116
    :goto_2
    if-eqz p0, :cond_9

    .line 117
    .line 118
    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->e()Z

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    if-eqz p0, :cond_9

    .line 123
    .line 124
    if-ne p1, v3, :cond_9

    .line 125
    .line 126
    const/4 p0, 0x3

    .line 127
    if-ne p3, p0, :cond_9

    .line 128
    .line 129
    if-eqz v4, :cond_9

    .line 130
    .line 131
    invoke-virtual {v4}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->e()Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    xor-int/2addr v5, p0

    .line 136
    goto :goto_3

    .line 137
    :cond_9
    move v5, v2

    .line 138
    :cond_a
    :goto_3
    if-nez v5, :cond_b

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_b
    packed-switch p1, :pswitch_data_1

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :pswitch_3
    invoke-virtual {v1, v4, p2, p3}, Landroidx/mediarouter/media/MediaRouter$Callback;->g(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_4
    invoke-virtual {v1, v4, p2}, Landroidx/mediarouter/media/MediaRouter$Callback;->f(Landroidx/mediarouter/media/MediaRouter$RouteInfo;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :pswitch_5
    invoke-virtual {v1, v0, p2, p3, v4}, Landroidx/mediarouter/media/MediaRouter$Callback;->j(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;ILandroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :pswitch_6
    invoke-virtual {v1, v0, p2, p3}, Landroidx/mediarouter/media/MediaRouter$Callback;->l(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;I)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :pswitch_7
    invoke-virtual {v1, v0, p2, p3, p2}, Landroidx/mediarouter/media/MediaRouter$Callback;->j(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;ILandroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :pswitch_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :pswitch_9
    invoke-virtual {v1, p2}, Landroidx/mediarouter/media/MediaRouter$Callback;->m(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :pswitch_a
    invoke-virtual {v1, v0, p2}, Landroidx/mediarouter/media/MediaRouter$Callback;->e(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :pswitch_b
    invoke-virtual {v1, v0, p2}, Landroidx/mediarouter/media/MediaRouter$Callback;->h(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :pswitch_c
    invoke-virtual {v1, v0, p2}, Landroidx/mediarouter/media/MediaRouter$Callback;->d(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 182
    .line 183
    .line 184
    :cond_c
    :goto_4
    return-void

    .line 185
    :pswitch_data_0
    .packed-switch 0x201
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :pswitch_data_1
    .packed-switch 0x101
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final b(ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->c:Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->h:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v3, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->s:Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;

    .line 8
    .line 9
    iget v4, p1, Landroid/os/Message;->what:I

    .line 10
    .line 11
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    .line 13
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 14
    .line 15
    const/16 v6, 0x103

    .line 16
    .line 17
    if-ne v4, v6, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/mediarouter/media/GlobalMediaRouter;->h()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    iget-object v6, v6, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 24
    .line 25
    move-object v7, v5

    .line 26
    check-cast v7, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 27
    .line 28
    iget-object v7, v7, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->c:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_0

    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    invoke-virtual {v1, v6}, Landroidx/mediarouter/media/GlobalMediaRouter;->r(Z)V

    .line 38
    .line 39
    .line 40
    :cond_0
    const/16 v6, 0x106

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    iget-object v8, p0, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->b:Ljava/util/ArrayList;

    .line 44
    .line 45
    if-eq v4, v6, :cond_2

    .line 46
    .line 47
    const/16 v1, 0x108

    .line 48
    .line 49
    if-eq v4, v1, :cond_1

    .line 50
    .line 51
    packed-switch v4, :pswitch_data_0

    .line 52
    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :pswitch_0
    move-object v1, v5

    .line 57
    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->d()Landroidx/mediarouter/media/MediaRouteProvider;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    if-eq v6, v3, :cond_5

    .line 67
    .line 68
    invoke-virtual {v3, v1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->k(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-ltz v1, :cond_5

    .line 73
    .line 74
    iget-object v3, v3, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->v:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;

    .line 81
    .line 82
    invoke-static {v1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->t(Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl$UserRouteRecord;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :pswitch_1
    move-object v1, v5

    .line 87
    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 88
    .line 89
    invoke-virtual {v3, v1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->p(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :pswitch_2
    move-object v1, v5

    .line 94
    check-cast v1, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 95
    .line 96
    invoke-virtual {v3, v1}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->o(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    move-object v1, v5

    .line 101
    check-cast v1, Landroidx/mediarouter/media/GlobalMediaRouter$RouteSelectedMessageParams;

    .line 102
    .line 103
    iget-object v6, v1, Landroidx/mediarouter/media/GlobalMediaRouter$RouteSelectedMessageParams;->b:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 104
    .line 105
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v6}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->o(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 109
    .line 110
    .line 111
    iget-boolean v1, v1, Landroidx/mediarouter/media/GlobalMediaRouter$RouteSelectedMessageParams;->c:Z

    .line 112
    .line 113
    if-eqz v1, :cond_5

    .line 114
    .line 115
    invoke-virtual {v3, v6}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->q(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_2
    move-object v6, v5

    .line 120
    check-cast v6, Landroidx/mediarouter/media/GlobalMediaRouter$RouteSelectedMessageParams;

    .line 121
    .line 122
    iget-object v9, v6, Landroidx/mediarouter/media/GlobalMediaRouter$RouteSelectedMessageParams;->b:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 123
    .line 124
    iget-boolean v6, v6, Landroidx/mediarouter/media/GlobalMediaRouter$RouteSelectedMessageParams;->c:Z

    .line 125
    .line 126
    if-eqz v6, :cond_3

    .line 127
    .line 128
    invoke-virtual {v3, v9}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->q(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 129
    .line 130
    .line 131
    :cond_3
    iget-object v1, v1, Landroidx/mediarouter/media/GlobalMediaRouter;->v:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 132
    .line 133
    if-eqz v1, :cond_5

    .line 134
    .line 135
    invoke-virtual {v9}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->e()Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_5

    .line 140
    .line 141
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    move v6, v7

    .line 146
    :goto_0
    if-ge v6, v1, :cond_4

    .line 147
    .line 148
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    add-int/lit8 v6, v6, 0x1

    .line 153
    .line 154
    check-cast v9, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 155
    .line 156
    invoke-virtual {v3, v9}, Landroidx/mediarouter/media/PlatformMediaRouter1RouteProvider$JellybeanMr2Impl;->p(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 161
    .line 162
    .line 163
    :cond_5
    :goto_1
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    :goto_2
    add-int/lit8 v1, v1, -0x1

    .line 168
    .line 169
    if-ltz v1, :cond_7

    .line 170
    .line 171
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    check-cast v3, Landroidx/mediarouter/media/MediaRouter;

    .line 182
    .line 183
    if-nez v3, :cond_6

    .line 184
    .line 185
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :catchall_0
    move-exception p1

    .line 190
    goto :goto_4

    .line 191
    :cond_6
    iget-object v3, v3, Landroidx/mediarouter/media/MediaRouter;->b:Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 194
    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    :goto_3
    if-ge v7, v1, :cond_8

    .line 202
    .line 203
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    add-int/lit8 v7, v7, 0x1

    .line 208
    .line 209
    check-cast v2, Landroidx/mediarouter/media/MediaRouter$CallbackRecord;

    .line 210
    .line 211
    invoke-static {v2, v4, v5, p1}, Landroidx/mediarouter/media/GlobalMediaRouter$CallbackHandler;->a(Landroidx/mediarouter/media/MediaRouter$CallbackRecord;ILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 216
    .line 217
    .line 218
    return-void

    .line 219
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 220
    .line 221
    .line 222
    throw p1

    .line 223
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
