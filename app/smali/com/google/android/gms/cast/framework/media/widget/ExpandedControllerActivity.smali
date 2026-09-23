.class public abstract Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/widget/ControlButtonsContainer;


# instance fields
.field public final F:Lcom/google/android/gms/cast/framework/SessionManagerListener;

.field public final G:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public X:I

.field public Y:I

.field public Z:Landroid/widget/TextView;

.field public a0:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

.field public b0:Landroid/widget/ImageView;

.field public c0:Landroid/widget/ImageView;

.field public d0:[I

.field public final e0:[Landroid/widget/ImageView;

.field public f0:Landroid/view/View;

.field public g0:Landroid/view/View;

.field public h0:Landroid/widget/ImageView;

.field public i0:Landroid/widget/TextView;

.field public j0:Landroid/widget/TextView;

.field public k0:Landroid/widget/TextView;

.field public l0:Landroid/widget/TextView;

.field public m0:Lcom/google/android/gms/cast/framework/media/internal/zzb;

.field public n0:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

.field public o0:Lcom/google/android/gms/cast/framework/SessionManager;

.field public p0:Lcom/google/android/gms/cast/Cast$Listener;

.field public q0:Z

.field public r0:Z

.field public s0:Ljava/util/Timer;

.field public t0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/cast/framework/media/widget/zzn;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/widget/zzn;-><init>(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->F:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/cast/framework/media/widget/zzm;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/widget/zzm;-><init>(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->G:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    new-array v0, v0, [Landroid/widget/ImageView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->e0:[Landroid/widget/ImageView;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final X(Landroid/view/View;IILcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V
    .locals 7

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    move-object v1, p1

    .line 6
    check-cast v1, Landroid/widget/ImageView;

    .line 7
    .line 8
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_empty:I

    .line 9
    .line 10
    if-ne p3, p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x4

    .line 13
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_play_pause_toggle:I

    .line 18
    .line 19
    const p2, 0x106000b

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    if-ne p3, p1, :cond_1

    .line 24
    .line 25
    iget p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->H:I

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 28
    .line 29
    .line 30
    iget p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->V:I

    .line 31
    .line 32
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->J:I

    .line 33
    .line 34
    invoke-static {p0, p1, p3, v0, p2}, Lcom/google/android/gms/cast/framework/media/widget/zzo;->b(Landroid/content/Context;IIII)Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->V:I

    .line 39
    .line 40
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->I:I

    .line 41
    .line 42
    invoke-static {p0, p1, p3, v0, p2}, Lcom/google/android/gms/cast/framework/media/widget/zzo;->b(Landroid/content/Context;IIII)Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->V:I

    .line 47
    .line 48
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->K:I

    .line 49
    .line 50
    invoke-static {p0, p1, p3, v0, p2}, Lcom/google/android/gms/cast/framework/media/widget/zzo;->b(Landroid/content/Context;IIII)Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    const/4 v6, 0x0

    .line 59
    move-object v0, p4

    .line 60
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->q(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/widget/ProgressBar;Z)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    move-object p1, p4

    .line 65
    sget p4, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_skip_previous:I

    .line 66
    .line 67
    if-ne p3, p4, :cond_2

    .line 68
    .line 69
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->H:I

    .line 70
    .line 71
    invoke-virtual {v1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 72
    .line 73
    .line 74
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->V:I

    .line 75
    .line 76
    iget p4, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->L:I

    .line 77
    .line 78
    invoke-static {p0, p3, p4, v0, p2}, Lcom/google/android/gms/cast/framework/media/widget/zzo;->b(Landroid/content/Context;IIII)Landroid/graphics/drawable/Drawable;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    sget p3, Lcom/google/android/gms/cast/framework/R$string;->cast_skip_prev:I

    .line 90
    .line 91
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {v1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->x(Landroid/widget/ImageView;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_2
    sget p4, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_skip_next:I

    .line 103
    .line 104
    if-ne p3, p4, :cond_3

    .line 105
    .line 106
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->H:I

    .line 107
    .line 108
    invoke-virtual {v1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 109
    .line 110
    .line 111
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->V:I

    .line 112
    .line 113
    iget p4, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->M:I

    .line 114
    .line 115
    invoke-static {p0, p3, p4, v0, p2}, Lcom/google/android/gms/cast/framework/media/widget/zzo;->b(Landroid/content/Context;IIII)Landroid/graphics/drawable/Drawable;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    sget p3, Lcom/google/android/gms/cast/framework/R$string;->cast_skip_next:I

    .line 127
    .line 128
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-virtual {v1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->w(Landroid/widget/ImageView;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_3
    sget p4, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_rewind_30_seconds:I

    .line 140
    .line 141
    if-ne p3, p4, :cond_4

    .line 142
    .line 143
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->H:I

    .line 144
    .line 145
    invoke-virtual {v1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 146
    .line 147
    .line 148
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->V:I

    .line 149
    .line 150
    iget p4, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->N:I

    .line 151
    .line 152
    invoke-static {p0, p3, p4, v0, p2}, Lcom/google/android/gms/cast/framework/media/widget/zzo;->b(Landroid/content/Context;IIII)Landroid/graphics/drawable/Drawable;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    sget p3, Lcom/google/android/gms/cast/framework/R$string;->cast_rewind_30:I

    .line 164
    .line 165
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    invoke-virtual {v1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->v(Landroid/widget/ImageView;)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_4
    sget p4, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_forward_30_seconds:I

    .line 177
    .line 178
    if-ne p3, p4, :cond_5

    .line 179
    .line 180
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->H:I

    .line 181
    .line 182
    invoke-virtual {v1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 183
    .line 184
    .line 185
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->V:I

    .line 186
    .line 187
    iget p4, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->O:I

    .line 188
    .line 189
    invoke-static {p0, p3, p4, v0, p2}, Lcom/google/android/gms/cast/framework/media/widget/zzo;->b(Landroid/content/Context;IIII)Landroid/graphics/drawable/Drawable;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    sget p3, Lcom/google/android/gms/cast/framework/R$string;->cast_forward_30:I

    .line 201
    .line 202
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    invoke-virtual {v1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->t(Landroid/widget/ImageView;)V

    .line 210
    .line 211
    .line 212
    return-void

    .line 213
    :cond_5
    sget p4, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_mute_toggle:I

    .line 214
    .line 215
    if-ne p3, p4, :cond_6

    .line 216
    .line 217
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->H:I

    .line 218
    .line 219
    invoke-virtual {v1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 220
    .line 221
    .line 222
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->V:I

    .line 223
    .line 224
    iget p4, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->P:I

    .line 225
    .line 226
    invoke-static {p0, p3, p4, v0, p2}, Lcom/google/android/gms/cast/framework/media/widget/zzo;->b(Landroid/content/Context;IIII)Landroid/graphics/drawable/Drawable;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->p(Landroid/widget/ImageView;)V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :cond_6
    sget p4, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_closed_caption:I

    .line 238
    .line 239
    if-ne p3, p4, :cond_7

    .line 240
    .line 241
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->H:I

    .line 242
    .line 243
    invoke-virtual {v1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 244
    .line 245
    .line 246
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->V:I

    .line 247
    .line 248
    iget p4, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->Q:I

    .line 249
    .line 250
    invoke-static {p0, p3, p4, v0, p2}, Lcom/google/android/gms/cast/framework/media/widget/zzo;->b(Landroid/content/Context;IIII)Landroid/graphics/drawable/Drawable;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1, v1}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->s(Landroid/widget/ImageView;)V

    .line 258
    .line 259
    .line 260
    :cond_7
    return-void
.end method

.method public final Y()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->o0:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->c()Lcom/google/android/gms/cast/framework/CastSession;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/Session;->c()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastSession;->j()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method public final Z()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->Y()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->j()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->f()Lcom/google/android/gms/cast/MediaInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, v0, Lcom/google/android/gms/cast/MediaInfo;->h:Lcom/google/android/gms/cast/MediaMetadata;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->W()Landroidx/appcompat/app/ActionBar;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/MediaMetadata;->F(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/ActionBar;->u(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/internal/zzt;->a(Lcom/google/android/gms/cast/MediaMetadata;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->t(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public final a0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->o0:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->c()Lcom/google/android/gms/cast/framework/CastSession;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "Must be called from the main thread."

    .line 10
    .line 11
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/CastSession;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, v0, Lcom/google/android/gms/cast/CastDevice;->h:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->Z:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    sget v3, Lcom/google/android/gms/cast/framework/R$string;->cast_casting_to_device:I

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    new-array v4, v4, [Ljava/lang/Object;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    aput-object v0, v4, v5

    .line 39
    .line 40
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->Z:Landroid/widget/TextView;

    .line 49
    .line 50
    const-string v1, ""

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final b0()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->Y()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->g()Lcom/google/android/gms/cast/MediaStatus;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_7

    .line 16
    .line 17
    iget-boolean v3, v2, Lcom/google/android/gms/cast/MediaStatus;->v:Z

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/16 v5, 0x8

    .line 21
    .line 22
    if-eqz v3, :cond_6

    .line 23
    .line 24
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->c0:Landroid/widget/ImageView;

    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v6, 0x0

    .line 31
    if-ne v3, v5, :cond_1

    .line 32
    .line 33
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->b0:Landroid/widget/ImageView;

    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    instance-of v7, v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 42
    .line 43
    if-eqz v7, :cond_1

    .line 44
    .line 45
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    sget-object v7, Lcom/google/android/gms/cast/framework/media/widget/zzo;->a:Lcom/google/android/gms/cast/internal/Logger;

    .line 54
    .line 55
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    const/4 v10, 0x3

    .line 72
    new-array v11, v10, [Ljava/lang/Object;

    .line 73
    .line 74
    aput-object v3, v11, v6

    .line 75
    .line 76
    const/4 v12, 0x1

    .line 77
    aput-object v8, v11, v12

    .line 78
    .line 79
    const/4 v8, 0x2

    .line 80
    aput-object v9, v11, v8

    .line 81
    .line 82
    const-string v9, "Begin blurring bitmap %s, original width = %d, original height = %d."

    .line 83
    .line 84
    invoke-virtual {v7, v9, v11}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    int-to-float v9, v9

    .line 92
    const/high16 v11, 0x3e800000    # 0.25f

    .line 93
    .line 94
    mul-float/2addr v9, v11

    .line 95
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 100
    .line 101
    .line 102
    move-result v13

    .line 103
    int-to-float v13, v13

    .line 104
    mul-float/2addr v13, v11

    .line 105
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    .line 106
    .line 107
    .line 108
    move-result v11

    .line 109
    invoke-static {v3, v9, v11, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 114
    .line 115
    .line 116
    move-result-object v13

    .line 117
    invoke-static {v9, v11, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 118
    .line 119
    .line 120
    move-result-object v13

    .line 121
    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    .line 122
    .line 123
    .line 124
    move-result-object v14

    .line 125
    invoke-static {v14, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    .line 126
    .line 127
    .line 128
    move-result-object v15

    .line 129
    move/from16 v16, v8

    .line 130
    .line 131
    invoke-virtual {v15}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-static {v14, v8}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    move/from16 v17, v12

    .line 140
    .line 141
    invoke-virtual {v15}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    .line 142
    .line 143
    .line 144
    move-result-object v12

    .line 145
    invoke-static {v14, v12}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    .line 146
    .line 147
    .line 148
    move-result-object v12

    .line 149
    invoke-virtual {v12, v15}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 150
    .line 151
    .line 152
    const/high16 v15, 0x40f00000    # 7.5f

    .line 153
    .line 154
    invoke-virtual {v12, v15}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v12, v8}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8, v13}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v14}, Landroid/renderscript/RenderScript;->destroy()V

    .line 164
    .line 165
    .line 166
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    new-array v10, v10, [Ljava/lang/Object;

    .line 175
    .line 176
    aput-object v3, v10, v6

    .line 177
    .line 178
    aput-object v8, v10, v17

    .line 179
    .line 180
    aput-object v9, v10, v16

    .line 181
    .line 182
    const-string v3, "End blurring bitmap %s, original width = %d, original height = %d."

    .line 183
    .line 184
    invoke-virtual {v7, v3, v10}, Lcom/google/android/gms/cast/internal/Logger;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    if-eqz v13, :cond_1

    .line 188
    .line 189
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->c0:Landroid/widget/ImageView;

    .line 190
    .line 191
    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 192
    .line 193
    .line 194
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->c0:Landroid/widget/ImageView;

    .line 195
    .line 196
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    .line 198
    .line 199
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaStatus;->F()Lcom/google/android/gms/cast/AdBreakClipInfo;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    if-eqz v2, :cond_2

    .line 204
    .line 205
    iget-object v4, v2, Lcom/google/android/gms/cast/AdBreakClipInfo;->f:Ljava/lang/String;

    .line 206
    .line 207
    iget-object v2, v2, Lcom/google/android/gms/cast/AdBreakClipInfo;->m:Ljava/lang/String;

    .line 208
    .line 209
    move-object/from16 v18, v4

    .line 210
    .line 211
    move-object v4, v2

    .line 212
    move-object/from16 v2, v18

    .line 213
    .line 214
    goto :goto_0

    .line 215
    :cond_2
    move-object v2, v4

    .line 216
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    if-nez v3, :cond_3

    .line 221
    .line 222
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->m0:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 227
    .line 228
    invoke-virtual {v4, v3}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->a(Landroid/net/Uri;)V

    .line 229
    .line 230
    .line 231
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->g0:Landroid/view/View;

    .line 232
    .line 233
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 234
    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_3
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->t0:Ljava/lang/String;

    .line 238
    .line 239
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    if-nez v3, :cond_4

    .line 244
    .line 245
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->t0:Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->m0:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 252
    .line 253
    invoke-virtual {v4, v3}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->a(Landroid/net/Uri;)V

    .line 254
    .line 255
    .line 256
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->g0:Landroid/view/View;

    .line 257
    .line 258
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 259
    .line 260
    .line 261
    goto :goto_1

    .line 262
    :cond_4
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->i0:Landroid/widget/TextView;

    .line 263
    .line 264
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 265
    .line 266
    .line 267
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->g0:Landroid/view/View;

    .line 268
    .line 269
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 270
    .line 271
    .line 272
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->h0:Landroid/widget/ImageView;

    .line 273
    .line 274
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    .line 276
    .line 277
    :goto_1
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->j0:Landroid/widget/TextView;

    .line 278
    .line 279
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    if-eqz v4, :cond_5

    .line 284
    .line 285
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    sget v4, Lcom/google/android/gms/cast/framework/R$string;->cast_ad_label:I

    .line 290
    .line 291
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    :cond_5
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    .line 297
    .line 298
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->j0:Landroid/widget/TextView;

    .line 299
    .line 300
    iget v3, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->W:I

    .line 301
    .line 302
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 303
    .line 304
    .line 305
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->f0:Landroid/view/View;

    .line 306
    .line 307
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->c0(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    .line 311
    .line 312
    .line 313
    return-void

    .line 314
    :cond_6
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->l0:Landroid/widget/TextView;

    .line 315
    .line 316
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 317
    .line 318
    .line 319
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->k0:Landroid/widget/TextView;

    .line 320
    .line 321
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 322
    .line 323
    .line 324
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->f0:Landroid/view/View;

    .line 325
    .line 326
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 327
    .line 328
    .line 329
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->c0:Landroid/widget/ImageView;

    .line 330
    .line 331
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    .line 333
    .line 334
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->c0:Landroid/widget/ImageView;

    .line 335
    .line 336
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 337
    .line 338
    .line 339
    :cond_7
    :goto_2
    return-void
.end method

.method public final c0(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->q0:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->g()Lcom/google/android/gms/cast/MediaStatus;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->k()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->k0:Landroid/widget/TextView;

    .line 20
    .line 21
    const/16 v2, 0x8

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->l0:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaStatus;->F()Lcom/google/android/gms/cast/AdBreakClipInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    iget-wide v0, v0, Lcom/google/android/gms/cast/AdBreakClipInfo;->n:J

    .line 38
    .line 39
    const-wide/16 v2, -0x1

    .line 40
    .line 41
    cmp-long v2, v0, v2

    .line 42
    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    iget-boolean v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->r0:Z

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    new-instance v5, Lcom/google/android/gms/cast/framework/media/widget/zzj;

    .line 51
    .line 52
    invoke-direct {v5, p0, p1}, Lcom/google/android/gms/cast/framework/media/widget/zzj;-><init>(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    .line 53
    .line 54
    .line 55
    new-instance v4, Ljava/util/Timer;

    .line 56
    .line 57
    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v4, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->s0:Ljava/util/Timer;

    .line 61
    .line 62
    const-wide/16 v6, 0x0

    .line 63
    .line 64
    const-wide/16 v8, 0x1f4

    .line 65
    .line 66
    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 67
    .line 68
    .line 69
    iput-boolean v3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->r0:Z

    .line 70
    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->c()J

    .line 72
    .line 73
    .line 74
    move-result-wide v4

    .line 75
    sub-long/2addr v0, v4

    .line 76
    long-to-float p1, v0

    .line 77
    const/4 v0, 0x0

    .line 78
    cmpg-float v0, p1, v0

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    if-gtz v0, :cond_3

    .line 82
    .line 83
    iget-boolean p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->r0:Z

    .line 84
    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->s0:Ljava/util/Timer;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 90
    .line 91
    .line 92
    iput-boolean v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->r0:Z

    .line 93
    .line 94
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->k0:Landroid/widget/TextView;

    .line 95
    .line 96
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->k0:Landroid/widget/TextView;

    .line 100
    .line 101
    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->l0:Landroid/widget/TextView;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->l0:Landroid/widget/TextView;

    .line 111
    .line 112
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    sget v4, Lcom/google/android/gms/cast/framework/R$string;->cast_expanded_controller_skip_ad_text:I

    .line 117
    .line 118
    const/high16 v5, 0x447a0000    # 1000.0f

    .line 119
    .line 120
    div-float/2addr p1, v5

    .line 121
    float-to-double v5, p1

    .line 122
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 123
    .line 124
    .line 125
    move-result-wide v5

    .line 126
    double-to-int p1, v5

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    new-array v3, v3, [Ljava/lang/Object;

    .line 132
    .line 133
    aput-object p1, v3, v1

    .line 134
    .line 135
    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->k0:Landroid/widget/TextView;

    .line 143
    .line 144
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 145
    .line 146
    .line 147
    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/CastContext;->e(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/CastContext;->d()Lcom/google/android/gms/cast/framework/SessionManager;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->o0:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/SessionManager;->c()Lcom/google/android/gms/cast/framework/CastSession;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 21
    .line 22
    .line 23
    :cond_0
    new-instance p1, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->n0:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    .line 29
    .line 30
    const-string v0, "Must be called from the main thread."

    .line 31
    .line 32
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->G:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;

    .line 36
    .line 37
    iput-object v1, p1, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->f:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;

    .line 38
    .line 39
    sget p1, Lcom/google/android/gms/cast/framework/R$layout;->cast_expanded_controller_activity:I

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 42
    .line 43
    .line 44
    sget p1, Landroidx/appcompat/R$attr;->selectableItemBackgroundBorderless:I

    .line 45
    .line 46
    filled-new-array {p1}, [I

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    iput v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->H:I

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    .line 63
    .line 64
    sget-object p1, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController:[I

    .line 65
    .line 66
    sget v2, Lcom/google/android/gms/cast/framework/R$attr;->castExpandedControllerStyle:I

    .line 67
    .line 68
    sget v3, Lcom/google/android/gms/cast/framework/R$style;->CastExpandedController:I

    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    invoke-virtual {p0, v4, p1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    sget v2, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castButtonColor:I

    .line 76
    .line 77
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    iput v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->V:I

    .line 82
    .line 83
    sget v2, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castPlayButtonDrawable:I

    .line 84
    .line 85
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    iput v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->I:I

    .line 90
    .line 91
    sget v2, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castPauseButtonDrawable:I

    .line 92
    .line 93
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    iput v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->J:I

    .line 98
    .line 99
    sget v2, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castStopButtonDrawable:I

    .line 100
    .line 101
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    iput v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->K:I

    .line 106
    .line 107
    sget v2, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castSkipPreviousButtonDrawable:I

    .line 108
    .line 109
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    iput v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->L:I

    .line 114
    .line 115
    sget v2, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castSkipNextButtonDrawable:I

    .line 116
    .line 117
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    iput v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->M:I

    .line 122
    .line 123
    sget v2, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castRewind30ButtonDrawable:I

    .line 124
    .line 125
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    iput v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->N:I

    .line 130
    .line 131
    sget v2, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castForward30ButtonDrawable:I

    .line 132
    .line 133
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    iput v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->O:I

    .line 138
    .line 139
    sget v2, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castMuteToggleButtonDrawable:I

    .line 140
    .line 141
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    iput v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->P:I

    .line 146
    .line 147
    sget v2, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castClosedCaptionsButtonDrawable:I

    .line 148
    .line 149
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    iput v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->Q:I

    .line 154
    .line 155
    sget v2, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castControlButtons:I

    .line 156
    .line 157
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    const/4 v3, 0x4

    .line 162
    const/4 v4, 0x1

    .line 163
    if-eqz v2, :cond_3

    .line 164
    .line 165
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-ne v5, v3, :cond_1

    .line 178
    .line 179
    move v5, v4

    .line 180
    goto :goto_0

    .line 181
    :cond_1
    move v5, v1

    .line 182
    :goto_0
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    new-array v5, v5, [I

    .line 190
    .line 191
    iput-object v5, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->d0:[I

    .line 192
    .line 193
    move v5, v1

    .line 194
    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    if-ge v5, v6, :cond_2

    .line 199
    .line 200
    iget-object v6, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->d0:[I

    .line 201
    .line 202
    invoke-virtual {v2, v5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    aput v7, v6, v5

    .line 207
    .line 208
    add-int/lit8 v5, v5, 0x1

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_3
    sget v2, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_empty:I

    .line 216
    .line 217
    filled-new-array {v2, v2, v2, v2}, [I

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->d0:[I

    .line 222
    .line 223
    :goto_2
    sget v2, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castExpandedControllerLoadingIndicatorColor:I

    .line 224
    .line 225
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    iput v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->U:I

    .line 230
    .line 231
    sget v2, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castAdLabelColor:I

    .line 232
    .line 233
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 242
    .line 243
    .line 244
    move-result v2

    .line 245
    iput v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->R:I

    .line 246
    .line 247
    sget v2, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castAdInProgressTextColor:I

    .line 248
    .line 249
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    iput v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->S:I

    .line 262
    .line 263
    sget v2, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castAdLabelTextColor:I

    .line 264
    .line 265
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    iput v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->T:I

    .line 278
    .line 279
    sget v2, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castAdLabelTextAppearance:I

    .line 280
    .line 281
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    iput v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->W:I

    .line 286
    .line 287
    sget v2, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castAdInProgressLabelTextAppearance:I

    .line 288
    .line 289
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    iput v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->X:I

    .line 294
    .line 295
    sget v2, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castAdInProgressText:I

    .line 296
    .line 297
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    iput v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->Y:I

    .line 302
    .line 303
    sget v2, Lcom/google/android/gms/cast/framework/R$styleable;->CastExpandedController_castDefaultAdPosterUrl:I

    .line 304
    .line 305
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    if-eqz v2, :cond_4

    .line 310
    .line 311
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->t0:Ljava/lang/String;

    .line 324
    .line 325
    :cond_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 326
    .line 327
    .line 328
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->expanded_controller_layout:I

    .line 329
    .line 330
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->n0:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    .line 335
    .line 336
    sget v5, Lcom/google/android/gms/cast/framework/R$id;->background_image_view:I

    .line 337
    .line 338
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    check-cast v5, Landroid/widget/ImageView;

    .line 343
    .line 344
    iput-object v5, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->b0:Landroid/widget/ImageView;

    .line 345
    .line 346
    sget v5, Lcom/google/android/gms/cast/framework/R$id;->blurred_background_image_view:I

    .line 347
    .line 348
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 349
    .line 350
    .line 351
    move-result-object v5

    .line 352
    check-cast v5, Landroid/widget/ImageView;

    .line 353
    .line 354
    iput-object v5, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->c0:Landroid/widget/ImageView;

    .line 355
    .line 356
    sget v5, Lcom/google/android/gms/cast/framework/R$id;->background_place_holder_image_view:I

    .line 357
    .line 358
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 359
    .line 360
    .line 361
    move-result-object v11

    .line 362
    new-instance v5, Landroid/util/DisplayMetrics;

    .line 363
    .line 364
    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 372
    .line 373
    .line 374
    move-result-object v6

    .line 375
    invoke-virtual {v6, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 376
    .line 377
    .line 378
    iget-object v7, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->b0:Landroid/widget/ImageView;

    .line 379
    .line 380
    new-instance v9, Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 381
    .line 382
    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 383
    .line 384
    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 385
    .line 386
    invoke-direct {v9, v3, v6, v5}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    .line 387
    .line 388
    .line 389
    new-instance v12, Lcom/google/android/gms/cast/framework/media/widget/zzl;

    .line 390
    .line 391
    invoke-direct {v12, p0}, Lcom/google/android/gms/cast/framework/media/widget/zzl;-><init>(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    iget-object v3, v2, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->e:Lcom/google/android/gms/cast/framework/media/uicontroller/zza;

    .line 398
    .line 399
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    iget-object v8, v2, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->a:Landroid/app/Activity;

    .line 403
    .line 404
    new-instance v6, Lcom/google/android/gms/internal/cast/zzda;

    .line 405
    .line 406
    const/4 v10, 0x0

    .line 407
    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/cast/zzda;-><init>(Landroid/widget/ImageView;Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;ILandroid/view/View;Lcom/google/android/gms/internal/cast/zzcz;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v2, v7, v6}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->B(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    .line 411
    .line 412
    .line 413
    sget v5, Lcom/google/android/gms/cast/framework/R$id;->status_text:I

    .line 414
    .line 415
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    check-cast v5, Landroid/widget/TextView;

    .line 420
    .line 421
    iput-object v5, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->Z:Landroid/widget/TextView;

    .line 422
    .line 423
    sget v5, Lcom/google/android/gms/cast/framework/R$id;->loading_indicator:I

    .line 424
    .line 425
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 426
    .line 427
    .line 428
    move-result-object v5

    .line 429
    check-cast v5, Landroid/widget/ProgressBar;

    .line 430
    .line 431
    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    .line 432
    .line 433
    .line 434
    move-result-object v6

    .line 435
    iget v7, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->U:I

    .line 436
    .line 437
    if-eqz v7, :cond_5

    .line 438
    .line 439
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 440
    .line 441
    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 442
    .line 443
    .line 444
    :cond_5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    new-instance v6, Lcom/google/android/gms/internal/cast/zzdc;

    .line 448
    .line 449
    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/cast/zzdc;-><init>(Landroid/widget/ProgressBar;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->B(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    .line 453
    .line 454
    .line 455
    sget v5, Lcom/google/android/gms/cast/framework/R$id;->start_text:I

    .line 456
    .line 457
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 458
    .line 459
    .line 460
    move-result-object v5

    .line 461
    check-cast v5, Landroid/widget/TextView;

    .line 462
    .line 463
    sget v6, Lcom/google/android/gms/cast/framework/R$id;->end_text:I

    .line 464
    .line 465
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 466
    .line 467
    .line 468
    move-result-object v6

    .line 469
    check-cast v6, Landroid/widget/TextView;

    .line 470
    .line 471
    sget v7, Lcom/google/android/gms/cast/framework/R$id;->seek_bar:I

    .line 472
    .line 473
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 474
    .line 475
    .line 476
    move-result-object v7

    .line 477
    check-cast v7, Landroid/widget/SeekBar;

    .line 478
    .line 479
    sget v7, Lcom/google/android/gms/cast/framework/R$id;->cast_seek_bar:I

    .line 480
    .line 481
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 482
    .line 483
    .line 484
    move-result-object v7

    .line 485
    check-cast v7, Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    .line 486
    .line 487
    iput-object v7, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->a0:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    .line 488
    .line 489
    invoke-virtual {v2, v7}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->r(Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;)V

    .line 490
    .line 491
    .line 492
    new-instance v7, Lcom/google/android/gms/internal/cast/zzdw;

    .line 493
    .line 494
    invoke-direct {v7, v5, v3}, Lcom/google/android/gms/internal/cast/zzdw;-><init>(Landroid/widget/TextView;Lcom/google/android/gms/cast/framework/media/uicontroller/zza;)V

    .line 495
    .line 496
    .line 497
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v2, v5, v7}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->B(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    .line 501
    .line 502
    .line 503
    new-instance v5, Lcom/google/android/gms/internal/cast/zzdu;

    .line 504
    .line 505
    invoke-direct {v5, v6, v3}, Lcom/google/android/gms/internal/cast/zzdu;-><init>(Landroid/widget/TextView;Lcom/google/android/gms/cast/framework/media/uicontroller/zza;)V

    .line 506
    .line 507
    .line 508
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->B(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    .line 512
    .line 513
    .line 514
    sget v5, Lcom/google/android/gms/cast/framework/R$id;->live_indicators:I

    .line 515
    .line 516
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 517
    .line 518
    .line 519
    move-result-object v5

    .line 520
    new-instance v6, Lcom/google/android/gms/internal/cast/zzdv;

    .line 521
    .line 522
    invoke-direct {v6, v5, v3}, Lcom/google/android/gms/internal/cast/zzdv;-><init>(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/zza;)V

    .line 523
    .line 524
    .line 525
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->B(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    .line 529
    .line 530
    .line 531
    sget v5, Lcom/google/android/gms/cast/framework/R$id;->tooltip_container:I

    .line 532
    .line 533
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 534
    .line 535
    .line 536
    move-result-object v5

    .line 537
    check-cast v5, Landroid/widget/RelativeLayout;

    .line 538
    .line 539
    new-instance v6, Lcom/google/android/gms/internal/cast/zzdx;

    .line 540
    .line 541
    iget-object v7, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->a0:Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;

    .line 542
    .line 543
    invoke-direct {v6, v5, v7, v3}, Lcom/google/android/gms/internal/cast/zzdx;-><init>(Landroid/widget/RelativeLayout;Lcom/google/android/gms/cast/framework/media/widget/CastSeekBar;Lcom/google/android/gms/cast/framework/media/uicontroller/zza;)V

    .line 544
    .line 545
    .line 546
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->B(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    .line 550
    .line 551
    .line 552
    iget-object v0, v2, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->d:Ljava/util/HashSet;

    .line 553
    .line 554
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 555
    .line 556
    .line 557
    sget v0, Lcom/google/android/gms/cast/framework/R$id;->button_0:I

    .line 558
    .line 559
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    check-cast v0, Landroid/widget/ImageView;

    .line 564
    .line 565
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->e0:[Landroid/widget/ImageView;

    .line 566
    .line 567
    aput-object v0, v3, v1

    .line 568
    .line 569
    sget v0, Lcom/google/android/gms/cast/framework/R$id;->button_1:I

    .line 570
    .line 571
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    check-cast v0, Landroid/widget/ImageView;

    .line 576
    .line 577
    aput-object v0, v3, v4

    .line 578
    .line 579
    sget v0, Lcom/google/android/gms/cast/framework/R$id;->button_2:I

    .line 580
    .line 581
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    check-cast v0, Landroid/widget/ImageView;

    .line 586
    .line 587
    const/4 v5, 0x2

    .line 588
    aput-object v0, v3, v5

    .line 589
    .line 590
    sget v0, Lcom/google/android/gms/cast/framework/R$id;->button_3:I

    .line 591
    .line 592
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    check-cast v0, Landroid/widget/ImageView;

    .line 597
    .line 598
    const/4 v6, 0x3

    .line 599
    aput-object v0, v3, v6

    .line 600
    .line 601
    sget v0, Lcom/google/android/gms/cast/framework/R$id;->button_0:I

    .line 602
    .line 603
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->d0:[I

    .line 604
    .line 605
    aget v1, v3, v1

    .line 606
    .line 607
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->X(Landroid/view/View;IILcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    .line 608
    .line 609
    .line 610
    sget v0, Lcom/google/android/gms/cast/framework/R$id;->button_1:I

    .line 611
    .line 612
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->d0:[I

    .line 613
    .line 614
    aget v1, v1, v4

    .line 615
    .line 616
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->X(Landroid/view/View;IILcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    .line 617
    .line 618
    .line 619
    sget v0, Lcom/google/android/gms/cast/framework/R$id;->button_play_pause_toggle:I

    .line 620
    .line 621
    sget v1, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_play_pause_toggle:I

    .line 622
    .line 623
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->X(Landroid/view/View;IILcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    .line 624
    .line 625
    .line 626
    sget v0, Lcom/google/android/gms/cast/framework/R$id;->button_2:I

    .line 627
    .line 628
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->d0:[I

    .line 629
    .line 630
    aget v1, v1, v5

    .line 631
    .line 632
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->X(Landroid/view/View;IILcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    .line 633
    .line 634
    .line 635
    sget v0, Lcom/google/android/gms/cast/framework/R$id;->button_3:I

    .line 636
    .line 637
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->d0:[I

    .line 638
    .line 639
    aget v1, v1, v6

    .line 640
    .line 641
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->X(Landroid/view/View;IILcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;)V

    .line 642
    .line 643
    .line 644
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->ad_container:I

    .line 645
    .line 646
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 647
    .line 648
    .line 649
    move-result-object p1

    .line 650
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->f0:Landroid/view/View;

    .line 651
    .line 652
    sget v0, Lcom/google/android/gms/cast/framework/R$id;->ad_image_view:I

    .line 653
    .line 654
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 655
    .line 656
    .line 657
    move-result-object p1

    .line 658
    check-cast p1, Landroid/widget/ImageView;

    .line 659
    .line 660
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->h0:Landroid/widget/ImageView;

    .line 661
    .line 662
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->f0:Landroid/view/View;

    .line 663
    .line 664
    sget v0, Lcom/google/android/gms/cast/framework/R$id;->ad_background_image_view:I

    .line 665
    .line 666
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 667
    .line 668
    .line 669
    move-result-object p1

    .line 670
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->g0:Landroid/view/View;

    .line 671
    .line 672
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->f0:Landroid/view/View;

    .line 673
    .line 674
    sget v0, Lcom/google/android/gms/cast/framework/R$id;->ad_label:I

    .line 675
    .line 676
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 677
    .line 678
    .line 679
    move-result-object p1

    .line 680
    check-cast p1, Landroid/widget/TextView;

    .line 681
    .line 682
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->j0:Landroid/widget/TextView;

    .line 683
    .line 684
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->T:I

    .line 685
    .line 686
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 687
    .line 688
    .line 689
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->j0:Landroid/widget/TextView;

    .line 690
    .line 691
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->R:I

    .line 692
    .line 693
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 694
    .line 695
    .line 696
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->f0:Landroid/view/View;

    .line 697
    .line 698
    sget v0, Lcom/google/android/gms/cast/framework/R$id;->ad_in_progress_label:I

    .line 699
    .line 700
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 701
    .line 702
    .line 703
    move-result-object p1

    .line 704
    check-cast p1, Landroid/widget/TextView;

    .line 705
    .line 706
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->i0:Landroid/widget/TextView;

    .line 707
    .line 708
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->ad_skip_text:I

    .line 709
    .line 710
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 711
    .line 712
    .line 713
    move-result-object p1

    .line 714
    check-cast p1, Landroid/widget/TextView;

    .line 715
    .line 716
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->l0:Landroid/widget/TextView;

    .line 717
    .line 718
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->ad_skip_button:I

    .line 719
    .line 720
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 721
    .line 722
    .line 723
    move-result-object p1

    .line 724
    check-cast p1, Landroid/widget/TextView;

    .line 725
    .line 726
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->k0:Landroid/widget/TextView;

    .line 727
    .line 728
    new-instance v0, Lcom/google/android/gms/cast/framework/media/widget/zzh;

    .line 729
    .line 730
    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/widget/zzh;-><init>(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    .line 735
    .line 736
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->toolbar:I

    .line 737
    .line 738
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 739
    .line 740
    .line 741
    move-result-object p1

    .line 742
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 743
    .line 744
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->V()Landroidx/appcompat/app/AppCompatDelegate;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->D(Landroidx/appcompat/widget/Toolbar;)V

    .line 749
    .line 750
    .line 751
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->W()Landroidx/appcompat/app/ActionBar;

    .line 752
    .line 753
    .line 754
    move-result-object p1

    .line 755
    if-eqz p1, :cond_6

    .line 756
    .line 757
    invoke-virtual {p1, v4}, Landroidx/appcompat/app/ActionBar;->q(Z)V

    .line 758
    .line 759
    .line 760
    sget v0, Lcom/google/android/gms/cast/framework/R$drawable;->quantum_ic_keyboard_arrow_down_white_36:I

    .line 761
    .line 762
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->r(I)V

    .line 763
    .line 764
    .line 765
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->a0()V

    .line 766
    .line 767
    .line 768
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->Z()V

    .line 769
    .line 770
    .line 771
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->i0:Landroid/widget/TextView;

    .line 772
    .line 773
    if-eqz p1, :cond_7

    .line 774
    .line 775
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->Y:I

    .line 776
    .line 777
    if-eqz v0, :cond_7

    .line 778
    .line 779
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->X:I

    .line 780
    .line 781
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 782
    .line 783
    .line 784
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->i0:Landroid/widget/TextView;

    .line 785
    .line 786
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->S:I

    .line 787
    .line 788
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 789
    .line 790
    .line 791
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->i0:Landroid/widget/TextView;

    .line 792
    .line 793
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->Y:I

    .line 794
    .line 795
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 796
    .line 797
    .line 798
    :cond_7
    new-instance p1, Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 799
    .line 800
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 801
    .line 802
    .line 803
    move-result-object v0

    .line 804
    new-instance v1, Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 805
    .line 806
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->h0:Landroid/widget/ImageView;

    .line 807
    .line 808
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 809
    .line 810
    .line 811
    move-result v2

    .line 812
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->h0:Landroid/widget/ImageView;

    .line 813
    .line 814
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 815
    .line 816
    .line 817
    move-result v3

    .line 818
    const/4 v4, -0x1

    .line 819
    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    .line 820
    .line 821
    .line 822
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V

    .line 823
    .line 824
    .line 825
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->m0:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 826
    .line 827
    new-instance v0, Lcom/google/android/gms/cast/framework/media/widget/zzg;

    .line 828
    .line 829
    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/framework/media/widget/zzg;-><init>(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)V

    .line 830
    .line 831
    .line 832
    iput-object v0, p1, Lcom/google/android/gms/cast/framework/media/internal/zzb;->e:Lcom/google/android/gms/cast/framework/media/internal/zza;

    .line 833
    .line 834
    sget-object p1, Lcom/google/android/gms/internal/cast/zzpm;->h:Lcom/google/android/gms/internal/cast/zzpm;

    .line 835
    .line 836
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzr;->a(Lcom/google/android/gms/internal/cast/zzpm;)V

    .line 837
    .line 838
    .line 839
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->m0:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->b()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzb;->e:Lcom/google/android/gms/cast/framework/media/internal/zza;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->n0:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-string v2, "Must be called from the main thread."

    .line 14
    .line 15
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->f:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->n0:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->A()V

    .line 29
    .line 30
    .line 31
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->c:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 34
    .line 35
    .line 36
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->b:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 37
    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Lcom/google/android/gms/cast/framework/SessionManager;->e(Lcom/google/android/gms/cast/framework/SessionManagerListener;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->f:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;

    .line 44
    .line 45
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x102002c

    .line 6
    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x1

    .line 14
    return p1
.end method

.method public final onPause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->o0:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->c()Lcom/google/android/gms/cast/framework/CastSession;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->p0:Lcom/google/android/gms/cast/Cast$Listener;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v2, "Must be called from the main thread."

    .line 17
    .line 18
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/CastSession;->d:Ljava/util/HashSet;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->p0:Lcom/google/android/gms/cast/Cast$Listener;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->o0:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->F:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/SessionManager;->e(Lcom/google/android/gms/cast/framework/SessionManagerListener;)V

    .line 34
    .line 35
    .line 36
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onResume()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->o0:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->F:Lcom/google/android/gms/cast/framework/SessionManagerListener;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/framework/SessionManager;->a(Lcom/google/android/gms/cast/framework/SessionManagerListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->o0:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/SessionManager;->c()Lcom/google/android/gms/cast/framework/CastSession;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/Session;->c()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const-string v4, "Must be called from the main thread."

    .line 26
    .line 27
    if-nez v3, :cond_2

    .line 28
    .line 29
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v3, v0, Lcom/google/android/gms/cast/framework/Session;->a:Lcom/google/android/gms/cast/framework/zzau;

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    :try_start_0
    invoke-interface {v3}, Lcom/google/android/gms/cast/framework/zzau;->zzj()Z

    .line 37
    .line 38
    .line 39
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v3

    .line 42
    sget-object v5, Lcom/google/android/gms/cast/framework/Session;->b:Lcom/google/android/gms/cast/internal/Logger;

    .line 43
    .line 44
    const/4 v6, 0x2

    .line 45
    new-array v6, v6, [Ljava/lang/Object;

    .line 46
    .line 47
    const-string v7, "isConnecting"

    .line 48
    .line 49
    aput-object v7, v6, v2

    .line 50
    .line 51
    const-string v7, "zzau"

    .line 52
    .line 53
    aput-object v7, v6, v1

    .line 54
    .line 55
    const-string v7, "Unable to call %s on %s."

    .line 56
    .line 57
    invoke-virtual {v5, v3, v7, v6}, Lcom/google/android/gms/cast/internal/Logger;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    move v3, v2

    .line 61
    :goto_0
    if-nez v3, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    new-instance v3, Lcom/google/android/gms/cast/framework/media/widget/zzk;

    .line 65
    .line 66
    invoke-direct {v3, p0}, Lcom/google/android/gms/cast/framework/media/widget/zzk;-><init>(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)V

    .line 67
    .line 68
    .line 69
    iput-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->p0:Lcom/google/android/gms/cast/Cast$Listener;

    .line 70
    .line 71
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/CastSession;->d:Ljava/util/HashSet;

    .line 75
    .line 76
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 81
    .line 82
    .line 83
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->Y()Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->j()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_4

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_4
    move v1, v2

    .line 97
    :cond_5
    :goto_3
    iput-boolean v1, p0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->q0:Z

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->a0()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->b0()V

    .line 103
    .line 104
    .line 105
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    xor-int/lit16 p1, p1, 0x1006

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setImmersive(Z)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
